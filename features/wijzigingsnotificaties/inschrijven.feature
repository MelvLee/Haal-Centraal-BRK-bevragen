#language: nl
Functionaliteit: Inschrijven voor wijzigingsnotificaties
    Als abonnee
    Wil ik notificaties ontvangen als kenmerken van een kadastraal onroerende zaak wijzigt
    Zodat ik niet hoef te pollen om te achterhalen of er kenmerken van de kadastraal onroerende zaak zijn gewijzigd

Achtergrond:
    Gegeven de base url van de notificatie API is 'https://www.haal-centraal.nl/kadastraal-onroerende-zaak-wijzigingsnotificatie/api'

Rule: Inschrijven voor een gemeente

Scenario: Geldig gemeente code
    Als een abonnee de request 'POST /abonnees/{abonneeId}/notificatie-inschrijvingen' met de volgende payload heeft verstuurd
    """
    {
        "gemeentecode": "0344"
    }
    """
    Dan bevat de response de status code '201 Created'
    En bevat de response body de identificatie van de inschrijving

Scenario: Geen gemeente code
Scenario: Ongeldig gemeente code

Scenario: Reeds ingeschreven gemeente
    Gegeven een abonnee heeft zich al ingeschreven voor wijzigingsnotificaties voor gemeente '0344'
    Als de abonnee de request 'POST /abonnees/{abonneeId}/notificatie-inschrijvingen' met volgende payload heeft verstuurd
    """
    {
        "gemeentecode": "0344"
    }
    """
    Dan bevat de response de status code '201 Created'
    En bevat de response body de identificatie van de inschrijving
    Maar is er voor de abonnee en gemeente '0344' geen nieuwe inschrijving vastgelegd


Rule: Inschrijven voor een kadastraal onroerende zaak

Scenario: Geldig kadastraal onroerende zaak identificatie
    Als de abonnee de request 'POST /abonnees/{abonneeId}/notificatie-inschrijvingen' met de volgende payload heeft verstuurd
    """
    {
        "kadastraalOnroerendeZaakIdentificatie": "12345678"
    }
    """
    Dan bevat de response de status code '201 Created'
    En bevat de response body de identificatie van de inschrijving

Scenario: Geen kadastraal onroerende zaak identificatie
Scenario: Onbekend kadastraal onroerende zaak identificatie

Scenario: Reeds ingeschreven kadastraal onroerende zaak
    Gegeven een abonnee heeft zich al ingeschreven voor wijzigingsnotificaties voor kadastraal onroerende zaak '12345678'
    Als de abonnee de request 'POST /abonnees/{abonneeId}/notificatie-inschrijvingen' met volgende payload heeft verstuurd
    """
    {
        "kadastraalOnroerendeZaakIdentificatie": "12345678"
    }
    """
    Dan bevat de response de status code '201 Created'
    En bevat de response body de identificatie van de inschrijving
    Maar is er voor de abonnee en kadastraal onroerende zaak '12345678' geen nieuwe inschrijving vastgelegd


Rule: Inschrijvingen zoeken en raadplegen

Scenario: Alle inschrijvingen ophalen
Scenario: Inschrijving zoeken met gemeente code
Scenario: Inschrijving zoeken met kadastraal onroerende zaak identificatie
Scenario: Inschrijving ophalen met inschrijving identificatie


Rule: Uitschrijven

Scenario: Geldig inschrijving identificatie
    Gegeven een abonnee heeft een inschrijving met identificatie '1234'
    Als de abonnee de request 'DELETE /abonnees/{abonneeId}/notificatie-inschrijvingen/1234' heeft verstuurd
    Dan bevat de response de status code '204 No Content'
    En is inschrijving '1234' van de abonnee verwijderd

Scenario: Geen inschrijving identificatie
    Als een abonnee de request 'DELETE /abonnees/{abonneeId}/notificatie-inschrijvingen' heeft verstuurd
    Dan bevat de response de status code '400 Bad Request'
    En bevat de response body de volgende melding
    """
    Er is geen inschrijving identificatie nummer opgegeven
    """

Scenario: Onbekend inschrijving identificatie
    Gegeven een abonnee heeft geen inschrijving met identificatie '2345'
    Als de abonnee de request 'DELETE /abonnees/{abonneeId}/notificatie-inschrijvingen/2345' heeft verstuurd
    Dan bevat de response de status code '400 Bad Request'
    En bevat de response body de volgende melding
    """
    Er is geen inschrijving met identificatie '2345'
    """

Scenario: Alle inschrijvingen uitschrijven
    Als een abonnee de request 'DELETE /abonnees/{abonneeId}/notificatie-inschrijvingen/alle-inschrijvingen' heeft verstuurd
    Dan bevat de response de status code '204 No Content'
    En zijn alle inschrijvingen van de abonnee verwijderd
