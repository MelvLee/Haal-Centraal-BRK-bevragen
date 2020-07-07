/* 
 * Kadastraal onroerende zaken
 *
 * D.m.v. deze toepassing worden meerdere, korte bevragingen op de Basis Registratie Kadaster beschikbaar gesteld. Deze toepassing betreft het verstrekken van Kadastrale Onroerende Zaak informatie.
 *
 * The version of the OpenAPI document: 1.0.0
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
    /// Verschuiving van het perceelnummer ten behoeve van visualisatie op een kaart. Dit voorkomt dat perceelnummers van kleine percelen elkaar overlappen.
    /// </summary>
    [DataContract]
    public partial class TypePerceelnummerVerschuiving :  IEquatable<TypePerceelnummerVerschuiving>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="TypePerceelnummerVerschuiving" /> class.
        /// </summary>
        /// <param name="deltax">Verschuiving op de X as..</param>
        /// <param name="deltay">Verschuiving op de Y as..</param>
        public TypePerceelnummerVerschuiving(decimal deltax = default(decimal), decimal deltay = default(decimal))
        {
            this.Deltax = deltax;
            this.Deltay = deltay;
        }
        
        /// <summary>
        /// Verschuiving op de X as.
        /// </summary>
        /// <value>Verschuiving op de X as.</value>
        [DataMember(Name="deltax", EmitDefaultValue=false)]
        public decimal Deltax { get; set; }

        /// <summary>
        /// Verschuiving op de Y as.
        /// </summary>
        /// <value>Verschuiving op de Y as.</value>
        [DataMember(Name="deltay", EmitDefaultValue=false)]
        public decimal Deltay { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class TypePerceelnummerVerschuiving {\n");
            sb.Append("  Deltax: ").Append(Deltax).Append("\n");
            sb.Append("  Deltay: ").Append(Deltay).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }
  
        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as TypePerceelnummerVerschuiving);
        }

        /// <summary>
        /// Returns true if TypePerceelnummerVerschuiving instances are equal
        /// </summary>
        /// <param name="input">Instance of TypePerceelnummerVerschuiving to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(TypePerceelnummerVerschuiving input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Deltax == input.Deltax ||
                    this.Deltax.Equals(input.Deltax)
                ) && 
                (
                    this.Deltay == input.Deltay ||
                    this.Deltay.Equals(input.Deltay)
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                hashCode = hashCode * 59 + this.Deltax.GetHashCode();
                hashCode = hashCode * 59 + this.Deltay.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
