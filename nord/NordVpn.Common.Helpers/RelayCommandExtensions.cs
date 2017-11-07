using GalaSoft.MvvmLight.CommandWpf;
using System;
using System.ComponentModel;
using System.Linq.Expressions;

namespace NordVpn.Common.Helpers
{
	[Obsolete("Mvvm light will be droped")]
	public static class RelayCommandExtensions
	{
		public static RelayCommand ObservesProperty<T>(this RelayCommand command, Expression<Func<T>> propertyExpression)
		{
			MemberExpression expr_18 = propertyExpression.Body as MemberExpression;
			if (expr_18 == null)
			{
				throw new ArgumentException("Only member expressions are supported");
			}
			ConstantExpression expr_30 = expr_18.Expression as ConstantExpression;
			if (expr_30 == null)
			{
				throw new ArgumentException("Non constant expression are not supported");
			}
			((INotifyPropertyChanged)expr_30.Value).PropertyChanged += delegate(object s, PropertyChangedEventArgs e)
			{
				command.RaiseCanExecuteChanged();
			};
			return command;
		}
	}
}
