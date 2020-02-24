#language: nl
Functionaliteit: Abonneren op kadastraal onroerende zaken wijzigingsnotificaties
    Als Kadaster
    Wil ik dat consumers van de BRK-bevragen API zich kunnen abonneren voor wijzigingsnotificaties
    Zodat de consumers niet hoeven te pollen om te achterhalen of er wijzigingen zijn aan kadastraal onroerende zaken
    Of dat er nieuwe kadastraal onroerende zaken zijn opgevoerd

Achtergrond:
    Gegeven de host van de wijzigingsnotificatie API is 'https://www.haal-centraal.nl/kadastraal-onroerende-zaak-wijzigingsnotificatie/api'

Rule: Consumer hoeft niet geauthenticeerd te zijn voor publieke endpoints

Scenario: Consumer stuurt een request naar een publieke endpoint
    Als de request 'GET /' wordt gestuurd naar de wijzigingsnotificatie API host
    Dan bevat de response de volgende melding
    """
    Welkom op de Haal Centraal 'Kadastraal onroerende zaak wijzigingesnotificatie API'.
    Met deze API kunt u zich inschrijven voor het ontvangen van notificaties bij wijzigingen aan kadastraal onroerende zaken.
    Hiervoor moet u zich eerst aanmelden als abonnee. Dit kunt u doen via de aanmelden link.
    De OpenAPI documentatie van de API kunt u bekijken via de OpenAPIViewer link.
    """
    En bevat de response de volgende HalLinks
    | naam                | url                  | omschrijving                 |
    | aanmeldenAlsAbonnee | POST /abonnees       |                              |
    | openAPIViewer       | GET /open-api-viewer | tonen van yaml in Swagger-ui |


Rule: Consumer moet geauthenticeerd zijn voor niet-publieke endpoints

Scenario: Consumer is niet geauthenticeerd
    Gegeven de consumer heeft geen API-key toegevoegd aan de request header
    Als de consumer een request stuurt naar een niet-publieke endpoint van de API
    Dan bevat de response de status code '401 Unauthorized'
    En bevat de response de volgende melding
    """
    Uw request bevat geen API-key. Indien u een API-key heeft ontvangen moet u deze toevoegen als request header met naam 'x-api-key'.
    Heeft u geen API-key, dan kunt u deze aanvragen door u aan te melden als abonnee via 'POST /abonnees'.
    Bent u uw API-key kwijt geraakt, dan kunt u deze naar uw geregistreerde e-mail laten mailen via 'POST /abonnees/mailapikey'
    """
    En bevat de response de volgende HalLinks
    """
    {
        "_links": {
            "aanmeldenAlsAbonnee": {
                "href": "/abonnees",
                "method": "POST",
                "type": "application/json"
                "fields": [
                    { "name": "naamAbonnee", "type": "text" },
                    { "name": "emailContactPersoon", "type": "email" },
                    { "name": "callbackUrl", "type": "url" },
                    { "name": "callbackUrlApiKey", "type": "text" },
                    { "name": "notificatieFrequentie", "type": "select", "values": ["direct", "1x/dag"] }
                ]
            },
            "opvragenAbonneeGegevens": {
                "href": "/abonnees/mailabonneegegevens",
                "method": "POST",
                "type": "application/json"
                "fields": [
                    { "name": "naamAbonnee", "type": "text" },
                    { "name": "abonneeId", "type": "boolean" },
                    { "name": "api-key", "type": "boolean" }
                ]
            },
            "openAPIViewer": {
                "href": "/open-api-viewer",
                "method": "GET"
            }
        }
    }
    """

Scenario: Consumer gebruikt een onbekend API-key
    Gegeven de consumer heeft een onbekend API-key toegevoegd aan de request header
    Als de consumer een request stuurt naar een niet-publieke endpoint van de API
    Dan bevat de response de status code '401 Unauthorized'
    En bevat de response de volgende melding
    """
    Uw request bevat een onbekend API-key.
    Heeft u zich aangemeld als abonnee, dan kunt u uw API-key naar uw geregistreerde e-mail laten mailen via 'POST /abonnees/mailapikey'
    """
    En bevat de response de volgende HalLinks
    | naam                | url                       |
    | mailAPIkey          | POST /abonnees/mailapikey |


Rule: Consumer moet zich eenmalig registreren

Scenario: Abonnee aanvraag bevat alle verplichte kenmerken
    Gegeven de consumer vult geldige waarden in voor de volgende kenmerken in de request body:
    | kenmerk               | waarde         | omschrijving|
    | naamAbonnee           |                | de naam van de abonnee |
    | emailContactPersoon   |                | de e-mail van de contact persoon van de abonnee. Naar dit e-mail wordt de api-key gemailed |
    | callbackUrl           |                | de endpoint waarnaar notificaties moet worden ge-post /
    | callbackUrlApiKey     |                | de api-key die moet worden gebruikt voor het posten van notificaties naar de abonnee |
    | notificatiefrequentie | direct, 1x/dag | direct: direct bij wijziging, 1x/dag: 1 notificatie per dag. De notificatie bevat de identificatie van de kadastraal onroerende zaken waarvan gegevens op die dag zijn gewijzigd |
    |                       |                | bij inschrijving voor een gemeente wordt er voor wijzigingen en/of nieuwe kadastraal onroerende zaken op een dag 1 keer per dag een notificatie gestuurd |
    Als de request 'POST /abonnees' wordt gestuurd naar de wijzigingsnotificatie API host
    Dan bevat de response de status code '202 Accepted'
    En bevat de response de volgende omschrijving
    """
    Uw abonnee aanvraag is ontvangen.
    Indien uw aanvraag wordt gehonoreerd, ontvangt u op de opgegeven e-mail informatie om gebruik te kunnen maken van de notificatie API.
    Indien uw aanvraag niet wordt gehonoreerd, ontvangt u op de opgegeven e-mail de reden(en) waarom uw aanvraag niet is gehonoreerd.
    """

Scenario: Abonnee aanvraag is gehonoreerd
    Gegeven er is een abonnee aanvraag ontvangen
    Als de aanvraag wordt gehonoreerd
    Dan wordt een bevestiging e-mail gestuurd naar de opgegeven e-mail van de contact persoon
    En bevat de e-mail de volgende kenmerken
    | kenmerk    | waarde | omschrijving                                               |
    | abonnee id |        | identificatie waarmee de abonnee zijn gegevens kan beheren |
    | API-key    |        |                                                            |


Rule: Abonnee aanvraag wordt niet gehonoreerd bij ongeldig email contact persoon

Rule: Abonnee aanvraag wordt niet gehonoreerd bij ongeldig callbackUrl en/of callbackUrlApiKey

Rule: Abonnee aanvraag wordt niet gehonoreerd als voor de opgegeven abonnee naam al een account is

Rule: Abonnee kan zijn API-key en/of abonnee id naar zijn opgegeven e-mail laten mailen

Scenario: Abonnee stuurt een geldig 'mail abonnee gegevens' aanvraag
    Gegeven de abonnee vult geldige waarden voor de volgende kenmerken in de request body in:
    | kenmerk     | waarde  | omschrijving                             |
    | naamAbonnee |         | de naam van de abonnee                   |
    | abonneeId   | boolean | true voor het opvragen van de abonnee id |
    | API-key     | boolean | true voor het opvragen van de API-key    |
    Als de request 'POST /abonnees/mailabonneegegevens' wordt gestuurd naar de wijzigingsnotificatie API host
    Dan bevat de response de status code '202 Accepted'
    En bevat de response de volgende omschrijving
    """
    Uw 'mail abonnee gegevens' aanvraag is ontvangen.
    De aangegeven abonnee gegevens wordt gemailed naar het geregistreerde e-mail adres.
    """

Scenario: Abonnee geeft aan geen abonneeId en API-key per mail te willen ontvangen
    Gegeven de abonnee vult geldige waarden voor de volgende kenmerken in de request body in:
    | kenmerk     | waarde  | omschrijving                             |
    | naamAbonnee |         | de naam van de abonnee                   |
    | abonneeId   | boolean | true voor het opvragen van de abonnee id |
    | API-key     | boolean | true voor het opvragen van de API-key    |
    Als de request 'POST /abonnees/mailabonneegegevens' wordt gestuurd
    Dan bevat de response de status code '202 Accepted'
    En bevat de response de volgende omschrijving
    """
    Uw 'mail abonnee gegevens' aanvraag is ontvangen.
    De aangegeven abonnee gegevens wordt gemailed naar het geregistreerde e-mail adres.
    """


Rule: Abonnee gegevens per mail opvragen kan niet meer dan één keer per dag worden opgevraagd om misbruik te minimaliseren


Rule: Abonnee mag geen abonnee overzicht raadplegen

Scenario: Een abonnee mag geen abonnee overzicht raadplegen
    Gegeven de consumer heeft zijn API-key toegevoegd aan de request header
    Als de request 'GET /abonnees' wordt gestuurd
    Dan bevat de response de status code '403 Forbidden'


Rule: Abonnee kan zijn abonnement raadplegen

Scenario: Eigen inschrijf gegevens raadplegen
    Gegeven de consumer heeft zijn API-key toegevoegd aan de request header
    Als de request 'GET /abonnees/{zijnAbonneeId}' wordt gestuurd
    Dan ziet de response er als volgt uit
    """
    {
        "_links": {
            "_self": { href: "/abonnees/{abonneeId}" },
            "abonneegegevensEnInschrijvingen": { "href": "/abonnees/{abonneeId}/notificatieInschrijvingen?expand=inschrijvingen", "verb": "GET" }
            "inschrijvingen": { "href": "/abonnees/{abonneeId}/notificatieInschrijvingen", "verb": "GET" },
            "inschrijven": { "href": "/abonnees/{abonneeId}/notificatieInschrijvingen", "verb": "POST" },
            "uitschrijven": { "href": "/abonnees/{abonneeId}/notificatieInschrijvingen/{inschrijvingId}", "verb": "DELETE" }
        },
        "abonnee": {
            "identificatie": "",
            "naam": "",
            "e-mailContactPersoon": "",
            "callbackUrl": "",
            "callbackAPIKey": "",
            "notificatieFrequentie": ""
        }
    }
    """

Scenario: Eigen inschrijf gegevens en notificatie inschrijvingen raadplegen
    Gegeven de consumer heeft zijn API-key toegevoegd aan de request header
    Als de request 'GET /abonnees/{abonneeId}?expand=inschrijvingen' wordt gestuurd
    Dan ziet de response er als volgt uit
    """
    {
        "_links": {
            "_self": { href: "/abonnees/{abonneeId}" },
            "inschrijvingen": { "href": "/abonnees/{abonneeId}/notificatieInschrijvingen", "verb": "GET" },
            "inschrijven": { "href": "/abonnees/{abonneeId}/notificatieInschrijvingen", "verb": "POST" },
            "uitschrijven": { "href": "/abonnees/{abonneeId}/notificatieInschrijvingen/{inschrijvingId}", "verb": "DELETE" }
        },
        "abonnee": {
            "identificatie": "",
            "naam": "",
            "e-mailContactPersoon": "",
            "callbackUrl": "",
            "callbackAPIKey": "",
            "notificatieFrequentie": ""
        },
        "_embedded": {
            "inschrijvingen": [
                {
                    "identificatie": "",
                    "kadastraalOnroerendeZaakIdentificatie": ""
                },
                {
                    "identificatie": "".
                    "gemeentecode": ""
                }
            ]
        }
    }
    """

Scenario: Ander abonnee inschrijf gegevens raadplegen
    Gegeven de consumer heeft zijn API key toegevoegd aan de request header
    Als de request 'GET /abonnees/{anderAbonneeId}' wordt gestuurd
    Dan bevat de response de status code '403 Forbidden'


Rule: Abonnee kan zijn e-mail, callbackUrl, callbackUrlApiKey en/of notificatieFrequentie wijzigen

