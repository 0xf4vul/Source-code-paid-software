using Catel.Messaging;
using System;
using System.Net;

namespace VyprVPN.Messages
{
	public class AccountCreatedMessage : MessageBase<AccountCreatedMessage, NetworkCredential>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class CloseGraphWindowMessage : MessageBase<CloseGraphWindowMessage, bool>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class AuthenticationStateChangedMessage : MessageBase<AuthenticationStateChangedMessage, IVyprVPNController>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class CloseOptimizeMtuWindowMessage : MessageBase<CloseOptimizeMtuWindowMessage, bool>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class CloseUpdatesWindowMessage : MessageBase<CloseUpdatesWindowMessage, bool>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class ConnectedChangedMessage : MessageBase<ConnectedChangedMessage, bool>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class ConnectionErrorMessage : MessageBase<ConnectionErrorMessage, IVyprVPNController>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class DialogControlClosedMessage : MessageBase<DialogControlClosedMessage, object>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class DialogControlPrimaryButtonPressedMessage : MessageBase<DialogControlPrimaryButtonPressedMessage, object>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class DialogControlSetResultMessage : MessageBase<DialogControlSetResultMessage, bool>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class DialogControlSecondaryButtonPressedMessage : MessageBase<DialogControlSecondaryButtonPressedMessage, object>
	{
	}
}

using Catel.Messaging;
using GoldenFrogVPN;
using System;
using System.Collections.Generic;

namespace VyprVPN.Messages
{
	public class FavoritesChangedMessage : MessageBase<FavoritesChangedMessage, IEnumerable<VPNServer>>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class NewFeatureModalCloseWindowMessage : MessageBase<NewFeatureModalCloseWindowMessage, object>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class NewFeatureModalClosedWindowMessage : MessageBase<NewFeatureModalClosedWindowMessage, object>
	{
	}
}

using Catel.Messaging;
using GoldenFrogVPN.Interfaces;
using System;

namespace VyprVPN.Messages
{
	public class LocationChangedMessage : MessageBase<LocationChangedMessage, IVPNServer>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class NotificationStateChangedMessage : MessageBase<NotificationStateChangedMessage, Type>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class OnboardingViewChangedMessage : MessageBase<OnboardingViewChangedMessage, OnboardingViews>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class ProgressControlClosedMessage : MessageBase<ProgressControlClosedMessage, object>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class ProgressControlLoadedMessage : MessageBase<ProgressControlLoadedMessage, object>
	{
	}
}

using Catel.Messaging;
using GoldenFrogVPN.Enums;
using System;

namespace VyprVPN.Messages
{
	public class SendConfirmationEmailResultMessage : MessageBase<SendConfirmationEmailResultMessage, SendConfirmationEmailApiResultCode>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class ProgressControlSetDialogResultMessage : MessageBase<ProgressControlSetDialogResultMessage, bool?>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class ServiceRepairWizardViewClosedMessage : MessageBase<ServiceRepairWizardViewClosedMessage, object>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class ServiceRepairWizardViewClosingMessage : MessageBase<ServiceRepairWizardViewClosingMessage, bool?>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class ServiceRepairWizardViewCloseMessage : MessageBase<ServiceRepairWizardViewCloseMessage, object>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class ServiceRepairWizardViewLoadedMessage : MessageBase<ServiceRepairWizardViewLoadedMessage, object>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class ServiceRepairWizardViewSetDialogResultMessage : MessageBase<ServiceRepairWizardViewSetDialogResultMessage, bool?>
	{
	}
}

using Catel.Messaging;
using GoldenFrogVPN;
using System;

namespace VyprVPN.Messages
{
	public class SettingsChangedMessage : MessageBase<SettingsChangedMessage, AccountSettingsBag>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class SetUpdateChangeLogMessage : MessageBase<SetUpdateChangeLogMessage, Uri>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class ThroughputMeasuredMessage : MessageBase<ThroughputMeasuredMessage, ThroughputMeasurement>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class TimeConnectedChangedMessage : MessageBase<TimeConnectedChangedMessage, string>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class UIStateChangedMessage : MessageBase<UIStateChangedMessage, IUIState>
	{
	}
}

using Catel.Messaging;
using GoldenFrogVPN;
using System;

namespace VyprVPN.Messages
{
	public class UpgradeAvailableMessage : MessageBase<UpgradeAvailableMessage, UpgradeAvailableEventArgs>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class UsernameChangedMessage : MessageBase<UsernameChangedMessage, string>
	{
	}
}

using Catel.Messaging;
using System;

namespace VyprVPN.Messages
{
	public class VyprVPNStateChangedMessage : MessageBase<VyprVPNStateChangedMessage, IVyprVPNController>
	{
	}
}
