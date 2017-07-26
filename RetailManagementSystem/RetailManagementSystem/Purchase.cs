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
    
    public partial class Purchase
    {
        public Purchase()
        {
            this.PurchaseDetails = new HashSet<PurchaseDetail>();
            this.PurchasePaymentDetails = new HashSet<PurchasePaymentDetail>();
        }
    
        public int BillId { get; set; }
        public Nullable<int> RunningBillNo { get; set; }
        public int CompanyId { get; set; }
        public string InvoiceNo { get; set; }
        public Nullable<decimal> Discount { get; set; }
        public Nullable<decimal> SpecialDiscount { get; set; }
        public Nullable<decimal> TransportCharges { get; set; }
        public Nullable<decimal> TotalBillAmount { get; set; }
        public Nullable<decimal> Tax { get; set; }
        public Nullable<System.DateTime> AddedOn { get; set; }
        public Nullable<System.DateTime> ModifiedOn { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
    
        public virtual Company Company { get; set; }
        public virtual ICollection<PurchaseDetail> PurchaseDetails { get; set; }
        public virtual ICollection<PurchasePaymentDetail> PurchasePaymentDetails { get; set; }
    }
}
