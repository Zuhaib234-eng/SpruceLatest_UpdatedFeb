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
    
    public partial class CustomOrder
    {
        public int Id { get; set; }
        public int CustomDesign { get; set; }
        public int UserId { get; set; }
        public System.DateTime Date { get; set; }
        public Nullable<bool> Status { get; set; }
        public Nullable<int> Total { get; set; }
        public Nullable<bool> AdminView { get; set; }
        public string secondAddress { get; set; }
    
        public virtual CustomDesign CustomDesign1 { get; set; }
        public virtual User User { get; set; }
    }
}