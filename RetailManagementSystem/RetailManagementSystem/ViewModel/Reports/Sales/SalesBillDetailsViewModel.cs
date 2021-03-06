﻿using Microsoft.Reporting.WinForms;
using MySql.Data.MySqlClient;
using RetailManagementSystem.Command;
using RetailManagementSystem.Model;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Windows;
using System.Windows.Input;

namespace RetailManagementSystem.ViewModel.Reports.Sales
{
    class SalesBillDetailsViewModel : ReportViewModel
    {
        private bool _showRestrictedCustomers;

        public int? RunningBillNo { get; set; }
        

        public SalesBillDetailsViewModel(bool showRestrictedCustomers) : base(false,showRestrictedCustomers,"Sales Bill Report")
        {

            _showRestrictedCustomers = showRestrictedCustomers;

            ReportPath = @"View\Reports\Sales\SalesBill.rdl";
            ShowReportPrintButton = false;
        }

        #region Print Command
        RelayCommand<Window> _printCommand = null;
        public ICommand PrintCommand
        {
            get
            {
                if (_printCommand == null)
                {
                    _printCommand = new RelayCommand<Window>((w) => OnPrint(w));
                }

                return _printCommand;
            }
        }

        public override void PrintReceipt(object p)
        {
            var dataTable = GetDataTable();
            var billSales = new Sale();
            var salesDetails = new List<SaleDetailExtn>();
            var customer = "";
            billSales.RunningBillNo = RunningBillNo.Value;
            

            foreach (var item in dataTable.Rows)
            {
                var itemArray = item as DataRow;
                customer =  itemArray.Field<string>("Customer");
                billSales.CustomerOrderNo = itemArray.Field<string>("CustomerOrderNo");
                billSales.TransportCharges = itemArray.IsNull("TransportCharges") ? 0.0M : itemArray.Field<decimal>("TransportCharges");
                billSales.Discount = itemArray.IsNull("Discount") ? 0.0M : itemArray.Field<decimal>("Discount");
                billSales.TotalAmount   = itemArray.Field<decimal>("TotalAmount");
                billSales.PaymentMode = itemArray.Field<string>("PaymentMode");
                salesDetails.Add(
                    new SaleDetailExtn()
                    {
                        AddedOn = itemArray.Field<System.DateTime>("AddedOn"),
                        SellingPrice = itemArray.Field<decimal>("SellingPrice"),
                        Discount = itemArray.IsNull("ItemDiscount") ? 0.0M : itemArray.Field<decimal>("ItemDiscount"),
                        ProductId = itemArray.Field<int>("ProductId"),
                        Qty  = itemArray.Field<decimal>("Qty"),
                        CostPrice = itemArray.Field<decimal>("Price")
                    }
                );
            }
            UserControls.SalesBillPrint sp = new UserControls.SalesBillPrint();
            sp.Print(customer, salesDetails, billSales, null, null,_showRestrictedCustomers);
            
        }

        private void OnPrint(Window window)
        {
            _rptDataSource[0] = new ReportDataSource();
            _rptDataSource[0].Name = "DataSet1";
            
            _rptDataSource[0].Value = GetDataTable();

            Workspace.This.OpenReport(this);
            CloseWindow(window);
        }

        private DataTable GetDataTable()
        {
            var query = "GetSalesDetailsForBillId";
            using (var conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["RMSConnectionString"].ConnectionString))
            {
                using (MySqlCommand cmd = new MySqlCommand())
                {
                    cmd.CommandText = query;
                    cmd.Connection = conn;
                    cmd.CommandType = CommandType.StoredProcedure;
                    var runningBillNoSqlParam = new MySqlParameter("runningBillNo", MySqlDbType.Int32);
                    runningBillNoSqlParam.Value = RunningBillNo;
                    cmd.Parameters.Add(runningBillNoSqlParam);

                    var categorySqlParam = new MySqlParameter("category", MySqlDbType.Int32);
                    categorySqlParam.Value = _categoryId;
                    cmd.Parameters.Add(categorySqlParam);

                    DataTable dt = new DataTable();
                    using (MySqlDataAdapter adpt = new MySqlDataAdapter(cmd))
                    {
                        adpt.Fill(dt);
                    }
                    return dt;
                }
            }
        }
        #endregion
    }
}
