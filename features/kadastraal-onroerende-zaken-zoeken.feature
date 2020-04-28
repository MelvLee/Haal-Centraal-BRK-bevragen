#language: nl
Functionaliteit: Kadastraal onroerende zaken zoeken

Achtergrond:
    Gegeven de kadastraal onroerende zaak
    | identificatie                            |
    | NL.IMKAD.KadastraalObject.76870487970000 |
    En kadastrale aanduiding
    | kadastrale gemeente code | perceelnummer | sectie |
    | 87                       | 4879          | K      |
    En zakelijk gerechtigden
    | identificatie | type gerechtigde | kadaster persoon identificatie |
    | 30493367      | eigenaar         | NL.IMKAD.Persoon.70882239      |
    | 30493368      | eigenaar         | NL.IMKAD.Persoon.50550743      |
    En adres
    | postcode | huisnummer |
    | 7361EW   | 29         |
    En de kadastraal onroerende zaak
    | identificatie                            |
    | NL.IMKAD.KadastraalObject.22310827210003 |
    En kadastrale aanduiding
    | kadastrale gemeente code | perceelnummer | sectie |
    | 881                      | 8272          | N      |
    En zakelijk gerechtigden
    | identificatie | type gerechtigde | identificatie |
    | 90283613      | eigenaar         | 999991905     |

Rule: zoeken met kadastrale aanduiding kenmerken

Scenario: De verplichte kadastrale aanduiding kenmerken zijn opgegeven
    Als kadastraal onroerende zaken wordt gezocht met de volgende query parameters
    | key                                | value |
    | kadastraalgemeente_code            | 87    |  
    | kadastraleaanduiding_perceelnummer | 4879  |
    | kadastraleaanduiding_sectie        | K     |
    Dan bevat het resultaat de kadastraal onroerende zaak met identificatie NL.IMKAD.KadastraalObject.76870487970000

Scenario: Één of meerdere verplichte kadastrale aanduiding kenmerken zijn niet opgegeven
    Als kadastraal onroerende zaken wordt gezocht met de volgende query parameters
    | key                                | value |
    | kadastraalgemeente_code            | 87    |  
    | kadastraleaanduiding_perceelnummer | 4879  |
    Dan bevat het resultaat de volgende foutmelding
    | status | code        | detail                                                            |
    | 400    | Bad Request | Voor gekozen zoekingang zijn niet alle parameters (goed) ingevuld |

Rule: zoeken met burgerservicenummer

Scenario: Een geldig burgerservicenummer is opgegeven
    Als kadastraal onroerende zaken wordt gezocht met de volgende query parameters
    | key                                      | value     |
    | ingeschrevenpersoon__burgerservicenummer | 999991905 |  
    Dan bevat het resultaat de kadastraal onroerende zaak met identificatie NL.IMKAD.KadastraalObject.22310827210003

Rule: zoeken met kadasterpersoon identificatie

Scenario: Een geldig kadasterpersoon identificatie is opgegeven
    Als kadastraal onroerende zaken wordt gezocht met de volgende query parameters
    | key                                  | value                     |
    | persoon_kadasterpersoonidentificatie | NL.IMKAD.Persoon.70882239 |  
    Dan bevat het resultaat de kadastraal onroerende zaak met identificatie NL.IMKAD.KadastraalObject.76870487970000

Rule: zoeken met adres kenmerken

Scenario: De verplichte adres kenmerken zijn opgegeven
    Als kadastraal onroerende zaken wordt gezocht met de volgende query parameters
    | key        | value  |
    | postcode   | 7361EW |  
    | huisnummer | 29     |
    Dan bevat het resultaat de kadastraal onroerende zaak met identificatie NL.IMKAD.KadastraalObject.76870487970000
#In OAS staat dat alleen postcode verplicht is, maar zonder huisnummer is de response een 404

Rule: combineren van parameters uit verschillende categorieën is niet toegestaan

Scenario: parameters uit verschillende categorieën zijn opgegeven
    Als kadastraal onroerende zaken wordt gezocht met de volgende query parameters
    | key                                | value  |
    | kadastraalgemeente_code            | 87     |  
    | postcode                           | 7361EW |  
    Dan bevat het resultaat de volgende foutmelding
    | status | code        | detail                                                                 |
    | 400    | Bad Request | Er zijn meerdere zoekingangen opgegeven. Graag 1 zoekingang gebruiken. |
