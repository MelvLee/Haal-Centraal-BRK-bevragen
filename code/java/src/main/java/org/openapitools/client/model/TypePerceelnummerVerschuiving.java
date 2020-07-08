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

/**
 * Verschuiving van het perceelnummer ten behoeve van visualisatie op een kaart. Dit voorkomt dat perceelnummers van kleine percelen elkaar overlappen.
 */
@ApiModel(description = "Verschuiving van het perceelnummer ten behoeve van visualisatie op een kaart. Dit voorkomt dat perceelnummers van kleine percelen elkaar overlappen.")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2020-07-08T15:06:35.604+02:00[Europe/Amsterdam]")
public class TypePerceelnummerVerschuiving {
  public static final String SERIALIZED_NAME_DELTAX = "deltax";
  @SerializedName(SERIALIZED_NAME_DELTAX)
  private BigDecimal deltax;

  public static final String SERIALIZED_NAME_DELTAY = "deltay";
  @SerializedName(SERIALIZED_NAME_DELTAY)
  private BigDecimal deltay;


  public TypePerceelnummerVerschuiving deltax(BigDecimal deltax) {
    
    this.deltax = deltax;
    return this;
  }

   /**
   * Verschuiving op de X as.
   * @return deltax
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Verschuiving op de X as.")

  public BigDecimal getDeltax() {
    return deltax;
  }


  public void setDeltax(BigDecimal deltax) {
    this.deltax = deltax;
  }


  public TypePerceelnummerVerschuiving deltay(BigDecimal deltay) {
    
    this.deltay = deltay;
    return this;
  }

   /**
   * Verschuiving op de Y as.
   * @return deltay
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Verschuiving op de Y as.")

  public BigDecimal getDeltay() {
    return deltay;
  }


  public void setDeltay(BigDecimal deltay) {
    this.deltay = deltay;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    TypePerceelnummerVerschuiving typePerceelnummerVerschuiving = (TypePerceelnummerVerschuiving) o;
    return Objects.equals(this.deltax, typePerceelnummerVerschuiving.deltax) &&
        Objects.equals(this.deltay, typePerceelnummerVerschuiving.deltay);
  }

  @Override
  public int hashCode() {
    return Objects.hash(deltax, deltay);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class TypePerceelnummerVerschuiving {\n");
    sb.append("    deltax: ").append(toIndentedString(deltax)).append("\n");
    sb.append("    deltay: ").append(toIndentedString(deltay)).append("\n");
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

