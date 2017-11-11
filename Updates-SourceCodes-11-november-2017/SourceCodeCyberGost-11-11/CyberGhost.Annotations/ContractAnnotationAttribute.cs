using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Method, AllowMultiple = true)]
	public sealed class ContractAnnotationAttribute : Attribute
	{
		public string Contract
		{
			get;
			private set;
		}

		public bool ForceFullStates
		{
			get;
			private set;
		}

		public ContractAnnotationAttribute([NotNull] string contract) : this(contract, false)
		{
		}

		public ContractAnnotationAttribute([NotNull] string contract, bool forceFullStates)
		{
			this.Contract = contract;
			this.ForceFullStates = forceFullStates;
		}
	}
}
