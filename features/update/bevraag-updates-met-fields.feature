#language: nl
Functionaliteit: BRK Wijzigingen API
    Om mijn eigen systeem actueel te houden en om historie op te kunnen bouwen
    Wil ik als afnemer kunnen opvragen welke BRK resources wanneer zijn gewijzigd, zijn vervallen of nieuw zijn opgevoerd.
    Ik wil de wijzigingen per (sub)resource en ik wil alleen de gewijzigde kenmerken kunnen opvragen

Scenario: Nieuw kadastraal onroerende zaak (geen fields parameter, alle kenmerken van de resource zijn nieuw)
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

Scenario: Gewijzigd kadastraal onroerende zaak (fields parameter geeft gewijzigingde kemerken aan)
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

Scenario: Beëindigd kadastraal onroerende zaak (fields parameter geeft gewijzigingde kenmerken aan)
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

Scenario: Nieuw zakelijk gerechtigde (geen fields parameter, alle kenmerken van de subresource zijn nieuw)
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

Scenario: Gewijzigd zakelijk gerechtigde (fields parameter geeft gewijzigde kenmerken aan)
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

Scenario: Beëindigd zakelijk gerechtigde (fields parameter geeft gewijzigingde kenmerken aan)
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
