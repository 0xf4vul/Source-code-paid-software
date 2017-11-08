using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Method | AttributeTargets.Property)]
	public sealed class AspDataFieldAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Method | AttributeTargets.Property)]
	public sealed class AspDataFieldsAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Property)]
	public sealed class AspMethodPropertyAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Method | AttributeTargets.Parameter)]
	public sealed class AspMvcActionAttribute : Attribute
	{
		public string AnonymousProperty
		{
			get;
			private set;
		}

		public AspMvcActionAttribute()
		{
		}

		public AspMvcActionAttribute(string anonymousProperty)
		{
			this.AnonymousProperty = anonymousProperty;
		}
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Parameter)]
	public sealed class AspMvcAreaAttribute : Attribute
	{
		public string AnonymousProperty
		{
			get;
			private set;
		}

		public AspMvcAreaAttribute()
		{
		}

		public AspMvcAreaAttribute(string anonymousProperty)
		{
			this.AnonymousProperty = anonymousProperty;
		}
	}
}

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

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Property | AttributeTargets.Parameter)]
	public sealed class AspMvcActionSelectorAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Assembly, AllowMultiple = true)]
	public sealed class AspMvcAreaViewLocationFormatAttribute : Attribute
	{
		public string Format
		{
			get;
			private set;
		}

		public AspMvcAreaViewLocationFormatAttribute(string format)
		{
			this.Format = format;
		}
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Assembly, AllowMultiple = true)]
	public sealed class AspMvcAreaPartialViewLocationFormatAttribute : Attribute
	{
		public string Format
		{
			get;
			private set;
		}

		public AspMvcAreaPartialViewLocationFormatAttribute(string format)
		{
			this.Format = format;
		}
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Parameter)]
	public sealed class AspMvcDisplayTemplateAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Method | AttributeTargets.Parameter)]
	public sealed class AspMvcControllerAttribute : Attribute
	{
		public string AnonymousProperty
		{
			get;
			private set;
		}

		public AspMvcControllerAttribute()
		{
		}

		public AspMvcControllerAttribute(string anonymousProperty)
		{
			this.AnonymousProperty = anonymousProperty;
		}
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Parameter)]
	public sealed class AspMvcEditorTemplateAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Parameter)]
	public sealed class AspMvcMasterAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Assembly, AllowMultiple = true)]
	public sealed class AspMvcMasterLocationFormatAttribute : Attribute
	{
		public string Format
		{
			get;
			private set;
		}

		public AspMvcMasterLocationFormatAttribute(string format)
		{
			this.Format = format;
		}
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Parameter)]
	public sealed class AspMvcModelTypeAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Method | AttributeTargets.Parameter)]
	public sealed class AspMvcPartialViewAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Assembly, AllowMultiple = true)]
	public sealed class AspMvcPartialViewLocationFormatAttribute : Attribute
	{
		public string Format
		{
			get;
			private set;
		}

		public AspMvcPartialViewLocationFormatAttribute(string format)
		{
			this.Format = format;
		}
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Class | AttributeTargets.Method)]
	public sealed class AspMvcSupressViewErrorAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Parameter)]
	public sealed class AspMvcTemplateAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Method | AttributeTargets.Parameter)]
	public sealed class AspMvcViewAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Assembly, AllowMultiple = true)]
	public sealed class AspMvcViewLocationFormatAttribute : Attribute
	{
		public string Format
		{
			get;
			private set;
		}

		public AspMvcViewLocationFormatAttribute(string format)
		{
			this.Format = format;
		}
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Class, AllowMultiple = true)]
	public sealed class AspRequiredAttributeAttribute : Attribute
	{
		public string Attribute
		{
			get;
			private set;
		}

		public AspRequiredAttributeAttribute([NotNull] string attribute)
		{
			this.Attribute = attribute;
		}
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Parameter)]
	public sealed class AssertionConditionAttribute : Attribute
	{
		public AssertionConditionType ConditionType
		{
			get;
			private set;
		}

		public AssertionConditionAttribute(AssertionConditionType conditionType)
		{
			this.ConditionType = conditionType;
		}
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Property)]
	public sealed class AspTypePropertyAttribute : Attribute
	{
		public bool CreateConstructorReferences
		{
			get;
			private set;
		}

		public AspTypePropertyAttribute(bool createConstructorReferences)
		{
			this.CreateConstructorReferences = createConstructorReferences;
		}
	}
}

using System;

namespace CyberGhost.Annotations
{
	public enum AssertionConditionType
	{
		IS_TRUE,
		IS_FALSE,
		IS_NULL,
		IS_NOT_NULL
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Method)]
	public sealed class AssertionMethodAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[BaseTypeRequired(typeof(Attribute)), AttributeUsage(AttributeTargets.Class, AllowMultiple = true)]
	public sealed class BaseTypeRequiredAttribute : Attribute
	{
		[NotNull]
		public Type BaseType
		{
			get;
			private set;
		}

		public BaseTypeRequiredAttribute([NotNull] Type baseType)
		{
			this.BaseType = baseType;
		}
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Method | AttributeTargets.Property | AttributeTargets.Field | AttributeTargets.Event | AttributeTargets.Parameter | AttributeTargets.Delegate)]
	public sealed class CanBeNullAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Interface)]
	public sealed class CannotApplyEqualityOperatorAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Constructor | AttributeTargets.Method | AttributeTargets.Property)]
	public sealed class CollectionAccessAttribute : Attribute
	{
		public CollectionAccessType CollectionAccessType
		{
			get;
			private set;
		}

		public CollectionAccessAttribute(CollectionAccessType collectionAccessType)
		{
			this.CollectionAccessType = collectionAccessType;
		}
	}
}

using System;

namespace CyberGhost.Annotations
{
	[Flags]
	public enum CollectionAccessType
	{
		None = 0,
		Read = 1,
		ModifyExistingContent = 2,
		UpdatedContent = 6
	}
}

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

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Property | AttributeTargets.Field | AttributeTargets.Parameter)]
	public sealed class HtmlAttributeValueAttribute : Attribute
	{
		[NotNull]
		public string Name
		{
			get;
			private set;
		}

		public HtmlAttributeValueAttribute([NotNull] string name)
		{
			this.Name = name;
		}
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Property | AttributeTargets.Field | AttributeTargets.Parameter)]
	public sealed class HtmlElementAttributesAttribute : Attribute
	{
		public string Name
		{
			get;
			private set;
		}

		public HtmlElementAttributesAttribute()
		{
		}

		public HtmlElementAttributesAttribute(string name)
		{
			this.Name = name;
		}
	}
}

using System;

namespace CyberGhost.Annotations
{
	[Flags]
	public enum ImplicitUseKindFlags
	{
		Default = 7,
		Access = 1,
		Assign = 2,
		InstantiatedWithFixedConstructorSignature = 4,
		InstantiatedNoFixedConstructorSignature = 8
	}
}

using System;

namespace CyberGhost.Annotations
{
	[Flags]
	public enum ImplicitUseTargetFlags
	{
		Default = 1,
		Itself = 1,
		Members = 2,
		WithMembers = 3
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Parameter)]
	public sealed class InstantHandleAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.All)]
	public sealed class LocalizationRequiredAttribute : Attribute
	{
		public bool Required
		{
			get;
			private set;
		}

		public LocalizationRequiredAttribute() : this(true)
		{
		}

		public LocalizationRequiredAttribute(bool required)
		{
			this.Required = required;
		}
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Method)]
	public sealed class LinqTunnelAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Method | AttributeTargets.Property | AttributeTargets.Field | AttributeTargets.Parameter | AttributeTargets.Delegate)]
	public sealed class ItemNotNullAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Method | AttributeTargets.Property | AttributeTargets.Field | AttributeTargets.Parameter | AttributeTargets.Delegate)]
	public sealed class ItemCanBeNullAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Parameter)]
	public sealed class InvokerParameterNameAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Parameter)]
	public sealed class NoEnumerationAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Class | AttributeTargets.GenericParameter)]
	public sealed class MeansImplicitUseAttribute : Attribute
	{
		[UsedImplicitly]
		public ImplicitUseKindFlags UseKindFlags
		{
			get;
			private set;
		}

		[UsedImplicitly]
		public ImplicitUseTargetFlags TargetFlags
		{
			get;
			private set;
		}

		public MeansImplicitUseAttribute() : this(ImplicitUseKindFlags.Default, ImplicitUseTargetFlags.Default)
		{
		}

		public MeansImplicitUseAttribute(ImplicitUseKindFlags useKindFlags) : this(useKindFlags, ImplicitUseTargetFlags.Default)
		{
		}

		public MeansImplicitUseAttribute(ImplicitUseTargetFlags targetFlags) : this(ImplicitUseKindFlags.Default, targetFlags)
		{
		}

		public MeansImplicitUseAttribute(ImplicitUseKindFlags useKindFlags, ImplicitUseTargetFlags targetFlags)
		{
			this.UseKindFlags = useKindFlags;
			this.TargetFlags = targetFlags;
		}
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Method | AttributeTargets.Parameter, AllowMultiple = true)]
	public sealed class MacroAttribute : Attribute
	{
		public string Expression
		{
			get;
			set;
		}

		public int Editable
		{
			get;
			set;
		}

		public string Target
		{
			get;
			set;
		}
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.All)]
	public sealed class NoReorder : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Method | AttributeTargets.Property | AttributeTargets.Field | AttributeTargets.Event | AttributeTargets.Parameter | AttributeTargets.Delegate)]
	public sealed class NotNullAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Method)]
	public sealed class NotifyPropertyChangedInvocatorAttribute : Attribute
	{
		public string ParameterName
		{
			get;
			private set;
		}

		public NotifyPropertyChangedInvocatorAttribute()
		{
		}

		public NotifyPropertyChangedInvocatorAttribute(string parameterName)
		{
			this.ParameterName = parameterName;
		}
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Parameter)]
	public sealed class PathReferenceAttribute : Attribute
	{
		public string BasePath
		{
			get;
			private set;
		}

		public PathReferenceAttribute()
		{
		}

		public PathReferenceAttribute([PathReference] string basePath)
		{
			this.BasePath = basePath;
		}
	}
}

using System;

namespace CyberGhost.Annotations
{
	[MeansImplicitUse(ImplicitUseTargetFlags.WithMembers)]
	public sealed class PublicAPIAttribute : Attribute
	{
		public string Comment
		{
			get;
			private set;
		}

		public PublicAPIAttribute()
		{
		}

		public PublicAPIAttribute([NotNull] string comment)
		{
			this.Comment = comment;
		}
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Method)]
	public sealed class RazorHelperCommonAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Method)]
	public sealed class PureAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Class)]
	public sealed class XamlItemsControlAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Property)]
	public sealed class XamlItemBindingOfItemsControlAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.All)]
	public sealed class UsedImplicitlyAttribute : Attribute
	{
		public ImplicitUseKindFlags UseKindFlags
		{
			get;
			private set;
		}

		public ImplicitUseTargetFlags TargetFlags
		{
			get;
			private set;
		}

		public UsedImplicitlyAttribute() : this(ImplicitUseKindFlags.Default, ImplicitUseTargetFlags.Default)
		{
		}

		public UsedImplicitlyAttribute(ImplicitUseKindFlags useKindFlags) : this(useKindFlags, ImplicitUseTargetFlags.Default)
		{
		}

		public UsedImplicitlyAttribute(ImplicitUseTargetFlags targetFlags) : this(ImplicitUseKindFlags.Default, targetFlags)
		{
		}

		public UsedImplicitlyAttribute(ImplicitUseKindFlags useKindFlags, ImplicitUseTargetFlags targetFlags)
		{
			this.UseKindFlags = useKindFlags;
			this.TargetFlags = targetFlags;
		}
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Property | AttributeTargets.Field | AttributeTargets.Parameter)]
	public sealed class ValueProviderAttribute : Attribute
	{
		[NotNull]
		public string Name
		{
			get;
			private set;
		}

		public ValueProviderAttribute(string name)
		{
			this.Name = name;
		}
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Method), Obsolete("Use [ContractAnnotation('=> halt')] instead")]
	public sealed class TerminatesProgramAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Method)]
	public sealed class SourceTemplateAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Constructor | AttributeTargets.Method | AttributeTargets.Property | AttributeTargets.Delegate)]
	public sealed class StringFormatMethodAttribute : Attribute
	{
		public string FormatParameterName
		{
			get;
			private set;
		}

		public StringFormatMethodAttribute(string formatParameterName)
		{
			this.FormatParameterName = formatParameterName;
		}
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Parameter)]
	public sealed class RegexPatternAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Parameter)]
	public sealed class RazorWriteMethodParameterAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Method)]
	public sealed class RazorWriteMethodAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Method)]
	public sealed class RazorWriteLiteralMethodAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Method | AttributeTargets.Parameter)]
	public sealed class RazorSectionAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Property)]
	public sealed class RazorLayoutAttribute : Attribute
	{
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Assembly, AllowMultiple = true)]
	public sealed class RazorInjectionAttribute : Attribute
	{
		public string Type
		{
			get;
			private set;
		}

		public string FieldName
		{
			get;
			private set;
		}

		public RazorInjectionAttribute(string type, string fieldName)
		{
			this.Type = type;
			this.FieldName = fieldName;
		}
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Assembly, AllowMultiple = true)]
	public sealed class RazorImportNamespaceAttribute : Attribute
	{
		public string Name
		{
			get;
			private set;
		}

		public RazorImportNamespaceAttribute(string name)
		{
			this.Name = name;
		}
	}
}

using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Class, AllowMultiple = true)]
	public sealed class AspChildControlTypeAttribute : Attribute
	{
		public string TagName
		{
			get;
			private set;
		}

		public Type ControlType
		{
			get;
			private set;
		}

		public AspChildControlTypeAttribute(string tagName, Type controlType)
		{
			this.TagName = tagName;
			this.ControlType = controlType;
		}
	}
}
