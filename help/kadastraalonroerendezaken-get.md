# /GET kadastraalonroerendezaken

Het zoeken van kadastraal onroerende zaken door een of meer parameters op te geven uit de categorieën kadastrale aanduiding, ingeschreven persoon, kadasterpersoon of Adres. Het combineren van parameters uit verschillende categorieën is niet toegestaan.

1. [Kadastrale aanduiding](#zoek-met-kadastrale-aanduiding)
2. Ingeschreven persoon als zakelijk gerechtigde
   - burgerservicenummer (verplicht)
   - typegerechtigde (optioneel)
3. Niet ingeschreven persoon of niet natuurlijk persoon als zakelijk gerechtigde
   - kadasterpersoonidentificatie (verplicht)
   - typegerechtigde (optioneel)
4. Adres
   - postcode (verplicht)
   - huisnummer (optioneel)
   - huisletter (optioneel)
   - huisnummertoevoeging (optioneel)

Met gebruik van de parameter expand kunnen zakelijkgerechtigden direct worden meegeladen.

Het maximale aantal zoekresultaten dat geretourneerd wordt is aan de provider om te bepalen. Als het resultaat van de de request dit aantal overtreft worden er geen resultaten geretourneerd en volgt er een foutmelding.

## Zoek met kadastrale aanduiding

``` curl
curl --location --request GET 'https://api.brk.acceptatie.kadaster.nl/esd/bevragen/v1//kadastraalonroerendezaken?kadastraleAanduiding=Beekbergen%20K%204879'
--header 'Accept-Crs: epsg:28992'
--header 'x-api-key: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
```
