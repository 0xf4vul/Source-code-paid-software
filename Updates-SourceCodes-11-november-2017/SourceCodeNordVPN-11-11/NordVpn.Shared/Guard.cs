using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.CompilerServices;

namespace NordVpn.Shared
{
	internal static class Guard
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c__7<T> where T : class
		{
			public static readonly Guard.<>c__7<T> <>9 = new Guard.<>c__7<T>();

			public static Func<Type, bool> <>9__7_0;

			public static Func<bool, bool> <>9__7_1;

			internal bool <IsOfType>b__7_0(Type s)
			{
				return typeof(T).IsAssignableFrom(s);
			}

			internal bool <IsOfType>b__7_1(bool s)
			{
				return s;
			}
		}

		public static void PathExists(string arg, string argName)
		{
			if (string.IsNullOrEmpty(arg) || (!File.Exists(arg) && !Directory.Exists(arg)))
			{
				throw new ArgumentException(string.Format("ArgumentException: Path not valid {0}. Parameter name {1}", arg, argName));
			}
		}

		public static void NotEmpty(string arg, string argName, string message = null)
		{
			if (!string.IsNullOrEmpty(arg))
			{
				return;
			}
			if (string.IsNullOrEmpty(message))
			{
				throw new ArgumentException(string.Format("ArgumentException: {0} string not valid.", argName));
			}
			throw new ArgumentException(string.Format("{0}", message));
		}

		public static void NotEmpty<T>(ICollection<T> arg, string argName)
		{
			if (arg == null || arg.Count == 0)
			{
				throw new ArgumentException(string.Format("ArgumentException: sequence {0} is empty or null", argName));
			}
		}

		public static void NotEmpty<T>(IEnumerable<T> arg, string argName)
		{
			if (arg == null || !arg.Any<T>())
			{
				throw new ArgumentException(string.Format("ArgumentException: sequence {0} is empty or null", argName));
			}
		}

		public static void NotNull<T>(T arg, string argName) where T : class
		{
			if (arg == null)
			{
				throw new ArgumentException(string.Format("ArgumentException: {0} is null", argName));
			}
		}

		public static void IsOfType<T>(Type type, string argName) where T : class
		{
			if (typeof(T).IsAssignableFrom(type))
			{
				throw new ArgumentException(string.Format("Type in {0} must implement/derive from {1}", argName, typeof(T).Name));
			}
		}

		public static void IsOfType<T>(object instance, string argName)
		{
			if (!(instance is T))
			{
				throw new ArgumentException(string.Format("Type in {0} must implement/derive from {1}", argName, typeof(T).Name));
			}
		}

		public static void IsOfType<T>(IEnumerable<Type> types, string argName) where T : class
		{
			Func<Type, bool> arg_20_1;
			if ((arg_20_1 = Guard.<>c__7<T>.<>9__7_0) == null)
			{
				arg_20_1 = (Guard.<>c__7<T>.<>9__7_0 = new Func<Type, bool>(Guard.<>c__7<T>.<>9.<IsOfType>b__7_0));
			}
			IEnumerable<bool> arg_44_0 = types.Select(arg_20_1);
			Func<bool, bool> arg_44_1;
			if ((arg_44_1 = Guard.<>c__7<T>.<>9__7_1) == null)
			{
				arg_44_1 = (Guard.<>c__7<T>.<>9__7_1 = new Func<bool, bool>(Guard.<>c__7<T>.<>9.<IsOfType>b__7_1));
			}
			if (!arg_44_0.All(arg_44_1))
			{
				throw new ArgumentException(string.Format("All types in {0} must implement/derive from {1}", argName, typeof(T).Name));
			}
		}

		public static void IsTrue(bool condition, string message = "")
		{
			if (!condition)
			{
				throw new ArgumentException(string.Format("condition not satisfied: {0}", message));
			}
		}

		public static void IsFalse(bool condition, string message)
		{
			if (condition)
			{
				throw new ArgumentException(string.Format("condition not satisfied: {0}", message));
			}
		}
	}
}
