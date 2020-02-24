#language: nl
Functionaliteit: BRK Update API
    Als leverancier
    Wil ik wijzigingen aan Kadastraal Onroerende Zaken en nieuwe Kadastraal Onroerende Zaken
    Zodat ik deze wijzigingen kan doorvoeren in mijn eigen systeem

Achtergrond:
    Gegeven de base url van de update API is 'https://www.haal-centraal.nl/kadastraal-onroerende-zaak-update/api'
    En kadastraal onroerende zaak met identificatie 12345678 in gemeente '0344' is gewijzigd op 02-01-2020
    En een zakelijk gerechtigde van kadastraal onroerende zaak met identificatie 23456789 in gemeente '0344' is gewijzigd op 03-01-2020
    En een nieuw kadastraal onroerende zaak met identificatie 34567890 is toegevoegd aan gemeente '0344' op 04-01-2020

Scenario: Gewijzigde en nieuwe Kadastraal Onroerende Zaken op een datum opvragen
    Als de consumer een request 'GET /kadastraalonroerendezaken?gemuteerdop=2020-01-02' stuurt naar de update API
    Dan bevat de response de volgende kadastraal onroerende zaken
    | identificatie |
    | 12345678      |

Scenario: Gewijzigde en nieuwe Kadastraal Onroerende Zaken vanaf een datum opvragen
    Als de consumer een request 'GET /kadastraalonroerendezaken?gemuteerdvanaf=2020-01-03' stuurt naar de update API
    Dan bevat de response de volgende kadastraal onroerende zaken
    | identificatie |
    | 23456789      |
    | 34567890      |

Scenario: Gewijzigde en nieuwe Kadastraal Onroerende Zaken tot een datum opvragen
    Als de consumer een request 'GET /kadastraalonroerendezaken?gemuteerdtot=2020-01-04' stuurt naar de update API
    Dan bevat de response de volgende kadastraal onroerende zaken
    | identificatie |
    | 12345678      |
    | 23456789      |

Scenario: Gewijzigde en nieuwe Kadastraal Onroerende Zaken in een periode opvragen
    Als de consumer een request 'GET /kadastraalonroerendezaken?gemuteerdvanaf=2020-01-03&gemuteerdtot=2020-01-04' stuurt naar de update API
    Dan bevat de response de volgende kadastraal onroerende zaken
    | identificatie |
    | 23456789      |
