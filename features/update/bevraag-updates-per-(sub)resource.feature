Functionaliteit: BRK Wijzigingen API
    Om mijn eigen systeem actueel te houden en om historie op te kunnen bouwen
    Wil ik als afnemer kunnen opvragen welke BRK resources wanneer zijn gewijzigd, zijn vervallen of nieuw zijn opgevoerd.
    Ik wil de wijzigingen per (sub)resource inclusief de niet-gewijzigde kenmerken kunnen opvragen

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
