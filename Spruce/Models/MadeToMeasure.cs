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
    
    public partial class MadeToMeasure
    {
        public int Id { get; set; }
        public string Collar { get; set; }
        public string Shoulder { get; set; }
        public string Chest { get; set; }
        public string Waist { get; set; }
        public string SleeveLength { get; set; }
        public string ShirtLength { get; set; }
        public int CustomOrderId { get; set; }
    
        public virtual CustomDesign CustomDesign { get; set; }
    }
}
