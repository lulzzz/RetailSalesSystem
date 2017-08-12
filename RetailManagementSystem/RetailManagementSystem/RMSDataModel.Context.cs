﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class RMSEntities : DbContext
    {
        public RMSEntities()
            : base("name=RMSEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<MeasuringUnit> MeasuringUnits { get; set; }
        public DbSet<PriceDetail> PriceDetails { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<User> Users { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Role> Roles { get; set; }
        public DbSet<PaymentDetail> PaymentDetails { get; set; }
        public DbSet<Customer> Customers { get; set; }
        public DbSet<SaleTemp> SaleTemps { get; set; }
        public DbSet<Sale> Sales { get; set; }
        public DbSet<SaleDetail> SaleDetails { get; set; }
        public DbSet<ReturnDamagedStock> ReturnDamagedStocks { get; set; }
        public DbSet<Stock> Stocks { get; set; }
        public DbSet<Purchase> Purchases { get; set; }
        public DbSet<Company> Companies { get; set; }
        public DbSet<PurchaseFreeDetail> PurchaseFreeDetails { get; set; }
        public DbSet<PurchasePaymentDetail> PurchasePaymentDetails { get; set; }
        public DbSet<PurchaseDetail> PurchaseDetails { get; set; }
        public DbSet<ApplicationDetail> ApplicationDetails { get; set; }
    }
}
