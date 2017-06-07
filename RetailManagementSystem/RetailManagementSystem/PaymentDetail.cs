//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace RetailManagementSystem
{
    using System;
    using System.Collections.Generic;
    
    public partial class PaymentDetail
    {
        public int Id { get; set; }
        public int BillId { get; set; }
        public int CustomerId { get; set; }
        public decimal AmountPaid { get; set; }
        public string PaymentMode { get; set; }
        public Nullable<System.DateTime> AddedOn { get; set; }
        public Nullable<System.DateTime> ModifiedOn { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
    
        public virtual Customer Customer { get; set; }
        public virtual Sale Sale { get; set; }
    }
}
