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
    /// KadasterNietNatuurlijkPersoon
    /// </summary>
    [DataContract]
    public partial class KadasterNietNatuurlijkPersoon :  IEquatable<KadasterNietNatuurlijkPersoon>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="KadasterNietNatuurlijkPersoon" /> class.
        /// </summary>
        /// <param name="identificatie">Unieke identificatie voor de persoon. Voor een Kadasterpersoon is dit de identificatie zoals die door het Kadaster is vastgesteld. Voor een ingeschreven natuurlijk persoon is dit het burgerservicenummer. Voor een ingeschreven niet-natuurlijk persoon is dit het RSIN. Of de waarde in identificatie een burgerservicenummer, een RSIN of een kadasterpersoonidentificatie is kan worden afgeleid uit het type persoon..</param>
        /// <param name="omschrijving">Voor mensen leesbare, herkenbare en identificerende omschrijving van de persoon (met bijvoorbeeld de naam)..</param>
        /// <param name="domein">Het domein waartoe de identificatie behoort..</param>
        /// <param name="indicatieNietToonbareDiakriet">indicatieNietToonbareDiakriet.</param>
        /// <param name="beschikkingsbevoegdheid">beschikkingsbevoegdheid.</param>
        /// <param name="woonadres">woonadres.</param>
        /// <param name="postadres">postadres.</param>
        /// <param name="kadastraalOnroerendeZaakIdentificaties">kadastraalOnroerendeZaakIdentificaties.</param>
        /// <param name="statutaireNaam">statutaireNaam.</param>
        /// <param name="statutaireZetel">statutaireZetel.</param>
        /// <param name="rechtsvorm">rechtsvorm.</param>
        /// <param name="kvkNummer">kvkNummer.</param>
        /// <param name="rsin">rsin.</param>
        public KadasterNietNatuurlijkPersoon(string identificatie = default(string), string omschrijving = default(string), string domein = default(string), bool indicatieNietToonbareDiakriet = default(bool), Waardelijst beschikkingsbevoegdheid = default(Waardelijst), Adres woonadres = default(Adres), Postadres postadres = default(Postadres), List<string> kadastraalOnroerendeZaakIdentificaties = default(List<string>), string statutaireNaam = default(string), string statutaireZetel = default(string), Waardelijst rechtsvorm = default(Waardelijst), string kvkNummer = default(string), string rsin = default(string))
        {
            this.Identificatie = identificatie;
            this.Omschrijving = omschrijving;
            this.Domein = domein;
            this.IndicatieNietToonbareDiakriet = indicatieNietToonbareDiakriet;
            this.Beschikkingsbevoegdheid = beschikkingsbevoegdheid;
            this.Woonadres = woonadres;
            this.Postadres = postadres;
            this.KadastraalOnroerendeZaakIdentificaties = kadastraalOnroerendeZaakIdentificaties;
            this.StatutaireNaam = statutaireNaam;
            this.StatutaireZetel = statutaireZetel;
            this.Rechtsvorm = rechtsvorm;
            this.KvkNummer = kvkNummer;
            this.Rsin = rsin;
        }
        
        /// <summary>
        /// Unieke identificatie voor de persoon. Voor een Kadasterpersoon is dit de identificatie zoals die door het Kadaster is vastgesteld. Voor een ingeschreven natuurlijk persoon is dit het burgerservicenummer. Voor een ingeschreven niet-natuurlijk persoon is dit het RSIN. Of de waarde in identificatie een burgerservicenummer, een RSIN of een kadasterpersoonidentificatie is kan worden afgeleid uit het type persoon.
        /// </summary>
        /// <value>Unieke identificatie voor de persoon. Voor een Kadasterpersoon is dit de identificatie zoals die door het Kadaster is vastgesteld. Voor een ingeschreven natuurlijk persoon is dit het burgerservicenummer. Voor een ingeschreven niet-natuurlijk persoon is dit het RSIN. Of de waarde in identificatie een burgerservicenummer, een RSIN of een kadasterpersoonidentificatie is kan worden afgeleid uit het type persoon.</value>
        [DataMember(Name="identificatie", EmitDefaultValue=false)]
        public string Identificatie { get; set; }

        /// <summary>
        /// Voor mensen leesbare, herkenbare en identificerende omschrijving van de persoon (met bijvoorbeeld de naam).
        /// </summary>
        /// <value>Voor mensen leesbare, herkenbare en identificerende omschrijving van de persoon (met bijvoorbeeld de naam).</value>
        [DataMember(Name="omschrijving", EmitDefaultValue=false)]
        public string Omschrijving { get; set; }

        /// <summary>
        /// Het domein waartoe de identificatie behoort.
        /// </summary>
        /// <value>Het domein waartoe de identificatie behoort.</value>
        [DataMember(Name="domein", EmitDefaultValue=false)]
        public string Domein { get; set; }

        /// <summary>
        /// Gets or Sets IndicatieNietToonbareDiakriet
        /// </summary>
        [DataMember(Name="indicatieNietToonbareDiakriet", EmitDefaultValue=false)]
        public bool IndicatieNietToonbareDiakriet { get; set; }

        /// <summary>
        /// Gets or Sets Beschikkingsbevoegdheid
        /// </summary>
        [DataMember(Name="beschikkingsbevoegdheid", EmitDefaultValue=false)]
        public Waardelijst Beschikkingsbevoegdheid { get; set; }

        /// <summary>
        /// Gets or Sets Woonadres
        /// </summary>
        [DataMember(Name="woonadres", EmitDefaultValue=false)]
        public Adres Woonadres { get; set; }

        /// <summary>
        /// Gets or Sets Postadres
        /// </summary>
        [DataMember(Name="postadres", EmitDefaultValue=false)]
        public Postadres Postadres { get; set; }

        /// <summary>
        /// Gets or Sets KadastraalOnroerendeZaakIdentificaties
        /// </summary>
        [DataMember(Name="kadastraalOnroerendeZaakIdentificaties", EmitDefaultValue=false)]
        public List<string> KadastraalOnroerendeZaakIdentificaties { get; set; }

        /// <summary>
        /// Gets or Sets StatutaireNaam
        /// </summary>
        [DataMember(Name="statutaireNaam", EmitDefaultValue=false)]
        public string StatutaireNaam { get; set; }

        /// <summary>
        /// Gets or Sets StatutaireZetel
        /// </summary>
        [DataMember(Name="statutaireZetel", EmitDefaultValue=false)]
        public string StatutaireZetel { get; set; }

        /// <summary>
        /// Gets or Sets Rechtsvorm
        /// </summary>
        [DataMember(Name="rechtsvorm", EmitDefaultValue=false)]
        public Waardelijst Rechtsvorm { get; set; }

        /// <summary>
        /// Gets or Sets KvkNummer
        /// </summary>
        [DataMember(Name="kvkNummer", EmitDefaultValue=false)]
        public string KvkNummer { get; set; }

        /// <summary>
        /// Gets or Sets Rsin
        /// </summary>
        [DataMember(Name="rsin", EmitDefaultValue=false)]
        public string Rsin { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class KadasterNietNatuurlijkPersoon {\n");
            sb.Append("  Identificatie: ").Append(Identificatie).Append("\n");
            sb.Append("  Omschrijving: ").Append(Omschrijving).Append("\n");
            sb.Append("  Domein: ").Append(Domein).Append("\n");
            sb.Append("  IndicatieNietToonbareDiakriet: ").Append(IndicatieNietToonbareDiakriet).Append("\n");
            sb.Append("  Beschikkingsbevoegdheid: ").Append(Beschikkingsbevoegdheid).Append("\n");
            sb.Append("  Woonadres: ").Append(Woonadres).Append("\n");
            sb.Append("  Postadres: ").Append(Postadres).Append("\n");
            sb.Append("  KadastraalOnroerendeZaakIdentificaties: ").Append(KadastraalOnroerendeZaakIdentificaties).Append("\n");
            sb.Append("  StatutaireNaam: ").Append(StatutaireNaam).Append("\n");
            sb.Append("  StatutaireZetel: ").Append(StatutaireZetel).Append("\n");
            sb.Append("  Rechtsvorm: ").Append(Rechtsvorm).Append("\n");
            sb.Append("  KvkNummer: ").Append(KvkNummer).Append("\n");
            sb.Append("  Rsin: ").Append(Rsin).Append("\n");
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
            return this.Equals(input as KadasterNietNatuurlijkPersoon);
        }

        /// <summary>
        /// Returns true if KadasterNietNatuurlijkPersoon instances are equal
        /// </summary>
        /// <param name="input">Instance of KadasterNietNatuurlijkPersoon to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(KadasterNietNatuurlijkPersoon input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Identificatie == input.Identificatie ||
                    (this.Identificatie != null &&
                    this.Identificatie.Equals(input.Identificatie))
                ) && 
                (
                    this.Omschrijving == input.Omschrijving ||
                    (this.Omschrijving != null &&
                    this.Omschrijving.Equals(input.Omschrijving))
                ) && 
                (
                    this.Domein == input.Domein ||
                    (this.Domein != null &&
                    this.Domein.Equals(input.Domein))
                ) && 
                (
                    this.IndicatieNietToonbareDiakriet == input.IndicatieNietToonbareDiakriet ||
                    this.IndicatieNietToonbareDiakriet.Equals(input.IndicatieNietToonbareDiakriet)
                ) && 
                (
                    this.Beschikkingsbevoegdheid == input.Beschikkingsbevoegdheid ||
                    (this.Beschikkingsbevoegdheid != null &&
                    this.Beschikkingsbevoegdheid.Equals(input.Beschikkingsbevoegdheid))
                ) && 
                (
                    this.Woonadres == input.Woonadres ||
                    (this.Woonadres != null &&
                    this.Woonadres.Equals(input.Woonadres))
                ) && 
                (
                    this.Postadres == input.Postadres ||
                    (this.Postadres != null &&
                    this.Postadres.Equals(input.Postadres))
                ) && 
                (
                    this.KadastraalOnroerendeZaakIdentificaties == input.KadastraalOnroerendeZaakIdentificaties ||
                    this.KadastraalOnroerendeZaakIdentificaties != null &&
                    input.KadastraalOnroerendeZaakIdentificaties != null &&
                    this.KadastraalOnroerendeZaakIdentificaties.SequenceEqual(input.KadastraalOnroerendeZaakIdentificaties)
                ) && 
                (
                    this.StatutaireNaam == input.StatutaireNaam ||
                    (this.StatutaireNaam != null &&
                    this.StatutaireNaam.Equals(input.StatutaireNaam))
                ) && 
                (
                    this.StatutaireZetel == input.StatutaireZetel ||
                    (this.StatutaireZetel != null &&
                    this.StatutaireZetel.Equals(input.StatutaireZetel))
                ) && 
                (
                    this.Rechtsvorm == input.Rechtsvorm ||
                    (this.Rechtsvorm != null &&
                    this.Rechtsvorm.Equals(input.Rechtsvorm))
                ) && 
                (
                    this.KvkNummer == input.KvkNummer ||
                    (this.KvkNummer != null &&
                    this.KvkNummer.Equals(input.KvkNummer))
                ) && 
                (
                    this.Rsin == input.Rsin ||
                    (this.Rsin != null &&
                    this.Rsin.Equals(input.Rsin))
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
                if (this.Identificatie != null)
                    hashCode = hashCode * 59 + this.Identificatie.GetHashCode();
                if (this.Omschrijving != null)
                    hashCode = hashCode * 59 + this.Omschrijving.GetHashCode();
                if (this.Domein != null)
                    hashCode = hashCode * 59 + this.Domein.GetHashCode();
                hashCode = hashCode * 59 + this.IndicatieNietToonbareDiakriet.GetHashCode();
                if (this.Beschikkingsbevoegdheid != null)
                    hashCode = hashCode * 59 + this.Beschikkingsbevoegdheid.GetHashCode();
                if (this.Woonadres != null)
                    hashCode = hashCode * 59 + this.Woonadres.GetHashCode();
                if (this.Postadres != null)
                    hashCode = hashCode * 59 + this.Postadres.GetHashCode();
                if (this.KadastraalOnroerendeZaakIdentificaties != null)
                    hashCode = hashCode * 59 + this.KadastraalOnroerendeZaakIdentificaties.GetHashCode();
                if (this.StatutaireNaam != null)
                    hashCode = hashCode * 59 + this.StatutaireNaam.GetHashCode();
                if (this.StatutaireZetel != null)
                    hashCode = hashCode * 59 + this.StatutaireZetel.GetHashCode();
                if (this.Rechtsvorm != null)
                    hashCode = hashCode * 59 + this.Rechtsvorm.GetHashCode();
                if (this.KvkNummer != null)
                    hashCode = hashCode * 59 + this.KvkNummer.GetHashCode();
                if (this.Rsin != null)
                    hashCode = hashCode * 59 + this.Rsin.GetHashCode();
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
