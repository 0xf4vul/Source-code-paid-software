using System;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Windows.Input;

namespace CyberGhost.Components
{
	public sealed class AsyncDelegateCommand : ICommand
	{
		private readonly Func<bool> _canExecute;

		private readonly Func<Task> _executeAsync;

		private Task _currentExecution;

		public event EventHandler CanExecuteChanged
		{
			add
			{
				CommandManager.RequerySuggested += value;
			}
			remove
			{
				CommandManager.RequerySuggested -= value;
			}
		}

		public AsyncDelegateCommand(Func<Task> executeAsync) : this(executeAsync, null)
		{
		}

		public AsyncDelegateCommand(Func<Task> executeAsync, Func<bool> canExecute)
		{
			if (executeAsync == null)
			{
				throw new ArgumentNullException("executeAsync");
			}
			this._executeAsync = executeAsync;
			this._canExecute = canExecute;
		}

		public bool CanExecute(object parameter)
		{
			return (this._currentExecution == null || this._currentExecution.IsCompleted) && (this._canExecute == null || this._canExecute());
		}

		[AsyncStateMachine(typeof(AsyncDelegateCommand.<Execute>d__9))]
		public void Execute(object parameter)
		{
			AsyncDelegateCommand.<Execute>d__9 <Execute>d__;
			<Execute>d__.<>4__this = this;
			<Execute>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<Execute>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <Execute>d__.<>t__builder;
			<>t__builder.Start<AsyncDelegateCommand.<Execute>d__9>(ref <Execute>d__);
		}
	}
}
