using Caliburn.Micro;
using Microsoft.CSharp.RuntimeBinder;
using NordVpn.Properties;
using System;
using System.Dynamic;
using System.Runtime.CompilerServices;
using System.Windows;

namespace NordVpn.CrashReporting
{
	public class CrashReportConfirmer
	{
		[CompilerGenerated]
		private static class <>o__9
		{
			public static CallSite<Func<CallSite, object, WindowStartupLocation, object>> <>p__0;

			public static CallSite<Func<CallSite, object, int, object>> <>p__1;

			public static CallSite<Func<CallSite, object, int, object>> <>p__2;

			public static CallSite<Func<CallSite, object, int, object>> <>p__3;

			public static CallSite<Func<CallSite, object, int, object>> <>p__4;

			public static CallSite<Func<CallSite, object, ResizeMode, object>> <>p__5;

			public static CallSite<Func<CallSite, object, SizeToContent, object>> <>p__6;

			public static CallSite<Func<CallSite, object, string, object>> <>p__7;

			public static CallSite<Func<CallSite, IWindowManager, CrashReportingViewModel, object, object, object>> <>p__8;

			public static CallSite<Func<CallSite, object, bool?>> <>p__9;
		}

		private readonly IWindowManager _windowManager;

		private CrashReportingViewModel _viewModel;

		public string Message
		{
			get
			{
				return this._viewModel.Message;
			}
		}

		public bool IncludeLog
		{
			get
			{
				return this._viewModel.IncludeLog;
			}
		}

		public string Contact
		{
			get
			{
				return this._viewModel.Email;
			}
		}

		public CrashReportConfirmer(IWindowManager windowManager)
		{
			this._windowManager = windowManager;
		}

		public bool Confirm()
		{
			this._viewModel = new CrashReportingViewModel();
			object obj = new ExpandoObject();
			if (CrashReportConfirmer.<>o__9.<>p__0 == null)
			{
				CrashReportConfirmer.<>o__9.<>p__0 = CallSite<Func<CallSite, object, WindowStartupLocation, object>>.Create(Binder.SetMember(CSharpBinderFlags.None, "WindowStartupLocation", typeof(CrashReportConfirmer), new CSharpArgumentInfo[]
				{
					CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.None, null),
					CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.UseCompileTimeType | CSharpArgumentInfoFlags.Constant, null)
				}));
			}
			CrashReportConfirmer.<>o__9.<>p__0.Target(CrashReportConfirmer.<>o__9.<>p__0, obj, WindowStartupLocation.CenterOwner);
			if (CrashReportConfirmer.<>o__9.<>p__1 == null)
			{
				CrashReportConfirmer.<>o__9.<>p__1 = CallSite<Func<CallSite, object, int, object>>.Create(Binder.SetMember(CSharpBinderFlags.None, "MinHeight", typeof(CrashReportConfirmer), new CSharpArgumentInfo[]
				{
					CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.None, null),
					CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.UseCompileTimeType | CSharpArgumentInfoFlags.Constant, null)
				}));
			}
			CrashReportConfirmer.<>o__9.<>p__1.Target(CrashReportConfirmer.<>o__9.<>p__1, obj, 250);
			if (CrashReportConfirmer.<>o__9.<>p__2 == null)
			{
				CrashReportConfirmer.<>o__9.<>p__2 = CallSite<Func<CallSite, object, int, object>>.Create(Binder.SetMember(CSharpBinderFlags.None, "MinWidth", typeof(CrashReportConfirmer), new CSharpArgumentInfo[]
				{
					CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.None, null),
					CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.UseCompileTimeType | CSharpArgumentInfoFlags.Constant, null)
				}));
			}
			CrashReportConfirmer.<>o__9.<>p__2.Target(CrashReportConfirmer.<>o__9.<>p__2, obj, 350);
			if (CrashReportConfirmer.<>o__9.<>p__3 == null)
			{
				CrashReportConfirmer.<>o__9.<>p__3 = CallSite<Func<CallSite, object, int, object>>.Create(Binder.SetMember(CSharpBinderFlags.None, "Height", typeof(CrashReportConfirmer), new CSharpArgumentInfo[]
				{
					CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.None, null),
					CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.UseCompileTimeType | CSharpArgumentInfoFlags.Constant, null)
				}));
			}
			CrashReportConfirmer.<>o__9.<>p__3.Target(CrashReportConfirmer.<>o__9.<>p__3, obj, 450);
			if (CrashReportConfirmer.<>o__9.<>p__4 == null)
			{
				CrashReportConfirmer.<>o__9.<>p__4 = CallSite<Func<CallSite, object, int, object>>.Create(Binder.SetMember(CSharpBinderFlags.None, "Width", typeof(CrashReportConfirmer), new CSharpArgumentInfo[]
				{
					CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.None, null),
					CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.UseCompileTimeType | CSharpArgumentInfoFlags.Constant, null)
				}));
			}
			CrashReportConfirmer.<>o__9.<>p__4.Target(CrashReportConfirmer.<>o__9.<>p__4, obj, 550);
			if (CrashReportConfirmer.<>o__9.<>p__5 == null)
			{
				CrashReportConfirmer.<>o__9.<>p__5 = CallSite<Func<CallSite, object, ResizeMode, object>>.Create(Binder.SetMember(CSharpBinderFlags.None, "ResizeMode", typeof(CrashReportConfirmer), new CSharpArgumentInfo[]
				{
					CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.None, null),
					CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.UseCompileTimeType | CSharpArgumentInfoFlags.Constant, null)
				}));
			}
			CrashReportConfirmer.<>o__9.<>p__5.Target(CrashReportConfirmer.<>o__9.<>p__5, obj, ResizeMode.NoResize);
			if (CrashReportConfirmer.<>o__9.<>p__6 == null)
			{
				CrashReportConfirmer.<>o__9.<>p__6 = CallSite<Func<CallSite, object, SizeToContent, object>>.Create(Binder.SetMember(CSharpBinderFlags.None, "SizeToContent", typeof(CrashReportConfirmer), new CSharpArgumentInfo[]
				{
					CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.None, null),
					CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.UseCompileTimeType | CSharpArgumentInfoFlags.Constant, null)
				}));
			}
			CrashReportConfirmer.<>o__9.<>p__6.Target(CrashReportConfirmer.<>o__9.<>p__6, obj, SizeToContent.Manual);
			if (CrashReportConfirmer.<>o__9.<>p__7 == null)
			{
				CrashReportConfirmer.<>o__9.<>p__7 = CallSite<Func<CallSite, object, string, object>>.Create(Binder.SetMember(CSharpBinderFlags.None, "Title", typeof(CrashReportConfirmer), new CSharpArgumentInfo[]
				{
					CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.None, null),
					CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.UseCompileTimeType, null)
				}));
			}
			CrashReportConfirmer.<>o__9.<>p__7.Target(CrashReportConfirmer.<>o__9.<>p__7, obj, Resources.WindowTitle);
			if (CrashReportConfirmer.<>o__9.<>p__9 == null)
			{
				CrashReportConfirmer.<>o__9.<>p__9 = CallSite<Func<CallSite, object, bool?>>.Create(Binder.Convert(CSharpBinderFlags.None, typeof(bool?), typeof(CrashReportConfirmer)));
			}
			Func<CallSite, object, bool?> arg_38E_0 = CrashReportConfirmer.<>o__9.<>p__9.Target;
			CallSite arg_38E_1 = CrashReportConfirmer.<>o__9.<>p__9;
			if (CrashReportConfirmer.<>o__9.<>p__8 == null)
			{
				CrashReportConfirmer.<>o__9.<>p__8 = CallSite<Func<CallSite, IWindowManager, CrashReportingViewModel, object, object, object>>.Create(Binder.InvokeMember(CSharpBinderFlags.None, "ShowDialog", null, typeof(CrashReportConfirmer), new CSharpArgumentInfo[]
				{
					CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.UseCompileTimeType, null),
					CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.UseCompileTimeType, null),
					CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.Constant, null),
					CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.None, null)
				}));
			}
			bool? flag = arg_38E_0(arg_38E_1, CrashReportConfirmer.<>o__9.<>p__8.Target(CrashReportConfirmer.<>o__9.<>p__8, this._windowManager, this._viewModel, null, obj));
			return flag.HasValue && flag.Value;
		}
	}
}
