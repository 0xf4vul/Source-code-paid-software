using NordVpn.Core.Abstract;
using NordVpn.Core.Abstract.Log;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Shared;
using System;
using System.IO;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Threading.Tasks;

namespace NordVpn.AppServices
{
	public class OpenVpnConfigsDownloadManager
	{
		private readonly ILogger _logger;

		private readonly string _openVpnConfigsDirectory;

		private static readonly SemaphoreSlim ConfigsWrittingInProgressMutex = new SemaphoreSlim(1, 1);

		private Task _bulkGetConfigsDeferall;

		private readonly object _deferallLock = new object();

		private readonly IOpenVpnConfigsStore _configsStore;

		public OpenVpnConfigsDownloadManager(string openVpnConfigsDirectory, IOpenVpnConfigsStore configsStore, ILogger logger)
		{
			this._configsStore = configsStore;
			this._openVpnConfigsDirectory = openVpnConfigsDirectory;
			this._logger = logger;
		}

		[AsyncStateMachine(typeof(OpenVpnConfigsDownloadManager.<GetConfigAsync>d__7))]
		public Task<string> GetConfigAsync(string domain, VpnProtocol protocol)
		{
			OpenVpnConfigsDownloadManager.<GetConfigAsync>d__7 <GetConfigAsync>d__;
			<GetConfigAsync>d__.<>4__this = this;
			<GetConfigAsync>d__.domain = domain;
			<GetConfigAsync>d__.protocol = protocol;
			<GetConfigAsync>d__.<>t__builder = AsyncTaskMethodBuilder<string>.Create();
			<GetConfigAsync>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<string> <>t__builder = <GetConfigAsync>d__.<>t__builder;
			<>t__builder.Start<OpenVpnConfigsDownloadManager.<GetConfigAsync>d__7>(ref <GetConfigAsync>d__);
			return <GetConfigAsync>d__.<>t__builder.Task;
		}

		public Task GetBulkGetConfigsDeferall()
		{
			object deferallLock = this._deferallLock;
			lock (deferallLock)
			{
				if (this._bulkGetConfigsDeferall == null)
				{
					this._bulkGetConfigsDeferall = Task.Run(new Func<Task>(this.BulkGetConfigAsync));
				}
			}
			return this._bulkGetConfigsDeferall;
		}

		[AsyncStateMachine(typeof(OpenVpnConfigsDownloadManager.<BulkGetConfigAsync>d__9))]
		public Task BulkGetConfigAsync()
		{
			OpenVpnConfigsDownloadManager.<BulkGetConfigAsync>d__9 <BulkGetConfigAsync>d__;
			<BulkGetConfigAsync>d__.<>4__this = this;
			<BulkGetConfigAsync>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<BulkGetConfigAsync>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <BulkGetConfigAsync>d__.<>t__builder;
			<>t__builder.Start<OpenVpnConfigsDownloadManager.<BulkGetConfigAsync>d__9>(ref <BulkGetConfigAsync>d__);
			return <BulkGetConfigAsync>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(OpenVpnConfigsDownloadManager.<Unzip>d__10))]
		private Task Unzip(Stream zip, string path)
		{
			OpenVpnConfigsDownloadManager.<Unzip>d__10 <Unzip>d__;
			<Unzip>d__.<>4__this = this;
			<Unzip>d__.zip = zip;
			<Unzip>d__.path = path;
			<Unzip>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<Unzip>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <Unzip>d__.<>t__builder;
			<>t__builder.Start<OpenVpnConfigsDownloadManager.<Unzip>d__10>(ref <Unzip>d__);
			return <Unzip>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(OpenVpnConfigsDownloadManager.<SaveConfig>d__11))]
		private Task SaveConfig(string path, Stream configContent)
		{
			OpenVpnConfigsDownloadManager.<SaveConfig>d__11 <SaveConfig>d__;
			<SaveConfig>d__.<>4__this = this;
			<SaveConfig>d__.path = path;
			<SaveConfig>d__.configContent = configContent;
			<SaveConfig>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<SaveConfig>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <SaveConfig>d__.<>t__builder;
			<>t__builder.Start<OpenVpnConfigsDownloadManager.<SaveConfig>d__11>(ref <SaveConfig>d__);
			return <SaveConfig>d__.<>t__builder.Task;
		}

		private string GetFullConfigPath(string domain, VpnProtocol protocol)
		{
			return Path.Combine(Path.Combine(this._openVpnConfigsDirectory, OpenVpnConfigsDownloadManager.GetStringByProtocol(protocol)).EnsureDirectoryExists(), string.Format("{0}.{1}.ovpn", domain, OpenVpnConfigsDownloadManager.GetTcpOrUdp(protocol)));
		}

		private static string GetStringByProtocol(VpnProtocol protocol)
		{
			switch (protocol)
			{
			case 0:
				return "ovpn_udp";
			case 1:
				return "ovpn_tcp";
			case 2:
				return "xor\\ovpn_udp";
			case 3:
				return "xor\\ovpn_tcp";
			default:
				throw new NotSupportedException();
			}
		}

		private static string GetTcpOrUdp(VpnProtocol protocol)
		{
			switch (protocol)
			{
			case 0:
			case 2:
				return "udp";
			case 1:
			case 3:
				return "tcp";
			default:
				throw new NotSupportedException();
			}
		}
	}
}
