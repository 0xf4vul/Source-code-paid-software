using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Assembly, AllowMultiple = true)]
	public sealed class AspMvcAreaMasterLocationFormatAttribute : Attribute
	{
		public string Format
		{
			get;
			private set;
		}

		public AspMvcAreaMasterLocationFormatAttribute(string format)
		{
			this.Format = format;
		}
	}
}
