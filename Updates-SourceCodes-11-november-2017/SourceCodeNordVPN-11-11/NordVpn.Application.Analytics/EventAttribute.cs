using NordVpn.Shared;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.Application.Analytics
{
	[AttributeUsage(AttributeTargets.Method)]
	public sealed class EventAttribute : Attribute
	{
		public string Category
		{
			[CompilerGenerated]
			get
			{
				return this.<Category>k__BackingField;
			}
		}

		public string Action
		{
			[CompilerGenerated]
			get
			{
				return this.<Action>k__BackingField;
			}
		}

		public bool IsView
		{
			get
			{
				return string.IsNullOrEmpty(this.Category) && string.IsNullOrEmpty(this.Action);
			}
		}

		public EventAttribute(string category) : this(category, "")
		{
		}

		public EventAttribute(string category, string action)
		{
			Guard.NotEmpty(category, "category", null);
			this.<Category>k__BackingField = category;
			this.<Action>k__BackingField = (action ?? "");
		}

		public EventAttribute()
		{
		}
	}
}
