#language: nl
Functionaliteit: BRK Update API
    Om mijn eigen systeem actueel te houden en om historie op te kunnen bouwen
    Wil ik als afnemer kunnen opvragen welke BRK resources wanneer zijn gewijzigd of nieuw zijn opgevoerd

Achtergrond:
    Gegeven van kadastraal onroerende zaak met identificatie 12345678 in gemeente '0344' is 'toelichtingBewaarder' gewijzigd op '2020-01-02'
    En is een nieuw zakelijkGerechtigde met identificatie 56789012 toegevoegd aan de kadastraal onroerende zaak met identificatie 12345678 in gemeente '0344' op '2020-01-02'
    En van kadastraal onroerende zaak met identificatie 23456789 in gemeente '0363' is 'nummeraanduiding' gewijzigd op '2020-01-03'
    En van zakelijkGerechtigde met identificatie 67890123 van kadastraal onroerende zaak met identificatie 23456789 in gemeente '0363' is 'erfpachtcanon' gewijzigd op '2020-01-04'
    En een nieuw kadastraal onroerende zaak met identificatie 34567890 is toegevoegd aan gemeente '0518' op '2020-01-04'
    En een kadastraal onroerende zaak met identificatie 45678901 in gemeente '0518' is vervallen op '2020-01-04'

Scenario: Wijzigingen in een periode opvragen
    Als de consumer de request 'GET /wijzigingen?van=2020-01-02&tot-2020-01-03' stuurt naar de update API
    Dan is de response
    """
    {
        "_links": {
            "self": { "href": "/wijzigingen?van=2020-01-02&tot-2020-01-03" }
        },
        "_embedded": {
            "wijzigingen": [
                {
                    "_links": {
                        "self": { "href": "/kadastraalonroerendezaken/12345678?mutatiedatum=2020-01-02&fields=toelichtingBewaarder"}
                    },
                    "identificatie": "12345678",
                    "type": "kadastraalonroerendezaak",
                    "mutatiedatum": "2020-01-02"
                },
                {
                    "_links": {
                        "self": { "href": "/kadastraalonroerendezaken/12345678/zakelijkgerechtigden/56789012?mutatiedatum=2020-01-02"}
                    },
                    "identificatie": "56789012",
                    "type": "zakelijkgerechtigde",
                    "mutatiedatum": "2020-01-02"
                }
            ]
        }
    }
    """

Scenario: Wijzigingen vanaf een datum opvragen
    Als de consumer de request 'GET /wijzigingen?van=2020-01-03' stuurt naar de update API
    Dan is de response
    """
    {
        "_links": {
            "self": { "href": "/wijzigingen?van=2020-01-03" }
        },
        "_embedded": {
            "wijzigingen": [
                {
                    "_links": {
                        "self": { "href": "/kadastraalonroerendezaken/23456789?mutatiedatum=2020-01-03&fields=nummeraanduidingidentificatie"}
                    },
                    "identificatie": "23456789",
                    "type": "kadastraalonroerendezaak",
                    "mutatiedatum": "2020-01-03"
                },
                {
                    "_links": {
                        "self": { "href": "/kadastraalonroerendezaken/23456789/zakelijkgerechtigden/67890123?mutatiedatum=2020-01-04&fields=erfpachtcanon"}
                    },
                    "identificatie": "67890123",
                    "type": "zakelijkgerechtigde",
                    "mutatiedatum": "2020-01-04"
                },
                {
                    "_links": {
                        "self": { "href": "/kadastraalonroerendezaken/34567890?mutatiedatum=2020-01-04&expand=zakelijkGerechtigden"}
                    },
                    "identificatie": "34567890",
                    "type": "kadastraalonroerendezaak",
                    "mutatiedatum": "2020-01-04"
                },
                {
                    "_links": {
                        "self": { "href": "/kadastraalonroerendezaken/34567890?mutatiedatum=2020-01-04&fields=datumEindeGeldigheid"}
                    },
                    "identificatie": "45678901",
                    "type": "kadastraalonroerendezaak",
                    "mutatiedatum": "2020-01-04"
                }
            ]
        }
    }
    """

Scenario: Wijzigingen tot een datum opvragen
    Als de consumer de request 'GET /wijzigingen?tot=2020-01-04' stuurt naar de update API
    Dan is de response
    """
    {
        "_links": {
            "self": { "href": "/wijzigingen?tot=2020-01-04" }
        },
        "_embedded": {
            "wijzigingen": [
                    "_links": {
                        "self": { "href": "/kadastraalonroerendezaken/12345678?mutatiedatum=2020-01-02&fields=toelichtingBewaarder"}
                    },
                    "identificatie": "12345678",
                    "type": "kadastraalonroerendezaak",
                    "mutatiedatum": "2020-01-02"
                },
                {
                    "_links": {
                        "self": { "href": "/kadastraalonroerendezaken/12345678/zakelijkgerechtigden/56789012?mutatiedatum=2020-01-02"}
                    },
                    "identificatie": "56789012",
                    "type": "zakelijkgerechtigde",
                    "mutatiedatum": "2020-01-02",
                },
                {
                    "_links": {
                        "self": { "href": "/kadastraalonroerendezaken/23456789?mutatiedatum=2020-01-03&fields=nummeraanduidingidentificatie"}
                    },
                    "identificatie": "23456789",
                    "type": "kadastraalonroerendezaak",
                    "mutatiedatum": "2020-01-03"
                }
            ]
        }
    }
    """

Scenario: Wijzigingen voor een gemeente opvragen
    Als de consumer de request 'GET /wijzigingen?van=2020-01-03&gemeentecode=0518' stuurt naar de update API
    Dan is de response
    """
    {
        "_links": {
            "self": { "href": "/wijzigingen?van=2020-01-01gemeentecode=0518" }
        },
        "_embedded": {
            "wijzigingen": [
                {
                    "_links": {
                        "self": { "href": "/kadastraalonroerendezaken/34567890?mutatiedatum=2020-01-04&expand=zakelijkGerechtigden"}
                    },
                    "identificatie": "34567890",
                    "type": "kadastraalonroerendezaak",
                    "mutatiedatum": "2020-01-04"
                },
                {
                    "_links": {
                        "self": { "href": "/kadastraalonroerendezaken/34567890?mutatiedatum=2020-01-04&fields=datumEindeGeldigheid"}
                    },
                    "identificatie": "45678901",
                    "type": "kadastraalonroerendezaak",
                    "mutatiedatum": "2020-01-04"
                }
            ]
        }
    }
    """
