/*
 * Kadastraal onroerende zaken
 * D.m.v. deze toepassing worden meerdere, korte bevragingen op de Basis Registratie Kadaster beschikbaar gesteld. Deze toepassing betreft het verstrekken van Kadastrale Onroerende Zaak informatie.
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.client.model.LocatieKadastraalObject;
import org.openapitools.client.model.PointGeoJSON;
import org.openapitools.client.model.PolygonGeoJSON;
import org.openapitools.client.model.TypeKadastraalOnroerendeZaakEnum;
import org.openapitools.client.model.TypeKoopsom;
import org.openapitools.client.model.TypeOppervlak;
import org.openapitools.client.model.TypePerceelnummerVerschuiving;
import org.openapitools.client.model.Waardelijst;

/**
 * Een kadastraal onroerende zaak is een perceel of een appartementsrecht. Een perceel is een stuk grond waarvan het Kadaster de grenzen heeft gemeten en dat bij het Kadaster een eigen nummer heeft. Een appartementsrecht is het recht dat iemand of een organisatie heeft om eigenaar te zijn van een deel van een gebouw of een stuk grond. In de praktijk wordt dit deel meestal een appartement genoemd.  Waardelijst in deze component : [aardCultuurBebouwd](http://www.kadaster.nl/schemas/waardelijsten/CultuurcodeBebouwd/) en [aardCultuurOnbebouwd](http://www.kadaster.nl/schemas/waardelijsten/CultuurcodeOnbebouwd/) 
 */
@ApiModel(description = "Een kadastraal onroerende zaak is een perceel of een appartementsrecht. Een perceel is een stuk grond waarvan het Kadaster de grenzen heeft gemeten en dat bij het Kadaster een eigen nummer heeft. Een appartementsrecht is het recht dat iemand of een organisatie heeft om eigenaar te zijn van een deel van een gebouw of een stuk grond. In de praktijk wordt dit deel meestal een appartement genoemd.  Waardelijst in deze component : [aardCultuurBebouwd](http://www.kadaster.nl/schemas/waardelijsten/CultuurcodeBebouwd/) en [aardCultuurOnbebouwd](http://www.kadaster.nl/schemas/waardelijsten/CultuurcodeOnbebouwd/) ")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2020-07-07T17:44:19.924+02:00[Europe/Amsterdam]")
public class KadastraalOnroerendeZaak {
  public static final String SERIALIZED_NAME_IDENTIFICATIE = "identificatie";
  @SerializedName(SERIALIZED_NAME_IDENTIFICATIE)
  private String identificatie;

  public static final String SERIALIZED_NAME_DOMEIN = "domein";
  @SerializedName(SERIALIZED_NAME_DOMEIN)
  private String domein;

  public static final String SERIALIZED_NAME_BEGRENZING_PERCEEL = "begrenzingPerceel";
  @SerializedName(SERIALIZED_NAME_BEGRENZING_PERCEEL)
  private PolygonGeoJSON begrenzingPerceel;

  public static final String SERIALIZED_NAME_PERCEELNUMMER_ROTATIE = "perceelnummerRotatie";
  @SerializedName(SERIALIZED_NAME_PERCEELNUMMER_ROTATIE)
  private BigDecimal perceelnummerRotatie;

  public static final String SERIALIZED_NAME_PLAATSCOORDINATEN = "plaatscoordinaten";
  @SerializedName(SERIALIZED_NAME_PLAATSCOORDINATEN)
  private PointGeoJSON plaatscoordinaten;

  public static final String SERIALIZED_NAME_KOOPSOM = "koopsom";
  @SerializedName(SERIALIZED_NAME_KOOPSOM)
  private TypeKoopsom koopsom;

  public static final String SERIALIZED_NAME_TOELICHTING_BEWAARDER = "toelichtingBewaarder";
  @SerializedName(SERIALIZED_NAME_TOELICHTING_BEWAARDER)
  private String toelichtingBewaarder;

  public static final String SERIALIZED_NAME_TYPE = "type";
  @SerializedName(SERIALIZED_NAME_TYPE)
  private TypeKadastraalOnroerendeZaakEnum type;

  public static final String SERIALIZED_NAME_AARD_CULTUUR_BEBOUWD = "aardCultuurBebouwd";
  @SerializedName(SERIALIZED_NAME_AARD_CULTUUR_BEBOUWD)
  private Waardelijst aardCultuurBebouwd;

  public static final String SERIALIZED_NAME_AARD_CULTUUR_ONBEBOUWD = "aardCultuurOnbebouwd";
  @SerializedName(SERIALIZED_NAME_AARD_CULTUUR_ONBEBOUWD)
  private Waardelijst aardCultuurOnbebouwd;

  public static final String SERIALIZED_NAME_KADASTRALE_AANDUIDING = "kadastraleAanduiding";
  @SerializedName(SERIALIZED_NAME_KADASTRALE_AANDUIDING)
  private String kadastraleAanduiding;

  public static final String SERIALIZED_NAME_KADASTRALE_GROOTTE = "kadastraleGrootte";
  @SerializedName(SERIALIZED_NAME_KADASTRALE_GROOTTE)
  private TypeOppervlak kadastraleGrootte;

  public static final String SERIALIZED_NAME_PERCEELNUMMER_VERSCHUIVING = "perceelnummerVerschuiving";
  @SerializedName(SERIALIZED_NAME_PERCEELNUMMER_VERSCHUIVING)
  private TypePerceelnummerVerschuiving perceelnummerVerschuiving;

  public static final String SERIALIZED_NAME_ADRESSEN = "adressen";
  @SerializedName(SERIALIZED_NAME_ADRESSEN)
  private List<LocatieKadastraalObject> adressen = null;

  public static final String SERIALIZED_NAME_ZAKELIJK_GERECHTIGDE_IDENTIFICATIES = "zakelijkGerechtigdeIdentificaties";
  @SerializedName(SERIALIZED_NAME_ZAKELIJK_GERECHTIGDE_IDENTIFICATIES)
  private List<String> zakelijkGerechtigdeIdentificaties = null;


  public KadastraalOnroerendeZaak identificatie(String identificatie) {
    
    this.identificatie = identificatie;
    return this;
  }

   /**
   * Get identificatie
   * @return identificatie
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getIdentificatie() {
    return identificatie;
  }


  public void setIdentificatie(String identificatie) {
    this.identificatie = identificatie;
  }


  public KadastraalOnroerendeZaak domein(String domein) {
    
    this.domein = domein;
    return this;
  }

   /**
   * Het domein waartoe de identificatie behoort.
   * @return domein
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Het domein waartoe de identificatie behoort.")

  public String getDomein() {
    return domein;
  }


  public void setDomein(String domein) {
    this.domein = domein;
  }


  public KadastraalOnroerendeZaak begrenzingPerceel(PolygonGeoJSON begrenzingPerceel) {
    
    this.begrenzingPerceel = begrenzingPerceel;
    return this;
  }

   /**
   * Get begrenzingPerceel
   * @return begrenzingPerceel
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public PolygonGeoJSON getBegrenzingPerceel() {
    return begrenzingPerceel;
  }


  public void setBegrenzingPerceel(PolygonGeoJSON begrenzingPerceel) {
    this.begrenzingPerceel = begrenzingPerceel;
  }


  public KadastraalOnroerendeZaak perceelnummerRotatie(BigDecimal perceelnummerRotatie) {
    
    this.perceelnummerRotatie = perceelnummerRotatie;
    return this;
  }

   /**
   * Rotatie van het perceelnummer ten behoeve van visualisatie op de kaart. Perceelnummers worden bijvoorbeeld gekanteld om in een smal perceel te passen.
   * maximum: 999
   * @return perceelnummerRotatie
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Rotatie van het perceelnummer ten behoeve van visualisatie op de kaart. Perceelnummers worden bijvoorbeeld gekanteld om in een smal perceel te passen.")

  public BigDecimal getPerceelnummerRotatie() {
    return perceelnummerRotatie;
  }


  public void setPerceelnummerRotatie(BigDecimal perceelnummerRotatie) {
    this.perceelnummerRotatie = perceelnummerRotatie;
  }


  public KadastraalOnroerendeZaak plaatscoordinaten(PointGeoJSON plaatscoordinaten) {
    
    this.plaatscoordinaten = plaatscoordinaten;
    return this;
  }

   /**
   * Get plaatscoordinaten
   * @return plaatscoordinaten
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public PointGeoJSON getPlaatscoordinaten() {
    return plaatscoordinaten;
  }


  public void setPlaatscoordinaten(PointGeoJSON plaatscoordinaten) {
    this.plaatscoordinaten = plaatscoordinaten;
  }


  public KadastraalOnroerendeZaak koopsom(TypeKoopsom koopsom) {
    
    this.koopsom = koopsom;
    return this;
  }

   /**
   * Get koopsom
   * @return koopsom
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public TypeKoopsom getKoopsom() {
    return koopsom;
  }


  public void setKoopsom(TypeKoopsom koopsom) {
    this.koopsom = koopsom;
  }


  public KadastraalOnroerendeZaak toelichtingBewaarder(String toelichtingBewaarder) {
    
    this.toelichtingBewaarder = toelichtingBewaarder;
    return this;
  }

   /**
   * Toelichtende tekst bij een onroerende zaak van de bewaarder. De bewaarder is iemand die bij het Kadaster werkt. Hij schrijft stukken in in de openbare registers en de basisregistratie Kadaster conform de Kadasterwet.
   * @return toelichtingBewaarder
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Toelichtende tekst bij een onroerende zaak van de bewaarder. De bewaarder is iemand die bij het Kadaster werkt. Hij schrijft stukken in in de openbare registers en de basisregistratie Kadaster conform de Kadasterwet.")

  public String getToelichtingBewaarder() {
    return toelichtingBewaarder;
  }


  public void setToelichtingBewaarder(String toelichtingBewaarder) {
    this.toelichtingBewaarder = toelichtingBewaarder;
  }


  public KadastraalOnroerendeZaak type(TypeKadastraalOnroerendeZaakEnum type) {
    
    this.type = type;
    return this;
  }

   /**
   * Get type
   * @return type
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public TypeKadastraalOnroerendeZaakEnum getType() {
    return type;
  }


  public void setType(TypeKadastraalOnroerendeZaakEnum type) {
    this.type = type;
  }


  public KadastraalOnroerendeZaak aardCultuurBebouwd(Waardelijst aardCultuurBebouwd) {
    
    this.aardCultuurBebouwd = aardCultuurBebouwd;
    return this;
  }

   /**
   * Get aardCultuurBebouwd
   * @return aardCultuurBebouwd
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Waardelijst getAardCultuurBebouwd() {
    return aardCultuurBebouwd;
  }


  public void setAardCultuurBebouwd(Waardelijst aardCultuurBebouwd) {
    this.aardCultuurBebouwd = aardCultuurBebouwd;
  }


  public KadastraalOnroerendeZaak aardCultuurOnbebouwd(Waardelijst aardCultuurOnbebouwd) {
    
    this.aardCultuurOnbebouwd = aardCultuurOnbebouwd;
    return this;
  }

   /**
   * Get aardCultuurOnbebouwd
   * @return aardCultuurOnbebouwd
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Waardelijst getAardCultuurOnbebouwd() {
    return aardCultuurOnbebouwd;
  }


  public void setAardCultuurOnbebouwd(Waardelijst aardCultuurOnbebouwd) {
    this.aardCultuurOnbebouwd = aardCultuurOnbebouwd;
  }


  public KadastraalOnroerendeZaak kadastraleAanduiding(String kadastraleAanduiding) {
    
    this.kadastraleAanduiding = kadastraleAanduiding;
    return this;
  }

   /**
   * Get kadastraleAanduiding
   * @return kadastraleAanduiding
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getKadastraleAanduiding() {
    return kadastraleAanduiding;
  }


  public void setKadastraleAanduiding(String kadastraleAanduiding) {
    this.kadastraleAanduiding = kadastraleAanduiding;
  }


  public KadastraalOnroerendeZaak kadastraleGrootte(TypeOppervlak kadastraleGrootte) {
    
    this.kadastraleGrootte = kadastraleGrootte;
    return this;
  }

   /**
   * Get kadastraleGrootte
   * @return kadastraleGrootte
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public TypeOppervlak getKadastraleGrootte() {
    return kadastraleGrootte;
  }


  public void setKadastraleGrootte(TypeOppervlak kadastraleGrootte) {
    this.kadastraleGrootte = kadastraleGrootte;
  }


  public KadastraalOnroerendeZaak perceelnummerVerschuiving(TypePerceelnummerVerschuiving perceelnummerVerschuiving) {
    
    this.perceelnummerVerschuiving = perceelnummerVerschuiving;
    return this;
  }

   /**
   * Get perceelnummerVerschuiving
   * @return perceelnummerVerschuiving
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public TypePerceelnummerVerschuiving getPerceelnummerVerschuiving() {
    return perceelnummerVerschuiving;
  }


  public void setPerceelnummerVerschuiving(TypePerceelnummerVerschuiving perceelnummerVerschuiving) {
    this.perceelnummerVerschuiving = perceelnummerVerschuiving;
  }


  public KadastraalOnroerendeZaak adressen(List<LocatieKadastraalObject> adressen) {
    
    this.adressen = adressen;
    return this;
  }

  public KadastraalOnroerendeZaak addAdressenItem(LocatieKadastraalObject adressenItem) {
    if (this.adressen == null) {
      this.adressen = new ArrayList<>();
    }
    this.adressen.add(adressenItem);
    return this;
  }

   /**
   * Get adressen
   * @return adressen
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<LocatieKadastraalObject> getAdressen() {
    return adressen;
  }


  public void setAdressen(List<LocatieKadastraalObject> adressen) {
    this.adressen = adressen;
  }


  public KadastraalOnroerendeZaak zakelijkGerechtigdeIdentificaties(List<String> zakelijkGerechtigdeIdentificaties) {
    
    this.zakelijkGerechtigdeIdentificaties = zakelijkGerechtigdeIdentificaties;
    return this;
  }

  public KadastraalOnroerendeZaak addZakelijkGerechtigdeIdentificatiesItem(String zakelijkGerechtigdeIdentificatiesItem) {
    if (this.zakelijkGerechtigdeIdentificaties == null) {
      this.zakelijkGerechtigdeIdentificaties = new ArrayList<>();
    }
    this.zakelijkGerechtigdeIdentificaties.add(zakelijkGerechtigdeIdentificatiesItem);
    return this;
  }

   /**
   * Alle personen en rechtspersonen die een zakelijk recht hebben op deze kadastaraal onroerende zaak
   * @return zakelijkGerechtigdeIdentificaties
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Alle personen en rechtspersonen die een zakelijk recht hebben op deze kadastaraal onroerende zaak")

  public List<String> getZakelijkGerechtigdeIdentificaties() {
    return zakelijkGerechtigdeIdentificaties;
  }


  public void setZakelijkGerechtigdeIdentificaties(List<String> zakelijkGerechtigdeIdentificaties) {
    this.zakelijkGerechtigdeIdentificaties = zakelijkGerechtigdeIdentificaties;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    KadastraalOnroerendeZaak kadastraalOnroerendeZaak = (KadastraalOnroerendeZaak) o;
    return Objects.equals(this.identificatie, kadastraalOnroerendeZaak.identificatie) &&
        Objects.equals(this.domein, kadastraalOnroerendeZaak.domein) &&
        Objects.equals(this.begrenzingPerceel, kadastraalOnroerendeZaak.begrenzingPerceel) &&
        Objects.equals(this.perceelnummerRotatie, kadastraalOnroerendeZaak.perceelnummerRotatie) &&
        Objects.equals(this.plaatscoordinaten, kadastraalOnroerendeZaak.plaatscoordinaten) &&
        Objects.equals(this.koopsom, kadastraalOnroerendeZaak.koopsom) &&
        Objects.equals(this.toelichtingBewaarder, kadastraalOnroerendeZaak.toelichtingBewaarder) &&
        Objects.equals(this.type, kadastraalOnroerendeZaak.type) &&
        Objects.equals(this.aardCultuurBebouwd, kadastraalOnroerendeZaak.aardCultuurBebouwd) &&
        Objects.equals(this.aardCultuurOnbebouwd, kadastraalOnroerendeZaak.aardCultuurOnbebouwd) &&
        Objects.equals(this.kadastraleAanduiding, kadastraalOnroerendeZaak.kadastraleAanduiding) &&
        Objects.equals(this.kadastraleGrootte, kadastraalOnroerendeZaak.kadastraleGrootte) &&
        Objects.equals(this.perceelnummerVerschuiving, kadastraalOnroerendeZaak.perceelnummerVerschuiving) &&
        Objects.equals(this.adressen, kadastraalOnroerendeZaak.adressen) &&
        Objects.equals(this.zakelijkGerechtigdeIdentificaties, kadastraalOnroerendeZaak.zakelijkGerechtigdeIdentificaties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(identificatie, domein, begrenzingPerceel, perceelnummerRotatie, plaatscoordinaten, koopsom, toelichtingBewaarder, type, aardCultuurBebouwd, aardCultuurOnbebouwd, kadastraleAanduiding, kadastraleGrootte, perceelnummerVerschuiving, adressen, zakelijkGerechtigdeIdentificaties);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class KadastraalOnroerendeZaak {\n");
    sb.append("    identificatie: ").append(toIndentedString(identificatie)).append("\n");
    sb.append("    domein: ").append(toIndentedString(domein)).append("\n");
    sb.append("    begrenzingPerceel: ").append(toIndentedString(begrenzingPerceel)).append("\n");
    sb.append("    perceelnummerRotatie: ").append(toIndentedString(perceelnummerRotatie)).append("\n");
    sb.append("    plaatscoordinaten: ").append(toIndentedString(plaatscoordinaten)).append("\n");
    sb.append("    koopsom: ").append(toIndentedString(koopsom)).append("\n");
    sb.append("    toelichtingBewaarder: ").append(toIndentedString(toelichtingBewaarder)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    aardCultuurBebouwd: ").append(toIndentedString(aardCultuurBebouwd)).append("\n");
    sb.append("    aardCultuurOnbebouwd: ").append(toIndentedString(aardCultuurOnbebouwd)).append("\n");
    sb.append("    kadastraleAanduiding: ").append(toIndentedString(kadastraleAanduiding)).append("\n");
    sb.append("    kadastraleGrootte: ").append(toIndentedString(kadastraleGrootte)).append("\n");
    sb.append("    perceelnummerVerschuiving: ").append(toIndentedString(perceelnummerVerschuiving)).append("\n");
    sb.append("    adressen: ").append(toIndentedString(adressen)).append("\n");
    sb.append("    zakelijkGerechtigdeIdentificaties: ").append(toIndentedString(zakelijkGerechtigdeIdentificaties)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

