#language: nl
Functionaliteit: BRK Update API
    Om mijn eigen systeem actueel te houden en om historie op te kunnen bouwen
    Wil ik als afnemer kunnen opvragen welke BRK resources wanneer zijn gewijzigd of nieuw zijn opgevoerd

Achtergrond:
    Gegeven de base url van de update API is 'https://www.haal-centraal.nl/kadastraal-onroerende-zaak-update/api'
    En kadastraal onroerende zaak met identificatie 12345678 in gemeente '0344' is gewijzigd op de volgende tijdstippen
    | tijdstip          |
    | 2019-12-30T09:00Z |
    | 2020-01-02T10:05Z |
    | 2020-01-02T13:30Z |
    En een zakelijk gerechtigde van kadastraal onroerende zaak met identificatie 23456789 in gemeente '0363' is gewijzigd op de volgende tijdstippen
    | tijdstip          |
    | 2019-12-30T10:00Z |
    | 2020-01-03T12:25Z |
    En een nieuw kadastraal onroerende zaak met identificatie 34567890 is toegevoegd aan gemeente '0518' op tijdstip 2020-01-04T10:15Z
    En een kadaster natuurlijk persoon met identificatie 45678901 in gemeente '0518' is gewijzigd op de volgende tijdstippen
    | tijdstip          |
    | 2020-01-02T14:00Z |
    | 2020-01-04T09:00Z |

Scenario: Wijzigingen in een periode opvragen
    Als de consumer de request 'GET /wijzigingen?van=2020-01-02&tot-2020-01-03' stuurt naar de update API
    Dan is de response
    {
        "_links": {
            "self": { "href": "/wijzigingen?van=2020-01-02&tot-2020-01-03" },
            "kadastraalonroerendezaak": {
                 "href": "{brk-bevragen-base-url}/kadastraalonroerendezaken/{identificatie}?mutatietijdstip={tijdstip}",
                 "templated": true
            },
            "kadasternatuurlijkpersoon": {
                "href": "{brk-bevragen-base-url}/kadasternatuurlijkpersonen/{identificatie}?mutatietijdstip={tijdstip}",
                "templated": true
            }
        },
        "_embedded": {
            "wijzigingen": [
                {
                    "identificatie": "12345678",
                    "type": "kadastraalonroerendezaak",
                    "wasTijdstip": "2019-12-30T09:00:00Z",
                    "wordtTijdstip": "2020-01-02T10:05:00Z"
                },
                {
                    "identificatie": "12345678",
                    "type": "kadastraalonroerendezaak",
                    "wasTijdstip": "2020-01-02T10:05:00Z",
                    "wordtTijdstip": "2020-01-02T13:30:00Z"
                },
                {
                    "identificatie": "45678901",
                    "type": "kadasternatuurlijkpersoon",
                    "wordtTijdstip": "2020-01-02T14:00Z"
                }
            ]
        }
    }

Scenario: Wijzigingen vanaf een datum opvragen
    Als de consumer de request 'GET /wijzigingen?van=2020-01-03' stuurt naar de update API
    Dan is de response
    {
        "_links": {
            "self": { "href": "/wijzigingen?van=2020-01-03" },
            "kadastraalonroerendezaak": {
                 "href": "{brk-bevragen-base-url}/kadastraalonroerendezaken/{identificatie}?mutatietijdstip={tijdstip}",
                 "templated": true
            },
            "zakelijkgerechtigde": {
                 "href": "{brk-bevragen-base-url}/kadastraalonroerendezaken/{identificatie}/zakelijkgerechtigden?mutatietijdstip={tijdstip}",
                 "templated": true
            },
            "kadasternatuurlijkpersoon": {
                "href": "{brk-bevragen-base-url}/kadasternatuurlijkpersonen/{identificatie}?mutatietijdstip={tijdstip}",
                "templated": true
            }
        },
        "_embedded": {
            "wijzigingen": [
                {
                    "identificatie": "23456789",
                    "type": "zakelijkgerechtigde",
                    "wasTijdstip": "2019-12-30T10:00Z",
                    "wordtTijdstip": "2020-01-03T12:25Z"
                },
                {
                    "identificatie": "34567890",
                    "type": "kadastraalonroerendezaak",
                    "wordtTijdstip": "2020-01-04T10:15Z"
                },
                {
                    "identificatie": "45678901",
                    "type": "kadasternatuurlijkpersoon",
                    "watTijdstip": "2020-01-02T14:00Z",
                    "wordtTijdstip": "2020-01-04T09:00Z"
                }
            ]
        }
    }

Scenario: Wijzigingen tot een datum opvragen
    Als de consumer de request 'GET /wijzigingen?tot=2020-01-04' stuurt naar de update API
    Dan is de response
    {
        "_links": {
            "self": { "href": "/wijzigingen?tot=2020-01-04" },
            "kadastraalonroerendezaak": {
                 "href": "{brk-bevragen-base-url}/kadastraalonroerendezaken/{identificatie}?mutatietijdstip={tijdstip}",
                 "templated": true
            },
            "kadasternatuurlijkpersoon": {
                "href": "{brk-bevragen-base-url}/kadasternatuurlijkpersonen/{identificatie}?mutatietijdstip={tijdstip}",
                "templated": true
            }
        },
        "_embedded": {
            "wijzigingen": [
                {
                    "identificatie": "12345678",
                    "type": "kadastraalonroerendezaak",
                    "wasTijdstip": "2019-12-30T09:00:00Z",
                    "wordtTijdstip": "2020-01-02T10:05:00Z"
                },
                {
                    "identificatie": "12345678",
                    "type": "kadastraalonroerendezaak",
                    "wasTijdstip": "2020-01-02T10:05:00Z",
                    "wordtTijdstip": "2020-01-02T13:30:00Z"
                },
                {
                    "identificatie": "23456789",
                    "type": "kadastraalonroerendezaak",
                    "wasTijdstip": "2019-12-30T10:00Z",
                    "wordtTijdstip": "2020-01-03T12:25Z"
                },
                {
                    "identificatie": "45678901",
                    "type": "kadasternatuurlijkpersoon",
                    "wordtTijdstip": "2020-01-02T14:00Z"
                }
            ]
        }
    }

Scenario: Wijzigingen voor een gemeente opvragen
    Als de consumer de request 'GET /wijzigingen?van=2020-01-03&gemeentecode=0518' stuurt naar de update API
    Dan is de response
    {
        "_links": {
            "self": { "href": "/wijzigingen?van=2020-01-01gemeentecode=0518" },
            "kadastraalonroerendezaak": {
                 "href": "{brk-bevragen-base-url}/kadastraalonroerendezaken/{identificatie}?mutatietijdstip={tijdstip}",
                 "templated": true
            },
            "kadasternatuurlijkpersoon": {
                "href": "{brk-bevragen-base-url}/kadasternatuurlijkpersonen/{identificatie}?mutatietijdstip={tijdstip}",
                "templated": true
            }
        },
        "_embedded": {
            "wijzigingen": [
                {
                    "identificatie": "34567890",
                    "type": "kadastraalonroerendezaak",
                    "wordtTijdstip": "2020-01-04T10:15Z"
                },
                {
                    "identificatie": "45678901",
                    "type": "kadasternatuurlijkpersoon",
                    "watTijdstip": "2020-01-02T14:00Z",
                    "wordtTijdstip": "2020-01-04T09:00Z"
                }
            ]
        }
    }
