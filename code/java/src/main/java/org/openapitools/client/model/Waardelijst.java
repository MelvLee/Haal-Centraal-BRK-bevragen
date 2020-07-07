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

/**
 * Waardelijst is een samengesteld datatype voor het weergeven van een gegeven binnen een extern beheerde referentielijst. De waardelijsten zijn beschikbaargesteld op [deze locatie](http://www.kadaster.nl/schemas/waardelijsten/)
 */
@ApiModel(description = "Waardelijst is een samengesteld datatype voor het weergeven van een gegeven binnen een extern beheerde referentielijst. De waardelijsten zijn beschikbaargesteld op [deze locatie](http://www.kadaster.nl/schemas/waardelijsten/)")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2020-07-07T17:44:19.924+02:00[Europe/Amsterdam]")
public class Waardelijst {
  public static final String SERIALIZED_NAME_CODE = "code";
  @SerializedName(SERIALIZED_NAME_CODE)
  private String code;

  public static final String SERIALIZED_NAME_WAARDE = "waarde";
  @SerializedName(SERIALIZED_NAME_WAARDE)
  private String waarde;


  public Waardelijst code(String code) {
    
    this.code = code;
    return this;
  }

   /**
   * Get code
   * @return code
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getCode() {
    return code;
  }


  public void setCode(String code) {
    this.code = code;
  }


  public Waardelijst waarde(String waarde) {
    
    this.waarde = waarde;
    return this;
  }

   /**
   * Get waarde
   * @return waarde
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getWaarde() {
    return waarde;
  }


  public void setWaarde(String waarde) {
    this.waarde = waarde;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Waardelijst waardelijst = (Waardelijst) o;
    return Objects.equals(this.code, waardelijst.code) &&
        Objects.equals(this.waarde, waardelijst.waarde);
  }

  @Override
  public int hashCode() {
    return Objects.hash(code, waarde);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Waardelijst {\n");
    sb.append("    code: ").append(toIndentedString(code)).append("\n");
    sb.append("    waarde: ").append(toIndentedString(waarde)).append("\n");
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

