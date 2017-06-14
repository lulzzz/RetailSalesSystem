﻿using System;
using System.ComponentModel;

namespace RetailManagementSystem.Model
{
    class PurchaseDetailExtn : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        private int _billId;
        private int _productId;
        private int _priceId;
        private decimal? _purchasePrice;
        private decimal? _qty;
        private decimal? _discount;
        private DateTime? _addedOn;
        private DateTime? _modifiedOn;
        private int? _updatedBy;
        //used while edit
        private decimal? _originalQty;

        public int BillId
        {
            get
            {
                return _billId;
            }

            set
            {
                if (_billId == value)
                {
                    return;
                }
                _billId = value;
                OnPropertyChanged("BillId");
            }
        }

        public int ProductId
        {

            get
            {
                return _productId;
            }

            set
            {
                if (_productId == value)
                {
                    return;
                }
                _productId = value;
                OnPropertyChanged("ProductId");
            }
        }

        public int PriceId
        {

            get
            {
                return _priceId;
            }

            set
            {
                if (_priceId == value)
                {
                    return;
                }
                _priceId = value;
                OnPropertyChanged("PriceId");
            }
        }

        public decimal? PurchasePrice
        {

            get
            {
                return _purchasePrice;
            }

            set
            {
                if (Nullable.Equals<decimal>(_purchasePrice, value))
                {
                    return;
                }
                _purchasePrice = value;
                this.OnPropertyChanged("PurchasePrice");
            }
        }

        public decimal? Qty
        {

            get
            {
                return _qty;
            }

            set
            {
                if (Nullable.Equals<decimal>(_qty, value))
                {
                    return;
                }
                _qty = value;
                OnPropertyChanged("Qty");
            }
        }

        public decimal? OriginalQty
        {

            get
            {
                return _originalQty;
            }

            set
            {
                if (Nullable.Equals<decimal>(_originalQty, value))
                {
                    return;
                }
                _originalQty = value;
                OnPropertyChanged("OriginalQty");
            }
        }

        public decimal? Discount
        {

            get
            {
                return _discount;
            }

            set
            {
                if (Nullable.Equals<decimal>(_discount, value))
                {
                    return;
                }
                _discount = value;
                OnPropertyChanged("Discount");
            }
        }

        public DateTime? AddedOn
        {

            get
            {
                return _addedOn;
            }

            set
            {
                if (Nullable.Equals<DateTime>(_addedOn, value))
                {
                    return;
                }
                _addedOn = value;
                OnPropertyChanged("AddedOn");
            }
        }

        public DateTime? ModifiedOn
        {

            get
            {
                return _modifiedOn;
            }

            set
            {
                if (Nullable.Equals<DateTime>(_modifiedOn, value))
                {
                    return;
                }
                _modifiedOn = value;
                OnPropertyChanged("ModifiedOn");
            }
        }

        public int? UpdatedBy
        {

            get
            {
                return _updatedBy;
            }

            set
            {
                if (Nullable.Equals<int>(_updatedBy, value))
                {
                    return;
                }
                _updatedBy = value;
                OnPropertyChanged("UpdatedBy");
            }
        }

        public virtual Product Product { get; set; }        

        public virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            bool flag = propertyChanged != null;
            if (flag)
            {
                propertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }

        public decimal CostPrice { get; set; }
        public decimal? Amount { get; set; }
        public decimal DiscountPercentage { get; set; }
        public decimal DiscountAmount { get; set; }
        public decimal AvailableStock { get; set; }
    }
}
