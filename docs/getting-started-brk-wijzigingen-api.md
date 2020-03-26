# Getting started

In dit document wordt beschreven hoe je met Prism HTTP Mock Server om de BRK wijzigingen API te mocken.

Meer informatie over de BRK wijzigingen API is te vinden m.b.v. de onderstaande links:

- De technische specificatie in [OpenAPI](https://raw.githubusercontent.com/VNG-Realisatie/Haal-Centraal-BRK-bevragen/feature/wijzigingsnotificatie/specificatie/BRK-Wijzigingen/openapi.yaml)
- De technische specificatie in [Swagger-formaat](https://petstore.swagger.io/?url=https://raw.githubusercontent.com/VNG-Realisatie/Haal-Centraal-BRK-bevragen/feature/wijzigingsnotificatie/specificatie/BRK-Wijzigingen/openapi.yaml)
- De feature specificatie in [Gherkin](https://raw.githubusercontent.com/VNG-Realisatie/Haal-Centraal-BRK-bevragen/feature/wijzigingsnotificatie/features/update/bevraag-updates.feature) 

## Prerequisites

Prism kan worden gedraaid middels node.js. Hiervoor moet node.js en npm lokaal worden geïnstalleerd.

Valideer of node.js en npm is geïnstalleerd door de volgende commands uit te voeren:

``` cmd
node -v
npm -v
```

Gebruik [de installatie handleiding](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm) van npm om node.js en/of npm te installeren.

## Installeer Prism

Prism wordt geïnstalleerd middels de volgende commando:

``` cmd
npm install -g @stoplight/prism-cli
```

## Start een mock voor de BRK wijzigingen API

Gebruik de volgende commando om een mock server op te zetten voor de BRK wijzigingen API

``` cmd
prism mock https://raw.githubusercontent.com/VNG-Realisatie/Haal-Centraal-BRK-bevragen/feature/wijzigingsnotificatie/specificatie/BRK-Wijzigingen/openapi.yaml
```

## Roep de BRK wijzigingen API mock aan

Start een browser of gebruik postman en navigeer naar de volgende url

``` cmd
http://localhost:4010/wijzigingen?van=2020-01-01&gemeentecode=0599&__example=nieuwKoz
```

Voor de __example query param kan de volgende waarden worden gebruikt

- nieuwKoz
- gewijzigdKoz
- beeindigdKoz
- samenvoegingKoz
- splitsingKoz
- nieuwZag
- gewijzigdZag
- beeindigdZag
- langerDanEenWeek
- alleenVan
