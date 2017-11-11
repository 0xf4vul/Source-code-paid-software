using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Globalization;
using System.Resources;
using System.Runtime.CompilerServices;

namespace CyberGhost.Translations
{
	[GeneratedCode("System.Resources.Tools.StronglyTypedResourceBuilder", "4.0.0.0"), DebuggerNonUserCode, CompilerGenerated]
	public class Account
	{
		private static ResourceManager resourceMan;

		private static CultureInfo resourceCulture;

		[EditorBrowsable(EditorBrowsableState.Advanced)]
		public static ResourceManager ResourceManager
		{
			get
			{
				if (Account.resourceMan == null)
				{
					Account.resourceMan = new ResourceManager("CyberGhost.Translations.Account", typeof(Account).Assembly);
				}
				return Account.resourceMan;
			}
		}

		[EditorBrowsable(EditorBrowsableState.Advanced)]
		public static CultureInfo Culture
		{
			get
			{
				return Account.resourceCulture;
			}
			set
			{
				Account.resourceCulture = value;
			}
		}

		public static string Expires
		{
			get
			{
				return Account.ResourceManager.GetString("Expires", Account.resourceCulture);
			}
		}

		public static string login_cancel
		{
			get
			{
				return Account.ResourceManager.GetString("login_cancel", Account.resourceCulture);
			}
		}

		public static string login_forgotPassword
		{
			get
			{
				return Account.ResourceManager.GetString("login_forgotPassword", Account.resourceCulture);
			}
		}

		public static string login_ok
		{
			get
			{
				return Account.ResourceManager.GetString("login_ok", Account.resourceCulture);
			}
		}

		public static string login_password
		{
			get
			{
				return Account.ResourceManager.GetString("login_password", Account.resourceCulture);
			}
		}

		public static string login_please_enter_login_credentials
		{
			get
			{
				return Account.ResourceManager.GetString("login_please_enter_login_credentials", Account.resourceCulture);
			}
		}

		public static string login_username
		{
			get
			{
				return Account.ResourceManager.GetString("login_username", Account.resourceCulture);
			}
		}

		public static string NeverExpires
		{
			get
			{
				return Account.ResourceManager.GetString("NeverExpires", Account.resourceCulture);
			}
		}

		public static string NextRenewalOn
		{
			get
			{
				return Account.ResourceManager.GetString("NextRenewalOn", Account.resourceCulture);
			}
		}

		public static string Not_A_Pro_User
		{
			get
			{
				return Account.ResourceManager.GetString("Not_A_Pro_User", Account.resourceCulture);
			}
		}

		public static string PASSWORD
		{
			get
			{
				return Account.ResourceManager.GetString("PASSWORD", Account.resourceCulture);
			}
		}

		public static string USERNAME
		{
			get
			{
				return Account.ResourceManager.GetString("USERNAME", Account.resourceCulture);
			}
		}

		public static string Welcome_Pro
		{
			get
			{
				return Account.ResourceManager.GetString("Welcome_Pro", Account.resourceCulture);
			}
		}

		public static string Welcome_Pro_Intro
		{
			get
			{
				return Account.ResourceManager.GetString("Welcome_Pro_Intro", Account.resourceCulture);
			}
		}

		internal Account()
		{
		}
	}
}
