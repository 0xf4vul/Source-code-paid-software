using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Runtime.CompilerServices;

namespace NordVpn.Shared
{
	internal static class CollectionExtensions
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c__12<T>
		{
			public static readonly CollectionExtensions.<>c__12<T> <>9 = new CollectionExtensions.<>c__12<T>();

			public static Func<T, Guid> <>9__12_0;

			internal Guid <Shuffle>b__12_0(T e)
			{
				return Guid.NewGuid();
			}
		}

		public static void AddRange<T>(this ICollection<T> collection, IEnumerable<T> elements)
		{
			foreach (T current in elements)
			{
				collection.Add(current);
			}
		}

		public static void AddRangeAtStart<T>(this Collection<T> collection, IEnumerable<T> elements)
		{
			int num = 0;
			foreach (T current in elements)
			{
				collection.Insert(num++, current);
			}
		}

		public static void ForEach<T>(this IEnumerable<T> collection, Action<T> action)
		{
			foreach (T current in collection)
			{
				action(current);
			}
		}

		public static ObservableCollection<T> AsObservable<T>(this IEnumerable<T> collection)
		{
			ObservableCollection<T> observableCollection = new ObservableCollection<T>();
			foreach (T current in collection)
			{
				observableCollection.Add(current);
			}
			return observableCollection;
		}

		public static HashSet<T> AsHashSet<T>(this IEnumerable<T> collection)
		{
			return new HashSet<T>(collection);
		}

		public static IEnumerable<TSource> DistinctBy<TSource, TKey>(this IEnumerable<TSource> source, Func<TSource, TKey> keySelector)
		{
			return source.DistinctBy(keySelector, null);
		}

		[IteratorStateMachine(typeof(CollectionExtensions.<DistinctBy>d__6<, >))]
		public static IEnumerable<TSource> DistinctBy<TSource, TKey>(this IEnumerable<TSource> source, Func<TSource, TKey> keySelector, IEqualityComparer<TKey> comparer)
		{
			CollectionExtensions.<DistinctBy>d__6<TSource, TKey> expr_07 = new CollectionExtensions.<DistinctBy>d__6<TSource, TKey>(-2);
			expr_07.<>3__source = source;
			expr_07.<>3__keySelector = keySelector;
			expr_07.<>3__comparer = comparer;
			return expr_07;
		}

		public static TSource MinBy<TSource, TKey>(this IEnumerable<TSource> source, Func<TSource, TKey> selector)
		{
			return source.MinBy(selector, null);
		}

		public static TSource MinBy<TSource, TKey>(this IEnumerable<TSource> source, Func<TSource, TKey> selector, IComparer<TKey> comparer)
		{
			comparer = (comparer ?? Comparer<TKey>.Default);
			TSource result;
			using (IEnumerator<TSource> enumerator = source.GetEnumerator())
			{
				if (!enumerator.MoveNext())
				{
					throw new InvalidOperationException("Sequence contains no elements");
				}
				TSource tSource = enumerator.Current;
				TKey y = selector(tSource);
				while (enumerator.MoveNext())
				{
					TSource current = enumerator.Current;
					TKey tKey = selector(current);
					if (comparer.Compare(tKey, y) < 0)
					{
						tSource = current;
						y = tKey;
					}
				}
				result = tSource;
			}
			return result;
		}

		public static bool RemoveFirst<T>(this Collection<T> source, Func<T, bool> predicate)
		{
			for (int i = 0; i < source.Count; i++)
			{
				T t = source[i];
				if (predicate(t))
				{
					source.Remove(t);
					return true;
				}
			}
			return false;
		}

		public static void RemoveAll<T>(this ICollection<T> source, Func<T, bool> predicate)
		{
			foreach (T current in source.ToList<T>())
			{
				if (predicate(current))
				{
					source.Remove(current);
				}
			}
		}

		public static T FirstOrDefaultOfType<T>(this IEnumerable source)
		{
			return source.OfType<T>().FirstOrDefault<T>();
		}

		public static IEnumerable<T> Shuffle<T>(this IEnumerable<T> source)
		{
			Func<T, Guid> arg_20_1;
			if ((arg_20_1 = CollectionExtensions.<>c__12<T>.<>9__12_0) == null)
			{
				arg_20_1 = (CollectionExtensions.<>c__12<T>.<>9__12_0 = new Func<T, Guid>(CollectionExtensions.<>c__12<T>.<>9.<Shuffle>b__12_0));
			}
			return source.OrderBy(arg_20_1);
		}

		public static bool SetEquals<T>(this IEnumerable<T> source, IEnumerable<T> collection)
		{
			return new HashSet<T>(source).SetEquals(collection);
		}
	}
}
