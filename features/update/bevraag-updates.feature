#language: nl
Functionaliteit: BRK Wijzigingen API
    Om mijn eigen systeem actueel te houden en om historie op te kunnen bouwen
    Wil ik als afnemer kunnen opvragen welke BRK resources wanneer zijn gewijzigd, zijn vervallen of nieuw zijn opgevoerd

Scenario: Nieuw kadastraal onroerende zaak
    Gegeven een nieuw kadastraal onroerende zaak met identificatie 56789012 is toegevoegd aan gemeente '0344' op '2020-02-01'
    En er zijn geen andere wijzigingen in gemeente '0344' op '2020-02-01'
    Als de consumer de request 'GET /wijzigingen?van=2020-02-01&tot=2020-02-02&gemeentecode=0344' stuurt naar de wijzigingen API
    Dan bevat de response de volgende wijziging gegevensgroep
    | kadastraalobjectidentificatie | type                     | mutatiedatum |
    | 56789012                      | kadastraalonroerendezaak | 2020-02-01   |
    En bevat de response de volgende templated link waarmee data van de kadastraal onroerende zaak op 2020-02-01 kan worden opgehaald
    | naam                     | href                                                                                   |
    | kadastraalOnroerendeZaak | /kadastraalonroerendezaken/{kadastraalobjectidentificatie}?mutatiedatum={mutatiedatum} |
    En is de response
    """
    {
        "_links": {
            "self": { "href": "/wijzigingen?van=2020-02-01&tot=2020-02-02&gemeentecode=0344" },
            "kadastraalOnroerendeZaak": { "href": "/kadastraalonroerendezaken/{kadastraalobjectidentificatie}?mutatiedatum={mutatiedatum}", "templated": true }
        },
        "wijzigingen": [
            {
                "kadastraalobjectidentificatie": "56789012",
                "type": "kadastraalonroerendezaak",
                "mutatiedatum": "2020-02-01",
            }
        ]
    }
    """

Scenario: Gewijzigd kadastraal onroerende zaak
    Gegeven een kadastraal onroerende zaak met identificatie 56789012 in gemeente '0344' is gewijzigd op '2020-02-03'
    En er zijn geen andere wijzigingen in gemeente '0344' op '2020-02-03'
    Als de consumer de request 'GET /wijzigingen?van=2020-02-03&tot=2020-02-04&gemeentecode=0344' stuurt naar de wijzigingen API
    Dan is de response
    """
    {
        "_links": {
            "self": { "href": "/wijzigingen?van=2020-02-03&tot=2020-02-04&gemeentecode=0344" },
            "kadastraalOnroerendeZaak": { "href": "/kadastraalonroerendezaken/{kadastraalobjectidentificatie}?mutatiedatum={mutatiedatum}", "templated": true }
        },
        "wijzigingen": [
            {
                "kadastraalobjectidentificatie": "56789012",
                "type": "kadastraalonroerendezaak",
                "mutatiedatum": "2020-02-03"
            }
        ]
    }
    """

Scenario: Gewijzigd kadastraal onroerende zaak (fields parameter geeft wijigingen aan)
    Gegeven van kadastraal onroerende zaak met identificatie 56789012 in gemeente '0344' zijn de volgende kenmerken gewijzigd op '2020-02-03'
    | gewijzigde kenmerken          |
    | koopsom, toelichtingbewaarder |
    En er zijn geen andere wijzigingen in gemeente '0344' op '2020-02-03'
    Als de consumer de request 'GET /wijzigingen?van=2020-02-03&tot=2020-02-04&gemeentecode=0344' stuurt naar de wijzigingen API
    Dan is de response
    """
    {
        "_links": {
            "self": { "href": "/wijzigingen?van=2020-02-03&tot=2020-02-04&gemeentecode=0344" },
            "kadastraalOnroerendeZaak": { "href": "/kadastraalonroerendezaken/{kadastraalobjectidentificatie}?mutatiedatum={mutatiedatum}&fields={fields}", "templated": true }
        },
        "wijzigingen": [
            {
                "kadastraalobjectidentificatie": "56789012",
                "type": "kadastraalonroerendezaak",
                "mutatiedatum": "2020-02-03",
                "fields": "koopsom,toelichtingbewaarder"
            }
        ]
    }
    """

Scenario: Beëindigd kadastraal onroerende zaak
    Gegeven een kadastraal onroerende zaak met identificatie 56789012 in gemeente '0344' is beëindigd op '2020-02-05'
    En er zijn geen andere wijzigingen in gemeente '0344' op '2020-02-05'
    Als de consumer de request 'GET /wijzigingen?van=2020-02-05&tot=2020-02-06&gemeentecode=0344' stuurt naar de wijzigingen API
    Dan is de response
    """
    {
        "_links": {
            "self": { "href": "/wijzigingen?van=2020-02-05&tot=2020-02-06&gemeentecode=0344" },
            "kadastraalOnroerendeZaak": { "href": "/kadastraalonroerendezaken/{kadastraalobjectidentificatie}?mutatiedatum={mutatiedatum}", "templated": true }
        },
        "wijzigingen": [
            {
                "kadastraalobjectidentificatie": "56789012",
                "type": "kadastraalonroerendezaak",
                "mutatiedatum": "2020-02-05"
            }
        ]
    }
    """

Scenario: Beëindigd kadastraal onroerende zaak (fields parameter geeft wijzigingen aan)
    Gegeven een kadastraal onroerende zaak met identificatie 56789012 in gemeente '0344' is beëindigd op '2020-02-05'
    En er zijn geen andere wijzigingen in gemeente '0344' op '2020-02-05'
    Als de consumer de request 'GET /wijzigingen?van=2020-02-05&tot=2020-02-06&gemeentecode=0344' stuurt naar de wijzigingen API
    Dan is de response
    """
    {
        "_links": {
            "self": { "href": "/wijzigingen?van=2020-02-05&tot=2020-02-06&gemeentecode=0344" },
            "kadastraalOnroerendeZaak": { "href": "/kadastraalonroerendezaken/{kadastraalobjectidentificatie}?mutatiedatum={mutatiedatum}&fields={fields}", "templated": true }
        },
        "wijzigingen": [
            {
                "kadastraalobjectidentificatie": "56789012",
                "type": "kadastraalonroerendezaak",
                "mutatiedatum": "2020-02-05",
                "fields": "datumeindegeldigheid"
            }
        ]
    }
    """

Scenario: Samenvoeging tot één kadastraal onroerende zaak
    Gegeven een kadastraal onroerende zaak met identificatie 56789012 in gemeente '0344'
    En een kadastraal onroerende zaak met identificatie 67890123 in gemeente '0344'
    En de kadastraal onroerende zaken is op '2020-02-06' samen gevoegd tot kadastraal onroerende zaak met identificatie 78901234 in gemeente '0344'
    En er zijn geen andere wijzigingen in gemeente '0344' op '2020-02-06'
    Als de consumer de request 'GET /wijzigingen?van=2020-02-06&tot=2020-02-07&gemeentecode=0344' stuurt naar de wijzigingen API
    Dan is de response
    """
    {
        "_links": {
            "self": { "href": "/wijzigingen?van=2020-02-06&tot=2020-02-07&gemeentecode=0344" },
            "kadastraalOnroerendeZaak": { "href": "/kadastraalonroerendezaken/{kadastraalobjectidentificatie}?mutatiedatum={mutatiedatum}", "templated": true }
        },
        "wijzigingen": [
            {
                "kadastraalobjectidentificatie": "56789012",
                "type": "kadastraalonroerendezaak",
                "mutatiedatum": "2020-02-06"
            },
            {
                "kadastraalobjectidentificatie": "67890123",
                "type": "kadastraalonroerendezaak",
                "mutatiedatum": "2020-02-06"
            },
            {
                "kadastraalobjectidentificatie": "78901234",
                "type": "kadastraalonroerendezaak",
                "mutatiedatum": "2020-02-06"
            }
        ]
    }
    """

Scenario: Splitsing in meerdere kadastraal onroerende zaken
    Gegeven een kadastraal onroerende zaak met identificatie 78901234 in gemeente '0344'
    En de kadastraal onroerende zaak is op '2020-02-07' gesplitst in de volgende kadastraal onroerende zaken
    | identificatie | gemeente |
    | 89012345      | 0344     |
    | 90123456      | 0344     |
    En er zijn geen andere wijzigingen in gemeente '0344' op '2020-02-07'
    Als de consumer de request 'GET /wijzigingen?van=2020-02-07&tot=2020-02-08&gemeentecode=0344' stuurt naar de wijzigingen API
    Dan is de response
    """
    {
        "_links": {
            "self": { "href": "/wijzigingen?van=2020-02-07&tot=2020-02-08&gemeentecode=0344" },
            "kadastraalOnroerendeZaak": { "href": "/kadastraalonroerendezaken/{kadastraalobjectidentificatie}?mutatiedatum={mutatiedatum}", "templated": true }
        },
        "wijzigingen": [
            {
                "kadastraalobjectidentificatie": "78901234",
                "type": "kadastraalonroerendezaak",
                "mutatiedatum": "2020-02-07"
            },
            {
                "kadastraalobjectidentificatie": "89012345",
                "type": "kadastraalonroerendezaak",
                "mutatiedatum": "2020-02-07"
            },
            {
                "kadastraalobjectidentificatie": "90123456",
                "type": "kadastraalonroerendezaak",
                "mutatiedatum": "2020-02-07"
            }
        ]
    }
    """

Scenario: Nieuw zakelijk gerechtigde
    Gegeven een kadastraal onroerende zaak met identificatie 56789012 in gemeente '0344'
    En een nieuw zakelijk gerechtigde met identificatie 12345678 is toegevoegd aan de kadastraal onroerende zaak op '2020-02-10'
    En er zijn geen andere wijzigingen in gemeente '0344' op '2020-02-10'
    Als de consumer de request 'GET /wijzigingen?van=2020-02-10&tot=2020-02-11&gemeentecode=0344' stuurt naar de wijzigingen API
    Dan bevat de response de volgende wijziging gegevensgroep
    | kadastraalobjectidentificatie | zakelijkgerechtigdeidentificatie | type                | mutatiedatum |
    | 56789012                      | 12345678                         | zakelijkgerechtigde | 2020-02-10   |
    En bevat de response de volgende templated link waarmee data van de zakelijk gerechtigde op 2020-02-10 kan worden opgehaald
    | naam                | href                                                                                                                                           |
    | zakelijkGerechtigde | /kadastraalonroerendezaken/{kadastraalobjectidentificatie}/zakelijkgerechtigden/{zakelijkgerechtigdeidentificatie}?mutatiedatum={mutatiedatum} |
    En is de response
    """
    {
        "_links": {
            "self": { "href": "/wijzigingen?van=2020-02-10&tot=2020-02-11&gemeentecode=0344" },
            "zakelijkGerechtigde": { "href": "/kadastraalonroerendezaken/{kadastraalobjectidentificatie}/zakelijkgerechtigden/{zakelijkgerechtigdeidentificatie}?mutatiedatum={mutatiedatum}", "templated": true }
        },
        "wijzigingen": [
            {
                "kadastraalobjectidentificatie": "56789012",
                "zakelijkgerechtigdeidentificatie": "12345678",
                "type": "zakelijkgerechtigde",
                "mutatiedatum": "2020-02-10",
            }
        ]
    }
    """

Scenario: Gewijzigd zakelijk gerechtigde
    Gegeven een kadastraal onroerende zaak met identificatie 56789012 met zakelijk gerechtigde 12345678 in gemeente '0344'
    En de zakelijk gerechtigde met identificatie 12345678 is gewijzigd op '2020-02-11'
    En er zijn geen andere wijzigingen in gemeente '0344' op '2020-02-11'
    Als de consumer de request 'GET /wijzigingen?van=2020-02-11&tot=2020-02-12&gemeentecode=0344' stuurt naar de wijzigingen API
    Dan is de response
    """
    {
        "_links": {
            "self": { "href": "/wijzigingen?van=2020-02-11&tot=2020-02-12&gemeentecode=0344" },
            "zakelijkGerechtigde": { "href": "/kadastraalonroerendezaken/{kadastraalobjectidentificatie}/zakelijkgerechtigden/{zakelijkgerechtigdeidentificatie}?mutatiedatum={mutatiedatum}", "templated": true }
        },
        "wijzigingen": [
            {
                "kadastraalobjectidentificatie": "56789012",
                "zakelijkgerechtigdeidentificatie": "12345678",
                "type": "zakelijkgerechtigde",
                "mutatiedatum": "2020-02-11",
            }
        ]
    }
    """

Scenario: Gewijzigd zakelijk gerechtigde (fields parameter geeft wijzigingen aan)
    Gegeven een kadastraal onroerende zaak met identificatie 56789012 met zakelijk gerechtigde 12345678 in gemeente '0344'
    En van de zakelijk gerechtigde met identificatie 12345678 zijn de volgende kenmerken gewijzigd op '2020-02-11'
    | gewijzigde kenmerken |
    | erfpachtcanon        |
    En er zijn geen andere wijzigingen in gemeente '0344' op '2020-02-11'
    Als de consumer de request 'GET /wijzigingen?van=2020-02-11&tot=2020-02-12&gemeentecode=0344' stuurt naar de wijzigingen API
    Dan is de response
    """
    {
        "_links": {
            "self": { "href": "/wijzigingen?van=2020-02-11&tot=2020-02-12&gemeentecode=0344" },
            "zakelijkGerechtigde": { "href": "/kadastraalonroerendezaken/{kadastraalobjectidentificatie}/zakelijkgerechtigden/{zakelijkgerechtigdeidentificatie}?mutatiedatum={mutatiedatum}&fields={fields}", "templated": true }
        },
        "wijzigingen": [
            {
                "kadastraalobjectidentificatie": "56789012",
                "zakelijkgerechtigdeidentificatie": "12345678",
                "type": "zakelijkgerechtigde",
                "mutatiedatum": "2020-02-11",
                "fields": "erfpachtcanon"
            }
        ]
    }
    """

Scenario: Beëindigd zakelijk gerechtigde
    Gegeven een kadastraal onroerende zaak met identificatie 56789012 met zakelijk gerechtigde 12345678 in gemeente '0344'
    En de zakelijk gerechtigde met identificatie 12345678 is beëindigd op '2020-02-12'
    En er zijn geen andere wijzigingen in gemeente '0344' op '2020-02-12'
    Als de consumer de request 'GET /wijzigingen?van=2020-02-12&tot=2020-02-13&gemeentecode=0344' stuurt naar de wijzigingen API
    Dan is de response
    """
    {
        "_links": {
            "self": { "href": "/wijzigingen?van=2020-02-12&tot=2020-02-13&gemeentecode=0344" },
            "zakelijkGerechtigde": { "href": "/kadastraalonroerendezaken/{kadastraalobjectidentificatie}/zakelijkgerechtigden/{zakelijkgerechtigdeidentificatie}?mutatiedatum={mutatiedatum}", "templated": true }
        },
        "wijzigingen": [
            {
                "kadastraalobjectidentificatie": "56789012",
                "zakelijkgerechtigdeidentificatie": "12345678",
                "type": "zakelijkgerechtigde",
                "mutatiedatum": "2020-02-12",
            }
        ]
    }
    """

Rule: wijzigingen van vandaag kunnen pas morgen worden opgehaald

Scenario: Beëindigd zakelijk gerechtigde (fields parameter geeft wijzigingen aan)
    Gegeven een kadastraal onroerende zaak met identificatie 56789012 met zakelijk gerechtigde 12345678 in gemeente '0344'
    En de zakelijk gerechtigde met identificatie 12345678 is beëindigd op '2020-02-12'
    En er zijn geen andere wijzigingen in gemeente '0344' op '2020-02-12'
    Als de consumer de request 'GET /wijzigingen?van=2020-02-12&tot=2020-02-13&gemeentecode=0344' stuurt naar de wijzigingen API
    Dan is de response
    """
    {
        "_links": {
            "self": { "href": "/wijzigingen?van=2020-02-12&tot=2020-02-13&gemeentecode=0344" },
            "zakelijkGerechtigde": { "href": "/kadastraalonroerendezaken/{kadastraalobjectidentificatie}/zakelijkgerechtigden/{zakelijkgerechtigdeidentificatie}?mutatiedatum={mutatiedatum}&fields={fields}", "templated": true }
        },
        "wijzigingen": [
            {
                "kadastraalobjectidentificatie": "56789012",
                "zakelijkgerechtigdeidentificatie": "12345678",
                "type": "zakelijkgerechtigde",
                "mutatiedatum": "2020-02-12",
                "fields": "datumeindegeldigheid"
            }
        ]
    }
    """

Scenario: Er zijn vandaag wijzigingen opgevoerd
    Gegeven de datum van vandaag is '2020-02-08'
    En er zijn wijzigingen doorgevoerd in gemeente '0344' op '2020-02-08'
    Als de consumer de request 'GET /wijzigingen?van=2020-02-08&gemeentecode=0344' stuurt naar de wijzigingen API
    Dan is de response
    """
    {
        "_links": {
            "self": { "href": "/wijzigingen?van=2020-02-08&gemeentecode=0344" }
        }
    }
    """

Rule: de bevraag periode van wijzigingen kan niet langer zijn dan één week
#Andere opties:
#-Pagineren. Maakt het volgens mij complexer voor de provider
#-Afhankelijk maken op aantal wijzigingen per dag. complex: als er op één dag zoveel wijzigingen zijn dat je de vraag van één dag moet splitsen over meerdere vragen, dan zou je paging moeten inbouwen of bevragen met tijdstip

Scenario: De bevraag periode is langer dan één week
    Als de consumer de request 'GET /wijzigingen?van=2020-02-01&tot=2020-03-01&gemeentecode=0344' stuurt naar de wijzigingen API
    Dan bevat de response
    """
    "_links": {
        "self": { "href": "/wijzigingen?van=2020-02-01&tot=2020-03-01&gemeentecode=0344" },
        "vervolgbevragingen": [
            { "href": "/wijzigingen?van=2020-02-08&tot=2020-02-15&gemeentecode=0344" },
            { "href": "/wijzigingen?van=2020-02-15&tot=2020-02-22&gemeentecode=0344" },
            { "href": "/wijzigingen?van=2020-02-22&tot=2020-02-29&gemeentecode=0344" },
            { "href": "/wijzigingen?van=2020-02-29&tot=2020-03-01&gemeentecode=0344" }
        ]
    }
    """

Scenario: Er is alleen een van datum opgegeven
    Als de consumer de request 'GET /wijzigingen?van=2020-02-01&gemeentecode=0344' stuurt naar de wijzigingen API
    Dan bevat de response
    """
    "_links": {
        "self": { "href": "/wijzigingen?van=2020-02-01&gemeentecode=0344" },
        "vervolgbevragingen": [
            { "href": "/wijzigingen?van=2020-02-08&gemeentecode=0344" }
        ]
    }
    """

Rule: gemeente code en van datum zijn verplichte query parameters

Scenario: Er is alleen een tot datum opgegeven
    Als de consumer de request 'GET /wijzigingen?tot=2020-03-01&gemeentecode=0344' stuurt naar de wijzigingen API
    Dan bevat de response de foutmelding dat de van datum verplicht is
