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
    /// Waardelijst in deze component : [koppelingswijze](http://www.kadaster.nl/schemas/waardelijsten/Koppelingswijze)
    /// </summary>
    [DataContract]
    public partial class LocatieKadastraalObject :  IEquatable<LocatieKadastraalObject>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="LocatieKadastraalObject" /> class.
        /// </summary>
        /// <param name="nummeraanduidingIdentificatie">nummeraanduidingIdentificatie.</param>
        /// <param name="koppelingswijze">koppelingswijze.</param>
        public LocatieKadastraalObject(string nummeraanduidingIdentificatie = default(string), Waardelijst koppelingswijze = default(Waardelijst))
        {
            this.NummeraanduidingIdentificatie = nummeraanduidingIdentificatie;
            this.Koppelingswijze = koppelingswijze;
        }
        
        /// <summary>
        /// Gets or Sets NummeraanduidingIdentificatie
        /// </summary>
        [DataMember(Name="nummeraanduidingIdentificatie", EmitDefaultValue=false)]
        public string NummeraanduidingIdentificatie { get; set; }

        /// <summary>
        /// Gets or Sets Koppelingswijze
        /// </summary>
        [DataMember(Name="koppelingswijze", EmitDefaultValue=false)]
        public Waardelijst Koppelingswijze { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class LocatieKadastraalObject {\n");
            sb.Append("  NummeraanduidingIdentificatie: ").Append(NummeraanduidingIdentificatie).Append("\n");
            sb.Append("  Koppelingswijze: ").Append(Koppelingswijze).Append("\n");
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
            return this.Equals(input as LocatieKadastraalObject);
        }

        /// <summary>
        /// Returns true if LocatieKadastraalObject instances are equal
        /// </summary>
        /// <param name="input">Instance of LocatieKadastraalObject to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(LocatieKadastraalObject input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.NummeraanduidingIdentificatie == input.NummeraanduidingIdentificatie ||
                    (this.NummeraanduidingIdentificatie != null &&
                    this.NummeraanduidingIdentificatie.Equals(input.NummeraanduidingIdentificatie))
                ) && 
                (
                    this.Koppelingswijze == input.Koppelingswijze ||
                    (this.Koppelingswijze != null &&
                    this.Koppelingswijze.Equals(input.Koppelingswijze))
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
                if (this.NummeraanduidingIdentificatie != null)
                    hashCode = hashCode * 59 + this.NummeraanduidingIdentificatie.GetHashCode();
                if (this.Koppelingswijze != null)
                    hashCode = hashCode * 59 + this.Koppelingswijze.GetHashCode();
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
