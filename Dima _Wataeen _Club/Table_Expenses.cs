//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Dima__Wataeen__Club
{
    using System;
    using System.Collections.Generic;
    
    public partial class Table_Expenses
    {
        public decimal ID { get; set; }
        public Nullable<System.DateTime> Date_Exchange { get; set; }
        public Nullable<decimal> Amount { get; set; }
        public Nullable<System.DateTime> Approval_Date { get; set; }
        public string Who_Approved_ID { get; set; }
        public Nullable<bool> Approval { get; set; }
        public string Bill_PicUrl { get; set; }
        public string Note { get; set; }
    }
}