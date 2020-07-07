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
import org.openapitools.client.model.DatumOnvolledig;
import org.openapitools.client.model.Waardelijst;

/**
 * Geboorte is een groep gegevens over de geboorte van een persoon.  Waardelijst in deze component : [land](http://www.kadaster.nl/schemas/waardelijsten/BRPLand/)
 */
@ApiModel(description = "Geboorte is een groep gegevens over de geboorte van een persoon.  Waardelijst in deze component : [land](http://www.kadaster.nl/schemas/waardelijsten/BRPLand/)")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2020-07-07T17:44:19.924+02:00[Europe/Amsterdam]")
public class Geboorte {
  public static final String SERIALIZED_NAME_PLAATS = "plaats";
  @SerializedName(SERIALIZED_NAME_PLAATS)
  private String plaats;

  public static final String SERIALIZED_NAME_DATUM = "datum";
  @SerializedName(SERIALIZED_NAME_DATUM)
  private DatumOnvolledig datum;

  public static final String SERIALIZED_NAME_LAND = "land";
  @SerializedName(SERIALIZED_NAME_LAND)
  private Waardelijst land;


  public Geboorte plaats(String plaats) {
    
    this.plaats = plaats;
    return this;
  }

   /**
   * De geboorteplaats is de plaats of een plaatsbepaling, die aangeeft waar de persoon is geboren
   * @return plaats
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "De geboorteplaats is de plaats of een plaatsbepaling, die aangeeft waar de persoon is geboren")

  public String getPlaats() {
    return plaats;
  }


  public void setPlaats(String plaats) {
    this.plaats = plaats;
  }


  public Geboorte datum(DatumOnvolledig datum) {
    
    this.datum = datum;
    return this;
  }

   /**
   * Get datum
   * @return datum
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public DatumOnvolledig getDatum() {
    return datum;
  }


  public void setDatum(DatumOnvolledig datum) {
    this.datum = datum;
  }


  public Geboorte land(Waardelijst land) {
    
    this.land = land;
    return this;
  }

   /**
   * Get land
   * @return land
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Waardelijst getLand() {
    return land;
  }


  public void setLand(Waardelijst land) {
    this.land = land;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Geboorte geboorte = (Geboorte) o;
    return Objects.equals(this.plaats, geboorte.plaats) &&
        Objects.equals(this.datum, geboorte.datum) &&
        Objects.equals(this.land, geboorte.land);
  }

  @Override
  public int hashCode() {
    return Objects.hash(plaats, datum, land);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Geboorte {\n");
    sb.append("    plaats: ").append(toIndentedString(plaats)).append("\n");
    sb.append("    datum: ").append(toIndentedString(datum)).append("\n");
    sb.append("    land: ").append(toIndentedString(land)).append("\n");
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

