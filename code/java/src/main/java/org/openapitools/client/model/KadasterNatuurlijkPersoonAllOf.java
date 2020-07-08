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
import java.util.ArrayList;
import java.util.List;
import org.openapitools.client.model.Geboorte;
import org.openapitools.client.model.GeslachtEnum;
import org.openapitools.client.model.HeeftPartnerschap;
import org.openapitools.client.model.Naam;
import org.openapitools.client.model.Overlijden;
import org.openapitools.client.model.Waardelijst;

/**
 * Een bij het kadaster geregistreerde natuurlijke persoon die niet in de basisregistratie personen (BRP) is ingeschreven. Kadasternatuurlijkpersonen worden niet geactualiseerd.  Waardelijst in deze component : [beschikkingsbevoegdheid](http://www.kadaster.nl/schemas/waardelijsten/Beschikkingsbevoegdheid/) en [landWaarnaarVertrokken](http://www.kadaster.nl/schemas/waardelijsten/BRPLand/)
 */
@ApiModel(description = "Een bij het kadaster geregistreerde natuurlijke persoon die niet in de basisregistratie personen (BRP) is ingeschreven. Kadasternatuurlijkpersonen worden niet geactualiseerd.  Waardelijst in deze component : [beschikkingsbevoegdheid](http://www.kadaster.nl/schemas/waardelijsten/Beschikkingsbevoegdheid/) en [landWaarnaarVertrokken](http://www.kadaster.nl/schemas/waardelijsten/BRPLand/)")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2020-07-08T15:06:35.604+02:00[Europe/Amsterdam]")
public class KadasterNatuurlijkPersoonAllOf {
  public static final String SERIALIZED_NAME_GEHEIMHOUDING_PERSOONSGEGEVENS = "geheimhoudingPersoonsgegevens";
  @SerializedName(SERIALIZED_NAME_GEHEIMHOUDING_PERSOONSGEGEVENS)
  private Boolean geheimhoudingPersoonsgegevens;

  public static final String SERIALIZED_NAME_LAND_WAARNAAR_VERTROKKEN = "landWaarnaarVertrokken";
  @SerializedName(SERIALIZED_NAME_LAND_WAARNAAR_VERTROKKEN)
  private Waardelijst landWaarnaarVertrokken;

  public static final String SERIALIZED_NAME_GESLACHTSAANDUIDING = "geslachtsaanduiding";
  @SerializedName(SERIALIZED_NAME_GESLACHTSAANDUIDING)
  private GeslachtEnum geslachtsaanduiding;

  public static final String SERIALIZED_NAME_HEEFT_PARTNERSCHAP = "heeftPartnerschap";
  @SerializedName(SERIALIZED_NAME_HEEFT_PARTNERSCHAP)
  private List<HeeftPartnerschap> heeftPartnerschap = null;

  public static final String SERIALIZED_NAME_NAAM = "naam";
  @SerializedName(SERIALIZED_NAME_NAAM)
  private Naam naam;

  public static final String SERIALIZED_NAME_GEBOORTE = "geboorte";
  @SerializedName(SERIALIZED_NAME_GEBOORTE)
  private Geboorte geboorte;

  public static final String SERIALIZED_NAME_OVERLIJDEN = "overlijden";
  @SerializedName(SERIALIZED_NAME_OVERLIJDEN)
  private Overlijden overlijden;


  public KadasterNatuurlijkPersoonAllOf geheimhoudingPersoonsgegevens(Boolean geheimhoudingPersoonsgegevens) {
    
    this.geheimhoudingPersoonsgegevens = geheimhoudingPersoonsgegevens;
    return this;
  }

   /**
   * Aanduiding die aangeeft dat gegevens van een persoon wel of niet verstrekt mogen worden.
   * @return geheimhoudingPersoonsgegevens
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Aanduiding die aangeeft dat gegevens van een persoon wel of niet verstrekt mogen worden.")

  public Boolean getGeheimhoudingPersoonsgegevens() {
    return geheimhoudingPersoonsgegevens;
  }


  public void setGeheimhoudingPersoonsgegevens(Boolean geheimhoudingPersoonsgegevens) {
    this.geheimhoudingPersoonsgegevens = geheimhoudingPersoonsgegevens;
  }


  public KadasterNatuurlijkPersoonAllOf landWaarnaarVertrokken(Waardelijst landWaarnaarVertrokken) {
    
    this.landWaarnaarVertrokken = landWaarnaarVertrokken;
    return this;
  }

   /**
   * Get landWaarnaarVertrokken
   * @return landWaarnaarVertrokken
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Waardelijst getLandWaarnaarVertrokken() {
    return landWaarnaarVertrokken;
  }


  public void setLandWaarnaarVertrokken(Waardelijst landWaarnaarVertrokken) {
    this.landWaarnaarVertrokken = landWaarnaarVertrokken;
  }


  public KadasterNatuurlijkPersoonAllOf geslachtsaanduiding(GeslachtEnum geslachtsaanduiding) {
    
    this.geslachtsaanduiding = geslachtsaanduiding;
    return this;
  }

   /**
   * Get geslachtsaanduiding
   * @return geslachtsaanduiding
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public GeslachtEnum getGeslachtsaanduiding() {
    return geslachtsaanduiding;
  }


  public void setGeslachtsaanduiding(GeslachtEnum geslachtsaanduiding) {
    this.geslachtsaanduiding = geslachtsaanduiding;
  }


  public KadasterNatuurlijkPersoonAllOf heeftPartnerschap(List<HeeftPartnerschap> heeftPartnerschap) {
    
    this.heeftPartnerschap = heeftPartnerschap;
    return this;
  }

  public KadasterNatuurlijkPersoonAllOf addHeeftPartnerschapItem(HeeftPartnerschap heeftPartnerschapItem) {
    if (this.heeftPartnerschap == null) {
      this.heeftPartnerschap = new ArrayList<>();
    }
    this.heeftPartnerschap.add(heeftPartnerschapItem);
    return this;
  }

   /**
   * Get heeftPartnerschap
   * @return heeftPartnerschap
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<HeeftPartnerschap> getHeeftPartnerschap() {
    return heeftPartnerschap;
  }


  public void setHeeftPartnerschap(List<HeeftPartnerschap> heeftPartnerschap) {
    this.heeftPartnerschap = heeftPartnerschap;
  }


  public KadasterNatuurlijkPersoonAllOf naam(Naam naam) {
    
    this.naam = naam;
    return this;
  }

   /**
   * Get naam
   * @return naam
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Naam getNaam() {
    return naam;
  }


  public void setNaam(Naam naam) {
    this.naam = naam;
  }


  public KadasterNatuurlijkPersoonAllOf geboorte(Geboorte geboorte) {
    
    this.geboorte = geboorte;
    return this;
  }

   /**
   * Get geboorte
   * @return geboorte
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Geboorte getGeboorte() {
    return geboorte;
  }


  public void setGeboorte(Geboorte geboorte) {
    this.geboorte = geboorte;
  }


  public KadasterNatuurlijkPersoonAllOf overlijden(Overlijden overlijden) {
    
    this.overlijden = overlijden;
    return this;
  }

   /**
   * Get overlijden
   * @return overlijden
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Overlijden getOverlijden() {
    return overlijden;
  }


  public void setOverlijden(Overlijden overlijden) {
    this.overlijden = overlijden;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    KadasterNatuurlijkPersoonAllOf kadasterNatuurlijkPersoonAllOf = (KadasterNatuurlijkPersoonAllOf) o;
    return Objects.equals(this.geheimhoudingPersoonsgegevens, kadasterNatuurlijkPersoonAllOf.geheimhoudingPersoonsgegevens) &&
        Objects.equals(this.landWaarnaarVertrokken, kadasterNatuurlijkPersoonAllOf.landWaarnaarVertrokken) &&
        Objects.equals(this.geslachtsaanduiding, kadasterNatuurlijkPersoonAllOf.geslachtsaanduiding) &&
        Objects.equals(this.heeftPartnerschap, kadasterNatuurlijkPersoonAllOf.heeftPartnerschap) &&
        Objects.equals(this.naam, kadasterNatuurlijkPersoonAllOf.naam) &&
        Objects.equals(this.geboorte, kadasterNatuurlijkPersoonAllOf.geboorte) &&
        Objects.equals(this.overlijden, kadasterNatuurlijkPersoonAllOf.overlijden);
  }

  @Override
  public int hashCode() {
    return Objects.hash(geheimhoudingPersoonsgegevens, landWaarnaarVertrokken, geslachtsaanduiding, heeftPartnerschap, naam, geboorte, overlijden);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class KadasterNatuurlijkPersoonAllOf {\n");
    sb.append("    geheimhoudingPersoonsgegevens: ").append(toIndentedString(geheimhoudingPersoonsgegevens)).append("\n");
    sb.append("    landWaarnaarVertrokken: ").append(toIndentedString(landWaarnaarVertrokken)).append("\n");
    sb.append("    geslachtsaanduiding: ").append(toIndentedString(geslachtsaanduiding)).append("\n");
    sb.append("    heeftPartnerschap: ").append(toIndentedString(heeftPartnerschap)).append("\n");
    sb.append("    naam: ").append(toIndentedString(naam)).append("\n");
    sb.append("    geboorte: ").append(toIndentedString(geboorte)).append("\n");
    sb.append("    overlijden: ").append(toIndentedString(overlijden)).append("\n");
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

