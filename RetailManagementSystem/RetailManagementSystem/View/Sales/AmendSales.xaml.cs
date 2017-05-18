﻿using RetailManagementSystem.ViewModel.Sales;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace RetailManagementSystem.View.Sales
{    
    public partial class AmendSales : Window
    {
        AmendSalesViewModel amVM;

        public AmendSales()
        {
            InitializeComponent();
            amVM = new AmendSalesViewModel(false);
            this.DataContext = amVM;
        }

        private void btCancel_Click(object sender, RoutedEventArgs e)
        {
            //var result = Utilities.ErrorValidator.IsValid(this);
            this.Close();
        }
    }
}
