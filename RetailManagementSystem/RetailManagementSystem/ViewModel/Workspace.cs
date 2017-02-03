﻿using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Windows;
using System.Windows.Input;

using RetailManagementSystem.Command;
using RetailManagementSystem.ViewModel.Base;
using Microsoft.Win32;
//using SimpleControls.MRU.ViewModel;

namespace RetailManagementSystem.ViewModel
{
    class Workspace : ViewModelBase
    {
        ObservableCollection<DocumentViewModel> _documentViewModels = null;
        ReadOnlyObservableCollection<DocumentViewModel> _readOnlyDocView = null;
        public ReadOnlyObservableCollection<DocumentViewModel> DocumentViews
        {
            get
            {
                if (_readOnlyDocView == null)
                    _readOnlyDocView = new ReadOnlyObservableCollection<DocumentViewModel>(_documentViewModels);

                return _readOnlyDocView;
            }
        }

        protected Workspace()
        {
            _documentViewModels = new ObservableCollection<DocumentViewModel>();
        }

        static Workspace _this = new Workspace();

        public static Workspace This
        {
          get { return _this; }
        }
              
        #region OpenSalesEntryCommand
        RelayCommand<object> _openSalesEntryCommand = null;
        public ICommand OpenSalesEntryCommand
        {
          get
          {
            if (_openSalesEntryCommand == null)
            {
                _openSalesEntryCommand = new RelayCommand<object>((p) => OnOpenSalesEntryCommand(p), (p) => CanNew(p));
            }

            return _openSalesEntryCommand;
          }
        }

        private bool CanNew(object parameter) 
        {
          return true;
        }

        private void OnOpenSalesEntryCommand(object parameter)
        {
            _documentViewModels.Add(new SalesEntryViewModel());
            ActiveDocument = _documentViewModels.Last();
        }

        #endregion

        #region ActiveDocument

        private DocumentViewModel _activeDocument = null;
        public DocumentViewModel ActiveDocument
        {
          get { return _activeDocument; }
          set
          {
            if (_activeDocument != value)
            {
              _activeDocument = value;
              RaisePropertyChanged("ActiveDocument");
              if (ActiveDocumentChanged != null)
                ActiveDocumentChanged(this, EventArgs.Empty);
            }
          }
        }

        public event EventHandler ActiveDocumentChanged;

        #endregion

        internal void Close(DocumentViewModel doc)
        {
            {
                DocumentViewModel docToClose = doc as DocumentViewModel;

                if (docToClose != null)
                {
                    if (docToClose.IsDirty)
                    {
                        var res = MessageBox.Show("Unsaved changes..!! Do you want to save?", "Product Info here--", MessageBoxButton.YesNoCancel);
                        if (res == MessageBoxResult.Cancel)
                            return;

                        if (res == MessageBoxResult.Yes)
                        {
                            doc.SaveCommand.Execute(null);
                        }
                    }
                    _documentViewModels.Remove(docToClose);
                }
            }
        }

        /// <summary>
        /// Bind a window to some commands to be executed by the viewmodel.
        /// </summary>
        /// <param name="win"></param>
        public void InitCommandBinding(Window win)
        {
            win.CommandBindings.Add(new CommandBinding(OpenSalesEntryCommand,
            (s, e) =>
            {
                this.OnOpenSalesEntryCommand(null);
            }));
        }

            //  win.CommandBindings.Add(new CommandBinding(ApplicationCommands.Open,
            //  (s, e) =>
            //  {
            //    this.OnOpen(null);
            //  }));

            //  win.CommandBindings.Add(new CommandBinding(AppCommand.LoadFile,
            //  (s, e) =>
            //  {
            //    if (e == null)
            //      return;

            //    string filename = e.Parameter as string;

            //    if (filename == null)
            //      return;

            //    this.Open(filename);
            //  }));

            //  win.CommandBindings.Add(new CommandBinding(AppCommand.PinUnpin,
            //  (s, e) =>
            //  {
            //    this.PinCommand_Executed(e.Parameter, e);
            //  }));

            //  win.CommandBindings.Add(new CommandBinding(AppCommand.RemoveMruEntry,
            //  (s, e) =>
            //  {
            //    this.RemoveMRUEntry_Executed(e.Parameter, e);
            //  }));

            //  win.CommandBindings.Add(new CommandBinding(AppCommand.AddMruEntry,
            //  (s, e) =>
            //  {
            //    this.AddMRUEntry_Executed(e.Parameter, e);
            //  }));

            //  win.CommandBindings.Add(new CommandBinding(AppCommand.BrowseURL,
            //  (s, e) =>
            //  {
            //    Process.Start(new ProcessStartInfo("http://Edi.codeplex.com"));
            //  }));

            //  win.CommandBindings.Add(new CommandBinding(AppCommand.ShowStartPage,
            //  (s, e) =>
            //  {
            //    StartPageViewModel spage = this.GetStartPage(true);

            //    if (spage != null)
            //    {
            //      this.ActiveDocument = spage;
            //    }
            //  }));
            //}
        }
}