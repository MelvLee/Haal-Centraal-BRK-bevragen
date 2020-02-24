#language: nl
Functionaliteit: Notificaties versturen

Achtergrond:
    Gegeven kadastraal onroerende zaak met identificatie 12345678 in gemeente '0344' is gewijzigd
    En een zakelijk gerechtigde van kadastraal onroerende zaak met identificatie 23456789 in gemeente '0344' wijzigt
    En een nieuw kadastraal onroerende zaak met identificatie 34567890 is toegevoegd aan gemeente '0344'

Rule: Abonnee ontvangt alleen notificaties voor kadastraal onroerende zaken waarvoor hij zich heeft ingeschreven

Scenario: Abonnee heeft zich niet ingeschreven voor notificaties van de gewijzigde kadastraal onroerende zaken
    Als een abonnee zich niet heeft ingeschreven voor wijzing notificaties van de kadastraal onroerende zaken
    Dan is er geen request ge-post naar de callbackUrl van de abonnee


Rule: Bij notificatie frequentie 'direct' ontvangt abonnee direct noticatie bij wijziging of toevoegingen

Scenario: Abonnee met meerdere kadastraal onroerende zaak inschrijvingen
    Als de abonnee zich heeft ingeschreven voor wijzing notificaties van kadastraal onroerende zaak '12345678' en '23456789'
    Dan is de volgende request body ge-post naar de callbackUrl van de abonnee
    """
    {
        "_links": {
            "gewijzigd": {
                "href": "{brk-bevragen-base-url}/kadastraalonroerendezaken/12345678"
            }
        }
    }
    """
    En is de volgende request body ge-post naar de callbackUrl van de abonnee
    """
    {
        "_links": {
            "gewijzigd": {
                "href": "{brk-bevragen-base-url}/kadastraalonroerendezaken/23456789/zakelijkgerechtigden"
            }
        }
    }
    """

Scenario: Abonnee met gemeente inschrijving
    Als de abonnee zich heeft ingeschreven voor notificaties voor gemeente 0344
    Dan is de volgende request body ge-post naar de callbackUrl van de abonnee
    """
    {
        "_links": {
            "gewijzigd": {
                "href": "{brk-bevragen-base-url}/kadastraalonroerendezaken/12345678"
            }
        }
    }
    """
    En is de volgende request body ge-post naar de callbackUrl van de abonnee
    """
    {
        "_links": {
            "gewijzigd": {
                "href": "{brk-bevragen-base-url}/kadastraalonroerendezaken/23456789/zakelijkgerechtigden"
            }
        }
    }
    """
    En is de volgende request body ge-post naar de callbackUrl van de abonnee
    """
    {
        "_links": {
            "nieuw": {
                "href": "{brk-bevragen-base-url}/kadastraalonroerendezaken/34567890"
            }
        }
    }
    """


Rule: Bij notificatie frequentie '1x/dag' ontvangt abonnee aan het einde van de dag één notificatie met een overzicht van alle wijzigingen

Scenario: Abonnee met meerdere kadastraal onroerende zaak inschrijvingen
    Als de abonnee zich heeft ingeschreven voor wijzing notificaties van kadastraal onroerende zaak '12345678' en '23456789'
    Dan is aan het einde van de dag de volgende request body ge-post naar de callbackUrl van de abonnee
    """
    {
        "_links": {
            "gewijzigd": [
                { "href": "{brk-bevragen-base-url}/kadastraalonroerendezaken/12345678" },
                { "href": "{brk-bevragen-base-url}/kadastraalonroerendezaken/23456789/zakelijkgerechtigden" }
            ]
        }
    }
    """

Scenario: Variant 2. Abonnee met meerdere kadastraal onroerende zaak inschrijvingen
    Als de abonnee zich heeft ingeschreven voor wijzing notificaties van kadastraal onroerende zaak '12345678' en '23456789'
    Dan is aan het einde van de dag de volgende request body ge-post naar de callbackUrl van de abonnee
    """
    {
        "_links": {
            "gewijzigd": {
                "href": "{brk-bevragen-base-url}/kadastraalonroerendezaken/{gewijzigdKadastraalOnroerendeZaakIdentificatie}",
                "templated": true
            }
        },
        "_embedded": {
            "gewijzigdKadastraalOnroerendeZaakIdentificaties": [
                "12345678",
                "23456789"
            ]
        }
    }
    """

Scenario: Abonnee met gemeente inschrijving
    Als de abonnee zich heeft ingeschreven voor notificaties voor gemeente 0344
    Dan is de volgende request body ge-post naar de callbackUrl van de abonnee
    """
    {
        "_links": {
            "gewijzigd": [
                { "href": "{brk-bevragen-base-url}/kadastraalonroerendezaken/12345678" },
                { "href": "{brk-bevragen-base-url}/kadastraalonroerendezaken/23456789/zakelijkgerechtigden" }
            ],
            "nieuw": [
                { "href": "{brk-bevragen-base-url}/kadastraalonroerendezaken/34567890" }
            ]
        }
    }
    """

Scenario: Variant 2. Abonnee met gemeente inschrijving
    Als de abonnee zich heeft ingeschreven voor notificaties voor gemeente 0344
    Dan is de volgende request body ge-post naar de callbackUrl van de abonnee
    """
    {
        "_links": {
            "gewijzigd": {
                "href": "{brk-bevragen-base-url}/kadastraalonroerendezaken/{gewijzigdKadastraalOnroerendeZaakIdentificatie}",
                "templated": true
            },
            "nieuw": {
                "href": "{brk-bevragen-base-url}/kadastraalonroerendezaken/{nieuwKadastraalOnroerendeZaakIdentificatie}" },
                "templated": true
            ]
        },
        "_embedded": {
            "gewijzigdKadastraalOnroerendeZaakIdentificaties": [
                "12345678",
                "23456789"
            ],
            "nieuwKadastraalOnroerendeZaakIdentificaties": [
                "34567890"
            ]
        }
    }
    """


Rule: Bij meerdere (indirecte) inschrijvingen ontvangt abonnee maar één notificatie per wijziging

Scenario: Abonnee heeft zich ingeschreven voor gemeente 0344 en kadastraal onroerende zaak met identificatie 23456789
    Gegeven een abonnee met notificatie frequentie 'direct'
    Als de abonnee is ingeschreven voor wijzigingen en toevoegingen in gemeente 0344
    En de abonnee is ingeschreven voor wijzigingen van kadastraal onroerende zaak met identificatie 23456789
    Dan is één maal de volgende request body ge-post naar de callbackUrl van de abonnee
    """
    {
        "_links": {
            "gewijzigd": {
                 "href": "{brk-bevragen-base-url}/kadastraalonroerendezaken/223456789/zakelijkgerechtigden"
            }
        }
    }
    """
