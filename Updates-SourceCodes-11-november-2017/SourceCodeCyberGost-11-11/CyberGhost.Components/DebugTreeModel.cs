using MobileConcepts.Components.Log;
using MobileConcepts.Components.MCTreeList;
using MobileConcepts.Helpers;
using Newtonsoft.Json;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Globalization;
using System.Linq;
using System.Reflection;

namespace CyberGhost.Components
{
	internal class DebugTreeModel : ITreeModel
	{
		private readonly DebugTreeItem _exeptionNode;

		private readonly ObservableCollection<DebugTreeItem> _mLogData;

		private readonly DebugTreeItem _sessionsNode;

		private readonly DebugTreeItem _systemInfoNode;

		private DebugTreeItem _currentSession;

		private DebugTreeItem _mGuiNode;

		private DebugTreeItem _mOpenVpnNode;

		private DebugTreeItem _mServiceNode;

		private readonly List<string> _mImportantVerbs;

		public DebugTreeModel()
		{
			this._mLogData = new ObservableCollection<DebugTreeItem>();
			this._exeptionNode = new DebugTreeItem
			{
				Name = "Exception",
				NodeName = "Exception"
			};
			this._systemInfoNode = new DebugTreeItem
			{
				Name = "SystemInfo",
				NodeName = "SystemInfo"
			};
			this._sessionsNode = new DebugTreeItem
			{
				Name = "Sessions",
				NodeName = "Sessions"
			};
			this._mLogData.Add(this._exeptionNode);
			this._mLogData.Add(this._systemInfoNode);
			this._mLogData.Add(this._sessionsNode);
			this._mImportantVerbs = new List<string>
			{
				"err",
				"warning:",
				"sigterm",
				"exiting",
				"restart",
				"timeout",
				"completed",
				"link remote",
				"failed"
			};
		}

		public IEnumerable GetChildren(object parent)
		{
			if (parent == null)
			{
				return this._mLogData;
			}
			return ((DebugTreeItem)parent).Childs;
		}

		public void RenderChildren(object parent)
		{
		}

		public bool HasChildren(object parent)
		{
			return ((DebugTreeItem)parent).Childs.Count > 0;
		}

		public void FilterChildren(string filter)
		{
		}

		private bool ContainsImportantVerb(string aString)
		{
			return this._mImportantVerbs.Any(new Func<string, bool>(aString.ToLower().Contains));
		}

		public void DeserializeDebugData(string data)
		{
			if (string.IsNullOrEmpty(data))
			{
				return;
			}
			McBaseLogItem mcBaseLogItem = (McBaseLogItem)JsonConvert.DeserializeObject<McSerializedItem>(data).GetItem();
			if (mcBaseLogItem.get_Name() == "Init")
			{
				return;
			}
			DebugTreeItem debugTreeItem = new DebugTreeItem
			{
				Name = mcBaseLogItem.get_Name(),
				Value = mcBaseLogItem.ToString(),
				DateTime = mcBaseLogItem.get_DateTime().ToString(CultureInfo.InvariantCulture),
				LogCategory = mcBaseLogItem.get_DebugLevel().ToString(),
				Item = mcBaseLogItem
			};
			if (mcBaseLogItem.get_Name().StartsWith("Sessions"))
			{
				this.ResolveSession((McSessionLogItems)mcBaseLogItem);
				return;
			}
			if (mcBaseLogItem.get_Name() == "Exception")
			{
				debugTreeItem.NodeName = "Exception";
				this.CreateChildNode(this._exeptionNode, debugTreeItem, mcBaseLogItem);
				return;
			}
			if (mcBaseLogItem.get_Name().StartsWith("System"))
			{
				debugTreeItem.NodeName = "System";
				this.CreateChildNode(this._systemInfoNode, debugTreeItem, mcBaseLogItem);
				return;
			}
			if (mcBaseLogItem.get_Name().StartsWith("OpenVPNLog"))
			{
				debugTreeItem.NodeName = "OpenVPNLog";
				string debugData = ((McOpenVpnLogItem)mcBaseLogItem).get_DebugData();
				debugTreeItem.Highlight = this.ContainsImportantVerb(debugData);
				if (this._currentSession == null)
				{
					this._currentSession = this.CreateNewSession(0);
				}
				this.CreateChildNode(this._mOpenVpnNode, debugTreeItem, mcBaseLogItem);
				return;
			}
			if (mcBaseLogItem.get_Name().StartsWith("Service"))
			{
				debugTreeItem.NodeName = "Service";
				if (this._currentSession == null)
				{
					this._currentSession = this.CreateNewSession(0);
				}
				this.CreateChildNode(this._mServiceNode, debugTreeItem, mcBaseLogItem);
				return;
			}
			if (mcBaseLogItem.get_Name().StartsWith("Gui"))
			{
				debugTreeItem.NodeName = "Gui";
				if (this._currentSession == null)
				{
					this._currentSession = this.CreateNewSession(0);
				}
				this.CreateChildNode(this._mGuiNode, debugTreeItem, mcBaseLogItem);
			}
		}

		public List<Dictionary<string, object>> GetLogData()
		{
			List<Dictionary<string, object>> arg_0D_0 = new List<Dictionary<string, object>>();
			IEnumerable children = this.GetChildren(null);
			arg_0D_0.AddRange(this.GetChildNodes(children));
			return arg_0D_0;
		}

		private List<Dictionary<string, object>> GetChildNodes(IEnumerable node)
		{
			List<Dictionary<string, object>> list = new List<Dictionary<string, object>>();
			foreach (DebugTreeItem debugTreeItem in node)
			{
				if (debugTreeItem.Childs.Count > 0)
				{
					Dictionary<string, object> dictionary = new Dictionary<string, object>();
					if (debugTreeItem.Name == "Sessions")
					{
						using (IEnumerator<DebugTreeItem> enumerator2 = debugTreeItem.Childs.GetEnumerator())
						{
							while (enumerator2.MoveNext())
							{
								foreach (DebugTreeItem current in enumerator2.Current.Childs)
								{
									Dictionary<string, object> dictionary2 = new Dictionary<string, object>();
									if (current.Name == "OpenVPN")
									{
										List<string> list2 = new List<string>();
										foreach (DebugTreeItem current2 in current.Childs)
										{
											list2.Add(current2.Value);
										}
										dictionary2.Add("OpenVpn", list2);
										list.Add(dictionary2);
									}
									else if (current.Name == "Service")
									{
										List<Dictionary<string, string>> list3 = new List<Dictionary<string, string>>();
										int num = 0;
										foreach (DebugTreeItem current3 in current.Childs)
										{
											Dictionary<string, string> item = new Dictionary<string, string>
											{
												{
													current3.DateTime + num,
													current3.Value
												}
											};
											if (current3.Value != null)
											{
												list3.Add(item);
												num++;
											}
										}
										dictionary2.Add("Service", list3);
										list.Add(dictionary2);
									}
									else
									{
										dictionary2.Add(current.Name, this.GetChildNodes(current.Childs));
										list.Add(dictionary2);
									}
								}
							}
							continue;
						}
					}
					dictionary.Add(debugTreeItem.Name, this.GetChildNodes(debugTreeItem.Childs));
					list.Add(dictionary);
				}
				else
				{
					Dictionary<string, object> item2 = new Dictionary<string, object>
					{
						{
							debugTreeItem.Name,
							debugTreeItem.Value
						}
					};
					list.Add(item2);
				}
			}
			return list;
		}

		private void ResolveSession(McSessionLogItems item)
		{
			foreach (McSessionLogItem arg_21_0 in item.get_Sessions())
			{
				this.CreateNewSession(0);
				foreach (KeyValuePair<string, List<McSerializedItem>> current in arg_21_0.get_EventTypes())
				{
					using (List<McSerializedItem>.Enumerator enumerator3 = current.Value.GetEnumerator())
					{
						while (enumerator3.MoveNext())
						{
							McBaseLogItem mcBaseLogItem = (McBaseLogItem)enumerator3.Current.GetItem();
							DebugTreeItem debugTreeItem = new DebugTreeItem
							{
								Name = mcBaseLogItem.get_Name(),
								Value = mcBaseLogItem.ToString(),
								DateTime = mcBaseLogItem.get_DateTime().ToString(CultureInfo.InvariantCulture),
								LogCategory = mcBaseLogItem.get_DebugLevel().ToString(),
								Item = mcBaseLogItem
							};
							if (mcBaseLogItem.get_Name().StartsWith("OpenVPNLog"))
							{
								debugTreeItem.NodeName = "OpenVPNLog";
								string debugData = ((McOpenVpnLogItem)mcBaseLogItem).get_DebugData();
								debugTreeItem.Highlight = this.ContainsImportantVerb(debugData);
								this.CreateChildNode(this._mOpenVpnNode, debugTreeItem, mcBaseLogItem);
							}
							if (mcBaseLogItem.get_Name().StartsWith("Service"))
							{
								debugTreeItem.NodeName = "Service";
								this.CreateChildNode(this._mServiceNode, debugTreeItem, mcBaseLogItem);
							}
							if (mcBaseLogItem.get_Name().StartsWith("Gui"))
							{
								debugTreeItem.NodeName = "Gui";
								this.CreateChildNode(this._mGuiNode, debugTreeItem, mcBaseLogItem);
							}
						}
					}
				}
			}
		}

		public DebugTreeItem CreateNewSession(int sessionIndex = 0)
		{
			if (sessionIndex == 0)
			{
				sessionIndex = this._sessionsNode.Childs.Count + 1;
			}
			this._currentSession = new DebugTreeItem
			{
				Name = string.Format("Session{0}", sessionIndex),
				NodeName = string.Format("Session{0}", sessionIndex)
			};
			this._mServiceNode = new DebugTreeItem
			{
				Name = "Service",
				NodeName = "Service"
			};
			this._mGuiNode = new DebugTreeItem
			{
				Name = "GUI",
				NodeName = "GUI"
			};
			this._mOpenVpnNode = new DebugTreeItem
			{
				Name = "OpenVPN",
				NodeName = "OpenVPN"
			};
			this._currentSession.Childs.Add(this._mGuiNode);
			this._currentSession.Childs.Add(this._mServiceNode);
			this._currentSession.Childs.Add(this._mOpenVpnNode);
			this.CreateChildNode(this._sessionsNode, this._currentSession, null);
			return this._currentSession;
		}

		private void CreateChildNode(DebugTreeItem parent, DebugTreeItem debugLogItem, object dataItem = null)
		{
			if (debugLogItem != null && parent != null)
			{
				ObservableCollection<DebugTreeItem> childs = parent.Childs;
				lock (childs)
				{
					parent.Childs.Add(debugLogItem);
				}
				if (dataItem != null)
				{
					this.ResolveProperties(debugLogItem, dataItem);
				}
				return;
			}
		}

		private void ResolveProperties(DebugTreeItem debugLogItem, object dataItem)
		{
			if (dataItem == null)
			{
				return;
			}
			PropertyInfo[] properties = dataItem.GetType().GetProperties();
			for (int i = 0; i < properties.Length; i++)
			{
				PropertyInfo propertyInfo = properties[i];
				try
				{
					DebugTreeItem debugLogItem2 = new DebugTreeItem
					{
						Name = propertyInfo.Name,
						Value = this.ResolveValueOfProperty(propertyInfo, dataItem),
						DateTime = null,
						LogCategory = null
					};
					this.CreateChildNode(debugLogItem, debugLogItem2, null);
					if (!(propertyInfo.PropertyType == typeof(DateTime)) && !(propertyInfo.PropertyType == typeof(string)) && !(propertyInfo.PropertyType == typeof(char)) && !(propertyInfo.PropertyType == typeof(int)) && !(propertyInfo.PropertyType == typeof(short)) && !(propertyInfo.PropertyType == typeof(bool)))
					{
						if (propertyInfo.GetIndexParameters().Length == 0)
						{
							this.ResolveProperties(debugLogItem2, propertyInfo.GetValue(dataItem, null));
						}
					}
				}
				catch (Exception ex)
				{
					HelperFunctions.DebugLine(string.Format("{0}::{1} FAILED RESOLVE PROPERTIES {2}", base.GetType().Name, MethodBase.GetCurrentMethod().Name, ex.Message));
				}
			}
		}

		private string ResolveValueOfProperty(PropertyInfo property, object item)
		{
			if (item == null)
			{
				return null;
			}
			string result = string.Empty;
			try
			{
				if (property.GetIndexParameters().Length == 0)
				{
					object expr_1C = property.GetValue(item, null);
					result = ((expr_1C != null) ? expr_1C.ToString() : null);
				}
			}
			catch (Exception ex)
			{
				HelperFunctions.DebugLine(string.Format("{0}::{1} FAILED RESOLVE VALUE OF PROPERTY {2}", base.GetType().Name, MethodBase.GetCurrentMethod().Name, ex.Message));
			}
			return result;
		}
	}
}
