using Avira.Messaging;
using Newtonsoft.Json.Linq;
using System;
using System.Runtime.CompilerServices;
using System.Windows.Forms;

namespace Avira.WebAppHost
{
	public class ContextMenuService
	{
		private readonly ContextMenuStrip contextMenu;

		private readonly object contextMenuLock = new object();

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<EventArgs<string>> ItemClicked;

		public ContextMenuService(ContextMenuStrip contextMenu)
		{
			this.contextMenu = contextMenu;
		}

		public void Add(JObject menuInfo)
		{
			object obj = this.contextMenuLock;
			lock (obj)
			{
				ToolStripMenuItem toolStripMenuItem = new ToolStripMenuItem
				{
					Name = menuInfo.get_Item("name").ToString(),
					Text = menuInfo.get_Item("text").ToString()
				};
				toolStripMenuItem.Click += delegate(object sender, EventArgs args)
				{
					EventHandler<EventArgs<string>> expr_06 = this.ItemClicked;
					if (expr_06 == null)
					{
						return;
					}
					expr_06(sender, new EventArgs<string>(((ToolStripMenuItem)sender).Name));
				};
				if (menuInfo.get_Item("enabled") != null)
				{
					toolStripMenuItem.Enabled = (bool)menuInfo.get_Item("enabled");
				}
				if (menuInfo.get_Item("index") != null && this.contextMenu.Items.Count >= (int)menuInfo.get_Item("index"))
				{
					this.contextMenu.Items.Insert((int)menuInfo.get_Item("index"), toolStripMenuItem);
				}
				else
				{
					this.contextMenu.Items.Add(toolStripMenuItem);
				}
			}
		}

		public void Set(JObject menuInfo)
		{
			ToolStripItem[] array = this.contextMenu.Items.Find(menuInfo.get_Item("name").ToString(), false);
			if (array.Length == 0)
			{
				return;
			}
			ToolStripItem toolStripItem = array[0];
			if (menuInfo.get_Item("text") != null)
			{
				toolStripItem.Text = menuInfo.get_Item("text").ToString();
			}
			if (menuInfo.get_Item("enabled") != null)
			{
				toolStripItem.Enabled = (bool)menuInfo.get_Item("enabled");
			}
		}
	}
}
