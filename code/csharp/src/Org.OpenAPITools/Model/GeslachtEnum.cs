/* 
 * Kadaster - BRK-Bevragen API
 *
 * D.m.v. deze toepassing worden meerdere, korte bevragingen op de Basis Registratie Kadaster beschikbaar gesteld. Deze toepassing betreft het verstrekken van Kadastrale Onroerende Zaak informatie.
 *
 * The version of the OpenAPI document: 1.1.0
 * 
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = Org.OpenAPITools.Client.OpenAPIDateConverter;

namespace Org.OpenAPITools.Model
{
    /// <summary>
    /// Een aanduiding die aangeeft dat de ingeschrevene een man of een vrouw is, of dat het geslacht (nog) onbekend is: * &#x60;man&#x60; - Man * &#x60;vrouw&#x60; - Vrouw * &#x60;onbekend&#x60; - Onbekend
    /// </summary>
    /// <value>Een aanduiding die aangeeft dat de ingeschrevene een man of een vrouw is, of dat het geslacht (nog) onbekend is: * &#x60;man&#x60; - Man * &#x60;vrouw&#x60; - Vrouw * &#x60;onbekend&#x60; - Onbekend</value>
    
    [JsonConverter(typeof(StringEnumConverter))]
    
    public enum GeslachtEnum
    {
        /// <summary>
        /// Enum Man for value: man
        /// </summary>
        [EnumMember(Value = "man")]
        Man = 1,

        /// <summary>
        /// Enum Vrouw for value: vrouw
        /// </summary>
        [EnumMember(Value = "vrouw")]
        Vrouw = 2,

        /// <summary>
        /// Enum Onbekend for value: onbekend
        /// </summary>
        [EnumMember(Value = "onbekend")]
        Onbekend = 3

    }

}
