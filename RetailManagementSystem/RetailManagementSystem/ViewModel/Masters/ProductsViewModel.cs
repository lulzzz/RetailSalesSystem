﻿using System.Windows.Input;
using System.Linq;
using System;
using System.Collections.Generic;
using RetailManagementSystem.Command;
using RetailManagementSystem.ViewModel.Base;
using System.Windows;
using RetailManagementSystem.Utilities;

namespace RetailManagementSystem.ViewModel.Masters
{
    class ProductsViewModel : ViewModelBase
    {
        Product _product;
        bool _isEditMode;
        IEnumerable<Product> _productsList;
        IEnumerable<Category> _productsCategory;
        IEnumerable<Company> _companiesList;
        IEnumerable<MeasuringUnit> _unitOfMeasureList;
        RMSEntities _rmsEntities;

        public ProductsViewModel()
        {
            _product = new Product();
            _rmsEntities = new RMSEntities();
            var cnt = _rmsEntities.Categories.Count();

            _productsCategory = _rmsEntities.Categories.Where(c => c.parentId == 3).ToList().OrderBy(p => p.name);
            _unitOfMeasureList = _rmsEntities.MeasuringUnits.ToList().OrderBy(p => p.unit);
            _companiesList = _rmsEntities.Companies.ToList().OrderBy(c => c.Name);

        }

        #region Public Variables

        public IEnumerable<Product> ProductsList
        {
            get
            {
                if(_productsList == null)
                    _productsList = _rmsEntities.Products.ToList();

                return _productsList;
            }

            private set
            {
                _productsList = value;
                RaisePropertyChanged("ProductsList");
            }
        }

        public IEnumerable<Company> Companies
        {
            get
            {
                if (_companiesList == null)
                    _companiesList = _rmsEntities.Companies.ToList();

                return _companiesList;
            }

            private set
            {
                _companiesList = value;
            }
        }

        public IEnumerable<MeasuringUnit> UnitOfMeasures
        {
            get
            {
                return _unitOfMeasureList;
            }

            set
            {
                _unitOfMeasureList = value;
            }
        }


        public Product SelectedProduct
        {
            get { return _product; }
            set
            {
                _product = value;
                RaisePropertyChanged("SelectedProduct");
            }
        }

        public Product DblClickSelectedProduct
        {
            get;set;
        }

        public string SearchText { get; set; }

        public IEnumerable<Category> ProductCategories
        {
            get
            {
                return _productsCategory;
            }

            set
            {
                _productsCategory = value;
            }
        }

        #endregion

        #region CloseWindow Command
        public RelayCommand<Window> _closeCommand { get; private set; }

        public ICommand CloseCommand
        {
            get
            {
                if (_closeCommand == null)
                {
                    _closeCommand = new RelayCommand<Window>((w) => CloseWindow(w));
                }

                return _closeCommand;
            }
        }

        private void CloseWindow(Window window)
        {
            if (window != null)
            {
                window.Close();
            }
        }
        #endregion

        #region Clear Command
        RelayCommand<object> _clearCommand = null;
        public ICommand ClearCommand
        {
            get
            {
                if (_clearCommand == null)
                {
                    _clearCommand = new RelayCommand<object>(
                        (p) =>
                        {
                            _product = new Product();
                            RaisePropertyChanged("SelectedProduct");

                            _isEditMode = false;
                            DblClickSelectedProduct = null;
                            ProductsList = _rmsEntities.Products.ToList();
                            SearchText = "";
                        }
                        );
                }

                return _clearCommand;
            }
        }        
        #endregion

        #region SaveCommand
        RelayCommand<object> _saveCommand = null;
        public ICommand SaveCommand
        {
            get
            {
                if (_saveCommand == null)
                {
                    _saveCommand = new RelayCommand<object>((p) => OnSave(p), (p) => CanSave(p));
                }

                return _saveCommand;
            }
        }        

        public bool CanSave(object parameter)
        {
            return !string.IsNullOrWhiteSpace(SelectedProduct.Name);                        
        }

        private void OnSave(object parameter)
        {
            if (!string.IsNullOrWhiteSpace(SelectedProduct.Name))
            {
                if (_isEditMode)
                {
                    var cust = _rmsEntities.Products.FirstOrDefault(c => c.Id == _product.Id);
                    cust = _product;
                }
                else
                    _rmsEntities.Products.Add(_product);

                _rmsEntities.SaveChanges();
                ClearCommand.Execute(null);
                RaisePropertyChanged("ProductsList");
            }
            else
                Utilities.Utility.ShowErrorBox("Product Name can't be empty");
        }

        #endregion


        #region DeleteCommand
        RelayCommand<object> _deleteCommand = null;
        public ICommand DeleteCommand
        {
            get
            {
                if (_deleteCommand == null)
                {
                    _deleteCommand = new RelayCommand<object>((p) => OnDelete(), (p) => CanDelete());
                }

                return _deleteCommand;
            }
        }

        public bool CanDelete()
        {
            return !string.IsNullOrWhiteSpace(SelectedProduct.Name) && SelectedProduct != null;
        }

        private void OnDelete()
        {
            var msgResult = Utility.ShowMessageBoxWithOptions("Do you want to delete the Product : " + _product.Name);
            if(msgResult != MessageBoxResult.Yes)
            {
                return;
            }

            var cust = _rmsEntities.Products.FirstOrDefault(c => c.Id == _product.Id);
            if(cust == null)
            {
                Utility.ShowMessageBoxWithOptions("Product : " + _product.Name + " doesn't exist");
                return;
            }

            _rmsEntities.Products.Remove(cust);
            _rmsEntities.SaveChanges();
            ClearCommand.Execute(null);
            RaisePropertyChanged("ProductsList");         
        }

        #endregion

        #region DoubleClickCommand
        RelayCommand<object> _doubleClickCommand = null;
        public ICommand DoubleClickCommand
        {
            get
            {
                if (_doubleClickCommand == null)
                {
                    _doubleClickCommand = new RelayCommand<object>
                        (
                            p =>
                            {
                                _isEditMode = true;
                                SelectedProduct = DblClickSelectedProduct;                      
                            }
                        );
                }

                return _doubleClickCommand;
            }
        }


        #endregion

        #region SearchCommand
        RelayCommand<object> _searchCommand = null;
        public ICommand SearchCommand
        {
            get
            {
                if (_searchCommand == null)
                {
                    _searchCommand = new RelayCommand<object>
                        (
                            p =>
                            {
                                if (string.IsNullOrWhiteSpace(SearchText)) return;
                                ProductsList = ProductsList.Where(c => c.Name.StartsWith(SearchText,StringComparison.InvariantCultureIgnoreCase));
                                
                            }
                        );
                }

                return _searchCommand;
            }
        }

       



        #endregion
    }
}
