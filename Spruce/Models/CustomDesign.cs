//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Spruce.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class CustomDesign
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CustomDesign()
        {
            this.CustomOrders = new HashSet<CustomOrder>();
            this.MadeToMeasures = new HashSet<MadeToMeasure>();
        }
    
        public int Id { get; set; }
        public int FabricId { get; set; }
        public string ShirtStyle { get; set; }
        public string ThreadColor { get; set; }
        public string CuffStyle { get; set; }
        public string ButtonStyle { get; set; }
        public string BtnColor { get; set; }
        public string PocketStyle { get; set; }
        public string MadeToMeasureOrStandard { get; set; }
        public string CollorStyle { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CustomOrder> CustomOrders { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MadeToMeasure> MadeToMeasures { get; set; }
    }
}