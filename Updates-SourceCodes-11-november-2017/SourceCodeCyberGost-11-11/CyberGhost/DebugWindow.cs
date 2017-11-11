using CyberGhost.Communication;
using CyberGhost.Components;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows.Controls;
using Microsoft.Win32;
using MobileConcepts.Components.Log;
using MobileConcepts.Components.MCTreeList;
using MobileConcepts.Helpers;
using Newtonsoft.Json;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace CyberGhost
{
	public class DebugWindow : ModernWindow, IComponentConnector, IDisposable
	{
		internal static class SerializerSettings
		{
			public static JsonSerializerSettings GetDefaultSerializerSettings()
			{
				JsonSerializerSettings expr_05 = new JsonSerializerSettings();
				expr_05.set_NullValueHandling(1);
				expr_05.set_StringEscapeHandling(0);
				expr_05.set_Formatting(0);
				expr_05.set_ReferenceLoopHandling(1);
				return expr_05;
			}
		}

		private readonly SynchronizationContext _context;

		private DebugTreeModel _mTreeModel;

		internal ModernProgressRing LoadingRingForNodes;

		internal TreeList DebugGrid;

		private bool _contentLoaded;

		public DebugWindow()
		{
			this._context = SynchronizationContext.Current;
			this.InitializeComponent();
			if (ObjectHolder.CyberGhostCom != null)
			{
				ObjectHolder.CyberGhostCom.add_OnDebugDataAvailableEvent(new EventSender.DebugDataAvailableEvent(this.CyberGhostCom_OnDebugDataAvailableEvent));
			}
			ObjectHolder.DebugWindow = this;
			Task.Factory.StartNew(new Action(this.FillTreeListView));
		}

		public void Dispose()
		{
			ObjectHolder.DebugWindowIsOpen = false;
			if (ObjectHolder.CyberGhostCom != null)
			{
				ObjectHolder.CyberGhostCom.remove_OnDebugDataAvailableEvent(new EventSender.DebugDataAvailableEvent(this.CyberGhostCom_OnDebugDataAvailableEvent));
			}
		}

		private void FillTreeListView()
		{
			this._mTreeModel = new DebugTreeModel();
			string connectionLog = ObjectHolder.CyberGhostCom.GetConnectionLog();
			this._mTreeModel.DeserializeDebugData(connectionLog);
			this._context.Post(delegate(object o)
			{
				this.DebugGrid.Visibility = Visibility.Visible;
				this.LoadingRingForNodes.Visibility = Visibility.Collapsed;
				this.DebugGrid.set_Model(this._mTreeModel);
			}, null);
		}

		public void CreateNewSession()
		{
			this._mTreeModel.CreateNewSession(0);
		}

		private void CyberGhostCom_OnDebugDataAvailableEvent(object sender, string debugData)
		{
			try
			{
				this._context.Post(delegate(object o)
				{
					this._mTreeModel.DeserializeDebugData(debugData);
				}, null);
			}
			catch (Exception ex)
			{
				HelperFunctions.DebugLine(string.Format("{0}::{1} FAILED POST DEBUG DATA {2}", base.GetType().Name, MethodBase.GetCurrentMethod().Name, ex.Message));
			}
		}

		private void ClearLog_Click(object sender, RoutedEventArgs e)
		{
			ObjectHolder.CyberGhostCom.ClearDebugLog();
			this.FillTreeListView();
		}

		[AsyncStateMachine(typeof(DebugWindow.<SendToSupport_Click>d__8))]
		private void SendToSupport_Click(object sender, RoutedEventArgs e)
		{
			DebugWindow.<SendToSupport_Click>d__8 <SendToSupport_Click>d__;
			<SendToSupport_Click>d__.<>4__this = this;
			<SendToSupport_Click>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<SendToSupport_Click>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <SendToSupport_Click>d__.<>t__builder;
			<>t__builder.Start<DebugWindow.<SendToSupport_Click>d__8>(ref <SendToSupport_Click>d__);
		}

		private void Save_Click(object sender, RoutedEventArgs e)
		{
			SaveFileDialog saveFileDialog = new SaveFileDialog
			{
				Filter = CyberGhost.Translations.DebugWindow.SaveLogFilter,
				DefaultExt = ".json",
				FileName = "DebugLogJSON"
			};
			if (saveFileDialog.ShowDialog() == true)
			{
				this.SaveSilent(saveFileDialog.FileName);
			}
		}

		public void SaveSilent(string filename)
		{
			List<Dictionary<string, object>> logData = this._mTreeModel.GetLogData();
			if (logData.Count > 0)
			{
				string contents = JsonConvert.SerializeObject(logData, DebugWindow.SerializerSettings.GetDefaultSerializerSettings());
				if (File.Exists(filename))
				{
					File.Delete(filename);
				}
				File.WriteAllText(filename, contents, Encoding.Unicode);
			}
		}

		[AsyncStateMachine(typeof(DebugWindow.<ModernWindow_ContentRendered>d__11))]
		private void ModernWindow_ContentRendered(object sender, EventArgs e)
		{
			DebugWindow.<ModernWindow_ContentRendered>d__11 <ModernWindow_ContentRendered>d__;
			<ModernWindow_ContentRendered>d__.<>4__this = this;
			<ModernWindow_ContentRendered>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<ModernWindow_ContentRendered>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <ModernWindow_ContentRendered>d__.<>t__builder;
			<>t__builder.Start<DebugWindow.<ModernWindow_ContentRendered>d__11>(ref <ModernWindow_ContentRendered>d__);
		}

		private void CreateInitLogItem()
		{
			McInitLogItem expr_05 = new McInitLogItem();
			expr_05.get_User().set_UserId((ObjectHolder.CurrentUser == null) ? "-1" : ObjectHolder.CurrentUser.get_Id().ToString());
			expr_05.get_User().set_UserName((ObjectHolder.CurrentUser == null) ? "NOT LOGGED IN" : ObjectHolder.CurrentUser.get_UserName());
			McInitLogItem aEvent = expr_05;
			ObjectHolder.EventLogger.LogLocalEvent(aEvent);
		}

		private void DebugWindow_OnClosing(object sender, CancelEventArgs e)
		{
			ObjectHolder.DebugWindowIsOpen = false;
		}

		private void DebugWindow_OnSizeChanged(object sender, SizeChangedEventArgs e)
		{
			GridView gridView = this.DebugGrid.View as GridView;
			List<GridViewColumn> list = new List<GridViewColumn>();
			double num = 0.0;
			int num2 = 1;
			foreach (GridViewColumn current in gridView.Columns)
			{
				if (num2 == gridView.Columns.Count)
				{
					list.Add(current);
				}
				else
				{
					num += current.ActualWidth;
				}
				num2++;
			}
			foreach (GridViewColumn current2 in list)
			{
				double num3 = (this.DebugGrid.ActualWidth - num) / (double)list.Count;
				if (num3 >= 0.0)
				{
					current2.Width = num3 - 25.0;
				}
			}
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/debugwindow.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				((DebugWindow)target).Closing += new CancelEventHandler(this.DebugWindow_OnClosing);
				((DebugWindow)target).ContentRendered += new EventHandler(this.ModernWindow_ContentRendered);
				((DebugWindow)target).SizeChanged += new SizeChangedEventHandler(this.DebugWindow_OnSizeChanged);
				return;
			case 2:
				this.LoadingRingForNodes = (ModernProgressRing)target;
				return;
			case 3:
				this.DebugGrid = (TreeList)target;
				return;
			case 4:
				((Button)target).Click += new RoutedEventHandler(this.ClearLog_Click);
				return;
			case 5:
				((Button)target).Click += new RoutedEventHandler(this.SendToSupport_Click);
				return;
			case 6:
				((Button)target).Click += new RoutedEventHandler(this.Save_Click);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
