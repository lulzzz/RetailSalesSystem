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
    
    public partial class SaleTemp
    {
        public int Id { get; set; }
        public string Guid { get; set; }
        public Nullable<System.DateTime> SaleDate { get; set; }
        public Nullable<int> CustomerId { get; set; }
        public string PaymentMode { get; set; }
        public string OrderNo { get; set; }
        public Nullable<int> ProductId { get; set; }
        public Nullable<decimal> Quantity { get; set; }
        public Nullable<decimal> SellingPrice { get; set; }
        public Nullable<decimal> DiscountPercentage { get; set; }
        public Nullable<decimal> DiscountAmount { get; set; }
        public Nullable<decimal> Amount { get; set; }
        public Nullable<int> PriceId { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public Nullable<System.DateTime> ModifiedOn { get; set; }
    }
}
