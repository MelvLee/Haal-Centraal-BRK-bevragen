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
import org.openapitools.client.model.Adres;
import org.openapitools.client.model.KadasterPersoonAllOf;
import org.openapitools.client.model.PersoonBasis;
import org.openapitools.client.model.Postadres;
import org.openapitools.client.model.Waardelijst;

/**
 * KadasterPersoon
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2020-07-08T15:06:35.604+02:00[Europe/Amsterdam]")
public class KadasterPersoon {
  public static final String SERIALIZED_NAME_IDENTIFICATIE = "identificatie";
  @SerializedName(SERIALIZED_NAME_IDENTIFICATIE)
  private String identificatie;

  public static final String SERIALIZED_NAME_OMSCHRIJVING = "omschrijving";
  @SerializedName(SERIALIZED_NAME_OMSCHRIJVING)
  private String omschrijving;

  public static final String SERIALIZED_NAME_DOMEIN = "domein";
  @SerializedName(SERIALIZED_NAME_DOMEIN)
  private String domein;

  public static final String SERIALIZED_NAME_INDICATIE_NIET_TOONBARE_DIAKRIET = "indicatieNietToonbareDiakriet";
  @SerializedName(SERIALIZED_NAME_INDICATIE_NIET_TOONBARE_DIAKRIET)
  private Boolean indicatieNietToonbareDiakriet;

  public static final String SERIALIZED_NAME_BESCHIKKINGSBEVOEGDHEID = "beschikkingsbevoegdheid";
  @SerializedName(SERIALIZED_NAME_BESCHIKKINGSBEVOEGDHEID)
  private Waardelijst beschikkingsbevoegdheid;

  public static final String SERIALIZED_NAME_WOONADRES = "woonadres";
  @SerializedName(SERIALIZED_NAME_WOONADRES)
  private Adres woonadres;

  public static final String SERIALIZED_NAME_POSTADRES = "postadres";
  @SerializedName(SERIALIZED_NAME_POSTADRES)
  private Postadres postadres = null;

  public static final String SERIALIZED_NAME_KADASTRAAL_ONROERENDE_ZAAK_IDENTIFICATIES = "kadastraalOnroerendeZaakIdentificaties";
  @SerializedName(SERIALIZED_NAME_KADASTRAAL_ONROERENDE_ZAAK_IDENTIFICATIES)
  private List<String> kadastraalOnroerendeZaakIdentificaties = null;


  public KadasterPersoon identificatie(String identificatie) {
    
    this.identificatie = identificatie;
    return this;
  }

   /**
   * Unieke identificatie voor de persoon. Voor een Kadasterpersoon is dit de identificatie zoals die door het Kadaster is vastgesteld. Voor een ingeschreven natuurlijk persoon is dit het burgerservicenummer. Voor een ingeschreven niet-natuurlijk persoon is dit het RSIN. Of de waarde in identificatie een burgerservicenummer, een RSIN of een kadasterpersoonidentificatie is kan worden afgeleid uit het type persoon.
   * @return identificatie
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Unieke identificatie voor de persoon. Voor een Kadasterpersoon is dit de identificatie zoals die door het Kadaster is vastgesteld. Voor een ingeschreven natuurlijk persoon is dit het burgerservicenummer. Voor een ingeschreven niet-natuurlijk persoon is dit het RSIN. Of de waarde in identificatie een burgerservicenummer, een RSIN of een kadasterpersoonidentificatie is kan worden afgeleid uit het type persoon.")

  public String getIdentificatie() {
    return identificatie;
  }


  public void setIdentificatie(String identificatie) {
    this.identificatie = identificatie;
  }


  public KadasterPersoon omschrijving(String omschrijving) {
    
    this.omschrijving = omschrijving;
    return this;
  }

   /**
   * Voor mensen leesbare, herkenbare en identificerende omschrijving van de persoon (met bijvoorbeeld de naam).
   * @return omschrijving
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Voor mensen leesbare, herkenbare en identificerende omschrijving van de persoon (met bijvoorbeeld de naam).")

  public String getOmschrijving() {
    return omschrijving;
  }


  public void setOmschrijving(String omschrijving) {
    this.omschrijving = omschrijving;
  }


  public KadasterPersoon domein(String domein) {
    
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


  public KadasterPersoon indicatieNietToonbareDiakriet(Boolean indicatieNietToonbareDiakriet) {
    
    this.indicatieNietToonbareDiakriet = indicatieNietToonbareDiakriet;
    return this;
  }

   /**
   * Get indicatieNietToonbareDiakriet
   * @return indicatieNietToonbareDiakriet
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Boolean getIndicatieNietToonbareDiakriet() {
    return indicatieNietToonbareDiakriet;
  }


  public void setIndicatieNietToonbareDiakriet(Boolean indicatieNietToonbareDiakriet) {
    this.indicatieNietToonbareDiakriet = indicatieNietToonbareDiakriet;
  }


  public KadasterPersoon beschikkingsbevoegdheid(Waardelijst beschikkingsbevoegdheid) {
    
    this.beschikkingsbevoegdheid = beschikkingsbevoegdheid;
    return this;
  }

   /**
   * Get beschikkingsbevoegdheid
   * @return beschikkingsbevoegdheid
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Waardelijst getBeschikkingsbevoegdheid() {
    return beschikkingsbevoegdheid;
  }


  public void setBeschikkingsbevoegdheid(Waardelijst beschikkingsbevoegdheid) {
    this.beschikkingsbevoegdheid = beschikkingsbevoegdheid;
  }


  public KadasterPersoon woonadres(Adres woonadres) {
    
    this.woonadres = woonadres;
    return this;
  }

   /**
   * Get woonadres
   * @return woonadres
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Adres getWoonadres() {
    return woonadres;
  }


  public void setWoonadres(Adres woonadres) {
    this.woonadres = woonadres;
  }


  public KadasterPersoon postadres(Postadres postadres) {
    
    this.postadres = postadres;
    return this;
  }

   /**
   * Get postadres
   * @return postadres
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Postadres getPostadres() {
    return postadres;
  }


  public void setPostadres(Postadres postadres) {
    this.postadres = postadres;
  }


  public KadasterPersoon kadastraalOnroerendeZaakIdentificaties(List<String> kadastraalOnroerendeZaakIdentificaties) {
    
    this.kadastraalOnroerendeZaakIdentificaties = kadastraalOnroerendeZaakIdentificaties;
    return this;
  }

  public KadasterPersoon addKadastraalOnroerendeZaakIdentificatiesItem(String kadastraalOnroerendeZaakIdentificatiesItem) {
    if (this.kadastraalOnroerendeZaakIdentificaties == null) {
      this.kadastraalOnroerendeZaakIdentificaties = new ArrayList<>();
    }
    this.kadastraalOnroerendeZaakIdentificaties.add(kadastraalOnroerendeZaakIdentificatiesItem);
    return this;
  }

   /**
   * Get kadastraalOnroerendeZaakIdentificaties
   * @return kadastraalOnroerendeZaakIdentificaties
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<String> getKadastraalOnroerendeZaakIdentificaties() {
    return kadastraalOnroerendeZaakIdentificaties;
  }


  public void setKadastraalOnroerendeZaakIdentificaties(List<String> kadastraalOnroerendeZaakIdentificaties) {
    this.kadastraalOnroerendeZaakIdentificaties = kadastraalOnroerendeZaakIdentificaties;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    KadasterPersoon kadasterPersoon = (KadasterPersoon) o;
    return Objects.equals(this.identificatie, kadasterPersoon.identificatie) &&
        Objects.equals(this.omschrijving, kadasterPersoon.omschrijving) &&
        Objects.equals(this.domein, kadasterPersoon.domein) &&
        Objects.equals(this.indicatieNietToonbareDiakriet, kadasterPersoon.indicatieNietToonbareDiakriet) &&
        Objects.equals(this.beschikkingsbevoegdheid, kadasterPersoon.beschikkingsbevoegdheid) &&
        Objects.equals(this.woonadres, kadasterPersoon.woonadres) &&
        Objects.equals(this.postadres, kadasterPersoon.postadres) &&
        Objects.equals(this.kadastraalOnroerendeZaakIdentificaties, kadasterPersoon.kadastraalOnroerendeZaakIdentificaties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(identificatie, omschrijving, domein, indicatieNietToonbareDiakriet, beschikkingsbevoegdheid, woonadres, postadres, kadastraalOnroerendeZaakIdentificaties);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class KadasterPersoon {\n");
    sb.append("    identificatie: ").append(toIndentedString(identificatie)).append("\n");
    sb.append("    omschrijving: ").append(toIndentedString(omschrijving)).append("\n");
    sb.append("    domein: ").append(toIndentedString(domein)).append("\n");
    sb.append("    indicatieNietToonbareDiakriet: ").append(toIndentedString(indicatieNietToonbareDiakriet)).append("\n");
    sb.append("    beschikkingsbevoegdheid: ").append(toIndentedString(beschikkingsbevoegdheid)).append("\n");
    sb.append("    woonadres: ").append(toIndentedString(woonadres)).append("\n");
    sb.append("    postadres: ").append(toIndentedString(postadres)).append("\n");
    sb.append("    kadastraalOnroerendeZaakIdentificaties: ").append(toIndentedString(kadastraalOnroerendeZaakIdentificaties)).append("\n");
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

