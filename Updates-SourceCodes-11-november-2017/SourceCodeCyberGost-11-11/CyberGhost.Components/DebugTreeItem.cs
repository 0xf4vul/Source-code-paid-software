using MobileConcepts.Components.Log;
using System;
using System.Collections.ObjectModel;

namespace CyberGhost.Components
{
	public class DebugTreeItem
	{
		public string Name
		{
			get;
			set;
		}

		public string NodeName
		{
			get;
			set;
		}

		public string Value
		{
			get;
			set;
		}

		public string DateTime
		{
			get;
			set;
		}

		public string LogCategory
		{
			get;
			set;
		}

		public bool Highlight
		{
			get;
			set;
		}

		public McBaseLogItem Item
		{
			get;
			set;
		}

		public ObservableCollection<DebugTreeItem> Childs
		{
			get;
			set;
		}

		public DebugTreeItem()
		{
			this.Name = null;
			this.Value = null;
			this.DateTime = null;
			this.LogCategory = null;
			this.NodeName = null;
			this.Childs = new ObservableCollection<DebugTreeItem>();
		}
	}
}
