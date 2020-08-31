# /GET kadastraalonroerendezaken

Het zoeken van kadastraal onroerende zaken door een of meer parameters op te geven uit de categorieën kadastrale aanduiding, ingeschreven persoon, kadasterpersoon of Adres. Het combineren van parameters uit verschillende categorieën is niet toegestaan.

1. [Kadastrale aanduiding](#zoek-met-kadastrale-aanduiding)
2. [Ingeschreven persoon als zakelijk gerechtigde](#zoek-met-burgerservicenummer)
   - burgerservicenummer (verplicht)
   - typegerechtigde (optioneel)
3. Niet ingeschreven persoon of niet natuurlijk persoon als zakelijk gerechtigde
   - [kadasterpersoonidentificatie (verplicht)](#zoek-met-kadasterpersoonidentificatie)
   - typegerechtigde (optioneel)
4. Adres
   - postcode (verplicht)
   - huisnummer (optioneel)
   - huisletter (optioneel)
   - huisnummertoevoeging (optioneel)

Met gebruik van de parameter expand kunnen zakelijkgerechtigden direct worden meegeladen.

Het maximale aantal zoekresultaten dat geretourneerd wordt is aan de provider om te bepalen. Als het resultaat van de de request dit aantal overtreft worden er geen resultaten geretourneerd en volgt er een foutmelding.

## Zoek met kadastrale aanduiding

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam imperdiet urna nec lacus suscipit gravida. Donec sagittis ante sodales porttitor dapibus. Vivamus ac sapien ut sapien posuere tempor eu sed lacus. Sed dolor orci, molestie accumsan lacus sit amet, tincidunt porttitor eros. Nam et orci eu nulla efficitur gravida. Nulla pretium tempus elit, eget lacinia ipsum ultrices quis. Vestibulum lectus leo, blandit id tempus non, auctor ut odio. Aliquam vel vulputate quam. Praesent mollis urna neque, vitae laoreet nulla scelerisque et. Proin mauris est, vehicula et blandit quis, condimentum ut ex. Donec sed eros in elit sollicitudin egestas tincidunt ac orci. Pellentesque vehicula volutpat egestas. Nam vitae enim faucibus, sodales odio ut, dapibus nunc. Ut pellentesque molestie erat et faucibus. Donec et lacinia risus. Praesent sed sem tortor.

In tincidunt justo mauris, eget volutpat est efficitur quis. Praesent id volutpat felis. Donec lobortis dignissim nunc sed semper. Quisque pulvinar eu magna sit amet condimentum. Quisque tellus est, pharetra nec nibh sed, hendrerit faucibus nulla. Nam consectetur ipsum vel ex tristique, quis sollicitudin nisi luctus. Mauris urna quam, maximus ut imperdiet ac, iaculis ut magna. Praesent volutpat eros quis porta accumsan. Mauris lobortis tellus sed sapien rhoncus, ac sodales metus interdum. Ut vel aliquet quam.

``` curl
curl --location --request GET 'https://api.brk.acceptatie.kadaster.nl/esd/bevragen/v1//kadastraalonroerendezaken?kadastraleAanduiding=Beekbergen%20K%204879'
--header 'Accept-Crs: epsg:28992'
--header 'x-api-key: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
```

## Zoek met burgerservicenummer

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam imperdiet urna nec lacus suscipit gravida. Donec sagittis ante sodales porttitor dapibus. Vivamus ac sapien ut sapien posuere tempor eu sed lacus. Sed dolor orci, molestie accumsan lacus sit amet, tincidunt porttitor eros. Nam et orci eu nulla efficitur gravida. Nulla pretium tempus elit, eget lacinia ipsum ultrices quis. Vestibulum lectus leo, blandit id tempus non, auctor ut odio. Aliquam vel vulputate quam. Praesent mollis urna neque, vitae laoreet nulla scelerisque et. Proin mauris est, vehicula et blandit quis, condimentum ut ex. Donec sed eros in elit sollicitudin egestas tincidunt ac orci. Pellentesque vehicula volutpat egestas. Nam vitae enim faucibus, sodales odio ut, dapibus nunc. Ut pellentesque molestie erat et faucibus. Donec et lacinia risus. Praesent sed sem tortor.

In tincidunt justo mauris, eget volutpat est efficitur quis. Praesent id volutpat felis. Donec lobortis dignissim nunc sed semper. Quisque pulvinar eu magna sit amet condimentum. Quisque tellus est, pharetra nec nibh sed, hendrerit faucibus nulla. Nam consectetur ipsum vel ex tristique, quis sollicitudin nisi luctus. Mauris urna quam, maximus ut imperdiet ac, iaculis ut magna. Praesent volutpat eros quis porta accumsan. Mauris lobortis tellus sed sapien rhoncus, ac sodales metus interdum. Ut vel aliquet quam. 

``` http
GET /kadastraalonroerendezaken?burgerservicenummer=999991905 HTTP/1.1
Host: https://api.brk.acceptatie.kadaster.nl/esd/bevragen/v1/
Accept-Crs: epsg:28992
x-api-key: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```

## Zoek met kadasterpersoonidentificatie

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam imperdiet urna nec lacus suscipit gravida. Donec sagittis ante sodales porttitor dapibus. Vivamus ac sapien ut sapien posuere tempor eu sed lacus. Sed dolor orci, molestie accumsan lacus sit amet, tincidunt porttitor eros. Nam et orci eu nulla efficitur gravida. Nulla pretium tempus elit, eget lacinia ipsum ultrices quis. Vestibulum lectus leo, blandit id tempus non, auctor ut odio. Aliquam vel vulputate quam. Praesent mollis urna neque, vitae laoreet nulla scelerisque et. Proin mauris est, vehicula et blandit quis, condimentum ut ex. Donec sed eros in elit sollicitudin egestas tincidunt ac orci. Pellentesque vehicula volutpat egestas. Nam vitae enim faucibus, sodales odio ut, dapibus nunc. Ut pellentesque molestie erat et faucibus. Donec et lacinia risus. Praesent sed sem tortor.

In tincidunt justo mauris, eget volutpat est efficitur quis. Praesent id volutpat felis. Donec lobortis dignissim nunc sed semper. Quisque pulvinar eu magna sit amet condimentum. Quisque tellus est, pharetra nec nibh sed, hendrerit faucibus nulla. Nam consectetur ipsum vel ex tristique, quis sollicitudin nisi luctus. Mauris urna quam, maximus ut imperdiet ac, iaculis ut magna. Praesent volutpat eros quis porta accumsan. Mauris lobortis tellus sed sapien rhoncus, ac sodales metus interdum. Ut vel aliquet quam. 

``` shell
wget --no-check-certificate --quiet \
  --method GET \
  --timeout=0 \
  --header 'Accept-Crs: epsg:28992' \
  --header 'x-api-key: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx' \
   'https://api.brk.acceptatie.kadaster.nl/esd/bevragen/v1//kadastraalonroerendezaken?persoon__identificatie=440650207'
```
