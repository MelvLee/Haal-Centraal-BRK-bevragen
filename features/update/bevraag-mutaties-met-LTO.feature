#language: nl
Functionaliteit: BRK wijzigingen bevragen met Logisch Tijdstip Ontstaan
    Als kadaster wil ik
    Dat de klant wijzigingen in de BRK ophaal middels Kadastraal Object identificatie en Logisch Tijdstip Ontstaan of Stuk identificaite en Logisch Tijdstip Ontstaan
    Zodat de bronsystemen conform BRK Levering kan worden bevraagd

vragen:
- tijdstip inschrijving = logisch tijdstip ontstaan?
- is het mogelijk dat alleen een kadastraal object wijzigt, zonder dat er een stuk wordt aangeboden? En omgekeerd?
- als een zakelijk gerechtigde wijzigt, wordt de wijziging opgehaald via het kadastraal object? Of krijgt je de identificatie van de zakelijk gerechtigde ook via het mutatie bericht
- wat wordt er bedoeld met een abonnement? In de eerste ontwerp gingen wij uit van gemeente en datum bevragen

Achtergrond:
    Gegeven de volgende mutatie bestanden zijn aangemeld op GDS
    |                                 | Producttype | Kadastrale   |        |         |       Appartements-     |          |        |
    | bestandsnaam                    |  en versie  | gemeentecode | Sectie | Perceel | aanduiding | volgnummer | Datum    | Volgnr |
    | MUTBX02-HTN02D2672A7-20200401-1 | MUTBX02     | HTN02        | D      | 2672    | A          | 7          | 20200401 | 1      |
    | MUTBX01-GNG00F932-20200414-1    | MUTBX01     | GNG00        | F      | 932     |            |            | 20200414 | 1      |
    | MUTBX01-GNG00F1530-20200414-1   | MUTBX01     | GNG00        | F      | 1530    |            |            | 20200414 | 1      |
    | MUTBX01-GNG00F1531-20200415-1   | MUTBX01     | GNG00        | F      | 1531    |            |            | 20200415 | 1      |
    | MUTBX01-HTN02F1561-20200415-1   | MUTBX01     | HTN02        | F      | 1561    |            |            | 20200415 | 1      |
    | MUTBX01-HTN02F1561-20200415-2   | MUTBX01     | HTN02        | F      | 1561    |            |            | 20200415 | 2      |
    | MUTBX01-HTN02F2200-20200416-1   | MUTBX01     | HTN02        | F      | 2200    |            |            | 20200416 | 1      |
    | MUTBX01-GNG00F2238-20200416-1   | MUTBX01     | GNG00        | F      | 2238    |            |            | 20200416 | 1      |
    | MUTBX01-GNG00F2238-20200416-2   | MUTBX01     | GNG00        | F      | 2238    |            |            | 20200416 | 2      |
    En de bestanden bevatten de volgende identificatie gegevens
    | bestandsnaam                    | tijdstip inschrijving   | identificatie tia stuk          | identificatie kadastraal object        |
    | MUTBX02-HTN02D2672A7-20200401-1 | 2020-04-01T12:01:00.000 | NL.IMKAD.TIAStuk.20200401003421 | NL.IMKAD.OnroerendeZaak.32780267210007 |
    | MUTBX01-HTN02F1561-20200415-1   | 2020-04-15T09:01:00.000 | NL.IMKAD.TIAStuk.20200415000001 | NL.IMKAD.OnroerendeZaak.32780267210008 |
    | MUTBX01-HTN02F1561-20200415-2   | 2020-04-15T09:01:00.000 | NL.IMKAD.TIAStuk.20200415000002 | NL.IMKAD.OnroerendeZaak.32780267210008 |
    | MUTBX01-GNG00F2238-20200416-1   | 2020-04-16T10:01:00.000 | NL.IMKAD.TIAStuk.20200416000001 | NL.IMKAD.OnroerendeZaak.32780267210009 |
    | MUTBX01-GNG00F2238-20200416-2   | 2020-04-16T10:05:00.000 | NL.IMKAD.TIAStuk.20200416000002 | NL.IMKAD.OnroerendeZaak.32780267210009 |

Rule: Mutaties moeten in volgorde van tijdstip en volgnummer worden verwerkt

Scenario: Meerdere mutaties op één tijdstip
    Als de consumer de request 'GET /wijzigingen?van=2020-04-15&tot=2020-04-16&kadastralegemeentecode=HTN02' stuurt naar de wijzigingen API
    Dan worden de mutaties op volgorde van tijdstip en volgnummer teruggegeven
    En is de response
    """
    {
        "_links": {
            "self": { "href": "/wijzigingen?van=2020-04-15&tot=2020-04-16&kadastralegemeentecode=HTN02" },
            "kadastraalOnroerendeZaak": { "href": "/kadastraalonroerendezaken/{kadastraalobjectidentificatie}?tijdstipinschrijving={tijdstipinschrijving}", "templated": true },
            "stuk": { "href": "/stukken/{stukidentificatie}?tijdstipinschrijving={tijdstipinschrijving}"}
        },
        "wijzigingen": [
            {
                "kadastraalobjectidentificatie": "NL.IMKAD.OnroerendeZaak.32780267210008",
                "stukidentificatie": "NL.IMKAD.TIAStuk.20200415000001",
                "tijdstipinschrijving": "2020-04-15T09:01:00.000",
                "volgnummer": 1
            },
            {
                "kadastraalobjectidentificatie": "NL.IMKAD.OnroerendeZaak.32780267210008",
                "stukidentificatie": "NL.IMKAD.TIAStuk.20200415000002",
                "tijdstipinschrijving": "2020-04-15T09:01:00.000",
                "volgnummer": 2
            }
        ]
    }
    """

Scenario: Meerdere mutaties op één dag, verschillend tijd
    Als de consumer de request 'GET /wijzigingen?van=2020-04-16&tot=2020-04-17&kadastralegemeentecode=HTN02' stuurt naar de wijzigingen API
    Dan worden de mutaties op volgorde van tijdstip en volgnummer teruggegeven
    En is de response
    """
    {
        "_links": {
            "self": { "href": "/wijzigingen?van=2020-04-15&tot=2020-04-16&kadastralegemeentecode=GNG00" },
            "kadastraalOnroerendeZaak": { "href": "/kadastraalonroerendezaken/{kadastraalobjectidentificatie}?tijdstipinschrijving={tijdstipinschrijving}", "templated": true },
            "stuk": { "href": "/stukken/{stukidentificatie}?tijdstipinschrijving={tijdstipinschrijving}"}
        },
        "wijzigingen": [
            {
                "kadastraalobjectidentificatie": "NL.IMKAD.OnroerendeZaak.32780267210009",
                "stukidentificatie": "NL.IMKAD.TIAStuk.20200416000001",
                "tijdstipinschrijving": "2020-04-16T10:01:00.000",
                "volgnummer": 1
            },
            {
                "kadastraalobjectidentificatie": "NL.IMKAD.OnroerendeZaak.32780267210009",
                "stukidentificatie": "NL.IMKAD.TIAStuk.20200416000002",
                "tijdstipinschrijving": "2020-04-16T10:05:00.000",
                "volgnummer": 2
            }
        ]
    }
    """
