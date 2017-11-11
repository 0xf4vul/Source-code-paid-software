using CyberGhost.Components.Mixpanel;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.RESTCommunicator.Helpers;
using CyberGhost.RESTCommunicator.OAuth;
using CyberGhost.Settings;
using CyberGhost.Translations;
using MobileConcepts.Helpers;
using System;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Threading.Tasks;

namespace CyberGhost.Helpers
{
	public static class Helper
	{
		internal static void UpdateTranslations()
		{
			Settings.Culture = Thread.CurrentThread.CurrentCulture;
			Account.Culture = Thread.CurrentThread.CurrentCulture;
			Alerts.Culture = Thread.CurrentThread.CurrentCulture;
			Components.Culture = Thread.CurrentThread.CurrentCulture;
			General.Culture = Thread.CurrentThread.CurrentCulture;
			Home.Culture = Thread.CurrentThread.CurrentCulture;
			CyberGhost.Translations.MainWindow.Culture = Thread.CurrentThread.CurrentCulture;
			Profiles.Culture = Thread.CurrentThread.CurrentCulture;
			CyberGhost.Translations.Splash.Culture = Thread.CurrentThread.CurrentCulture;
			Status.Culture = Thread.CurrentThread.CurrentCulture;
		}

		public static async Task<CgApiUser> GetNewAutoCreatedUser()
		{
			int num;
			CgApiUser result;
			CgApiUser cgApiUser;
			if (num > 1)
			{
				if (Theming.CurrentTheme == Theming.Theme.Pro)
				{
					result = null;
					return result;
				}
				cgApiUser = new CgApiUser(OAuthData.GetOAuthRequestInfos());
			}
			try
			{
				TaskAwaiter<CgApiUser.CgApiOauthCredentials> var_4 = cgApiUser.CreateUserAndGetCredentials(OAuthInfos.ClientId, SettingsHolder.get_Settings().get_Language(), null, null).GetAwaiter();
				if (!var_4.IsCompleted)
				{
					await var_4;
					TaskAwaiter<CgApiUser.CgApiOauthCredentials> taskAwaiter;
					var_4 = taskAwaiter;
					taskAwaiter = default(TaskAwaiter<CgApiUser.CgApiOauthCredentials>);
				}
				CgApiUser.CgApiOauthCredentials arg_D0_0 = var_4.GetResult();
				var_4 = default(TaskAwaiter<CgApiUser.CgApiOauthCredentials>);
				CgApiUser.CgApiOauthCredentials cgApiOauthCredentials = arg_D0_0;
				if (cgApiOauthCredentials == null)
				{
					result = null;
					return result;
				}
				SettingsHolder.get_Settings().set_ENC_AuthToken(cgApiOauthCredentials.ToString());
				SettingsHolder.get_Settings().SaveSettingsAsync(false).ConfigureAwait(false);
				OAuthRequestInfos oAuthRequestInfos = OAuthData.GetOAuthRequestInfos();
				oAuthRequestInfos.UserKey = cgApiOauthCredentials.get_Token();
				oAuthRequestInfos.UserSecret = cgApiOauthCredentials.get_TokenSecret();
				CgApiGlobalOAuthData.set_OAuthRequestInfos(oAuthRequestInfos);
				cgApiUser = new CgApiUser(oAuthRequestInfos);
				ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter var_5 = cgApiUser.Fetch().ConfigureAwait(false).GetAwaiter();
				if (!var_5.IsCompleted)
				{
					await var_5;
					ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter configuredTaskAwaiter;
					var_5 = configuredTaskAwaiter;
					configuredTaskAwaiter = default(ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter);
				}
				var_5.GetResult();
				var_5 = default(ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter);
				new CgApiUserCertificateManager().Fetch(cgApiUser.get_Token(), Constants.get_UserDataPath(), Constants.get_OpenVpnBinPath()).ConfigureAwait(false);
				if (ObjectHolder.UserNotAuthorizedErrorHandler != null)
				{
					CgApiGlobalOAuthData.get_OAuthRequestInfos().UserNotAuthorizedErrorHandler = ObjectHolder.UserNotAuthorizedErrorHandler;
				}
				if (ObjectHolder.ServiceNotAvailablErrorHandler != null)
				{
					OAuthRequestInfos expr_1CE = CgApiGlobalOAuthData.get_OAuthRequestInfos();
					expr_1CE.ServiceNotAvailablErrorHandler = (JsonOAuthRestClient.OnHttpErrorHandler)Delegate.Combine(expr_1CE.ServiceNotAvailablErrorHandler, ObjectHolder.ServiceNotAvailablErrorHandler);
				}
			}
			catch (WebException var_7_1EA)
			{
				HelperFunctions.DebugLine("UNKNOWN WEBEXCEPTION IN GetNewAutoCreatedUser: " + var_7_1EA.Message);
				result = null;
				return result;
			}
			result = cgApiUser;
			return result;
		}

		public static async Task<CgApiUser> GetUserByCredentials(CgApiUser.CgApiOauthCredentials credentials)
		{
			SettingsHolder.get_Settings().set_ENC_AuthToken(credentials.ToString());
			SettingsHolder.get_Settings().SaveSettingsAsync(false).ConfigureAwait(false);
			OAuthRequestInfos oAuthRequestInfos = OAuthData.GetOAuthRequestInfos();
			oAuthRequestInfos.UserKey = credentials.get_Token();
			oAuthRequestInfos.UserSecret = credentials.get_TokenSecret();
			CgApiGlobalOAuthData.set_OAuthRequestInfos(oAuthRequestInfos);
			if (ObjectHolder.UserNotAuthorizedErrorHandler != null)
			{
				CgApiGlobalOAuthData.get_OAuthRequestInfos().UserNotAuthorizedErrorHandler = ObjectHolder.UserNotAuthorizedErrorHandler;
			}
			if (ObjectHolder.ServiceNotAvailablErrorHandler != null)
			{
				OAuthRequestInfos expr_84 = CgApiGlobalOAuthData.get_OAuthRequestInfos();
				expr_84.ServiceNotAvailablErrorHandler = (JsonOAuthRestClient.OnHttpErrorHandler)Delegate.Combine(expr_84.ServiceNotAvailablErrorHandler, ObjectHolder.ServiceNotAvailablErrorHandler);
			}
			CgApiUser cgApiUser = new CgApiUser(oAuthRequestInfos);
			CgApiUser result;
			try
			{
				await cgApiUser.Fetch();
				new CgApiUserCertificateManager().Fetch(cgApiUser.get_Token(), Constants.get_UserDataPath(), Constants.get_OpenVpnBinPath()).ConfigureAwait(false);
			}
			catch (WebException var_4_13F)
			{
				HelperFunctions.DebugLine("UNKNOWN WEBEXCEPTION IN GetUserByCredentials: " + var_4_13F.Message);
				result = null;
				return result;
			}
			result = cgApiUser;
			return result;
		}

		public static Task<LoginResultObject> Login()
		{
			return Helper.Login(string.Empty, string.Empty, false);
		}

		public static async Task<LoginResultObject> Login(string username, string password, bool notifyIfCredentialsAreCorrect = false)
		{
			Helper.<>c__DisplayClass4_0 <>c__DisplayClass4_ = new Helper.<>c__DisplayClass4_0();
			<>c__DisplayClass4_.notifyIfCredentialsAreCorrect = notifyIfCredentialsAreCorrect;
			CgApiUser cgApiUser = new CgApiUser();
			LoginResultObject loginResultObject = new LoginResultObject();
			CgApiUser.CgApiOauthCredentials cgApiOauthCredentials = null;
			LoginResultObject result;
			try
			{
				if (!string.IsNullOrEmpty(password))
				{
					CgApiUser.CgApiOauthCredentials cgApiOauthCredentials2 = await cgApiUser.GetOauthCredentials(username, password).ConfigureAwait(false);
					cgApiOauthCredentials = cgApiOauthCredentials2;
					if (cgApiOauthCredentials == null)
					{
						loginResultObject.LoginStatusCode = HttpStatusCode.NotFound;
						result = loginResultObject;
						return result;
					}
				}
			}
			catch (WebException var_8_10D)
			{
				if (var_8_10D.Response != null)
				{
					loginResultObject.LoginStatusCode = ((HttpWebResponse)var_8_10D.Response).StatusCode;
				}
				else
				{
					loginResultObject.LoginStatusCode = HttpStatusCode.RequestTimeout;
				}
				result = loginResultObject;
				return result;
			}
			loginResultObject.LoginStatusCode = HttpStatusCode.OK;
			loginResultObject.LoginCredentials = cgApiOauthCredentials;
			if (ObjectHolder.CyberGhostCom.GetConnectionStatus() == null)
			{
				ObjectHolder.MainForm.Disconnect();
			}
			CgApiUser cgApiUser2;
			if (cgApiOauthCredentials != null)
			{
				ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter var_10 = Helper.GetUserByCredentials(cgApiOauthCredentials).ConfigureAwait(false).GetAwaiter();
				if (!var_10.IsCompleted)
				{
					await var_10;
					ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter configuredTaskAwaiter;
					var_10 = configuredTaskAwaiter;
					configuredTaskAwaiter = default(ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter);
				}
				CgApiUser arg_250_0 = var_10.GetResult();
				var_10 = default(ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter);
				cgApiUser2 = arg_250_0;
			}
			else
			{
				ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter var_10 = Helper.GetNewAutoCreatedUser().ConfigureAwait(false).GetAwaiter();
				if (!var_10.IsCompleted)
				{
					await var_10;
					ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter configuredTaskAwaiter;
					var_10 = configuredTaskAwaiter;
					configuredTaskAwaiter = default(ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter);
				}
				CgApiUser arg_27F_0 = var_10.GetResult();
				var_10 = default(ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter);
				cgApiUser2 = arg_27F_0;
			}
			if (cgApiUser2 != null && cgApiUser2.get_Id() != 0)
			{
				loginResultObject.User = cgApiUser2;
				CgApiUser currentUser = ObjectHolder.CurrentUser;
				ObjectHolder.CurrentUser = cgApiUser2;
				SettingsHolder.get_Settings().set_LastProductId(ObjectHolder.CurrentUser.get_Subscription().get_Product().get_Id());
				SettingsHolder.get_Settings().set_LastUserId(ObjectHolder.CurrentUser.get_Id());
				if (ObjectHolder.MainForm != null)
				{
					ObjectHolder.MainContext.Post(delegate(object o)
					{
						Helper.<>c__DisplayClass4_0.<<Login>b__0>d <<Login>b__0>d;
						<<Login>b__0>d.<>4__this = <>c__DisplayClass4_;
						<<Login>b__0>d.<>t__builder = AsyncVoidMethodBuilder.Create();
						<<Login>b__0>d.<>1__state = -1;
						AsyncVoidMethodBuilder <>t__builder = <<Login>b__0>d.<>t__builder;
						<>t__builder.Start<Helper.<>c__DisplayClass4_0.<<Login>b__0>d>(ref <<Login>b__0>d);
					}, null);
				}
				if (currentUser != null && !currentUser.get_Id().Equals(cgApiUser2.get_Id()))
				{
					try
					{
						string var_13_339 = Path.Combine(Constants.get_UserDataPath(), string.Format("{0}.crt", currentUser.get_Token()));
						if (File.Exists(var_13_339))
						{
							File.Delete(var_13_339);
						}
					}
					catch (Exception)
					{
					}
					try
					{
						string var_14_36C = Path.Combine(Constants.get_UserDataPath(), string.Format("{0}.key", currentUser.get_Token()));
						if (File.Exists(var_14_36C))
						{
							File.Delete(var_14_36C);
						}
					}
					catch (Exception)
					{
					}
					currentUser.Logout().ConfigureAwait(false);
				}
				try
				{
					string var_15_3B0 = Path.Combine(Constants.get_UserDataPath(), string.Format("{0}.crt", ObjectHolder.CurrentUser.get_Token()));
					if (File.Exists(var_15_3B0))
					{
						File.Delete(var_15_3B0);
					}
				}
				catch (Exception)
				{
				}
				try
				{
					string var_16_3E6 = Path.Combine(Constants.get_UserDataPath(), string.Format("{0}.key", ObjectHolder.CurrentUser.get_Token()));
					if (File.Exists(var_16_3E6))
					{
						File.Delete(var_16_3E6);
					}
				}
				catch (Exception)
				{
				}
				SettingsHolder.get_Settings().SaveSettingsAsync(false).ConfigureAwait(false);
				result = loginResultObject;
			}
			else
			{
				loginResultObject.LoginStatusCode = HttpStatusCode.NotFound;
				result = loginResultObject;
			}
			return result;
		}

		public static async Task<bool> RefreshCurrentUser()
		{
			ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter var_2;
			ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter configuredTaskAwaiter;
			bool result;
			HttpStatusCode var_8_1A6;
			while (true)
			{
				int num;
				if (num > 1)
				{
					if (num == 2)
					{
						break;
					}
				}
				HttpStatusCode httpStatusCode;
				try
				{
					if (ObjectHolder.CurrentUser == null)
					{
						var_2 = Helper.GetCurrentUserFromSettings().ConfigureAwait(false).GetAwaiter();
						if (!var_2.IsCompleted)
						{
							await var_2;
							var_2 = configuredTaskAwaiter;
							configuredTaskAwaiter = default(ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter);
						}
						CgApiUser arg_12C_0 = var_2.GetResult();
						var_2 = default(ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter);
						ObjectHolder.CurrentUser = arg_12C_0;
					}
					else
					{
						await ObjectHolder.CurrentUser.Fetch().ConfigureAwait(false);
					}
					result = true;
					return result;
				}
				catch (WebException var_6_138)
				{
					httpStatusCode = ((!var_6_138.GetType().IsAssignableFrom(typeof(HttpWebResponse)) || var_6_138.Response == null) ? HttpStatusCode.GatewayTimeout : ((HttpWebResponse)var_6_138.Response).StatusCode);
				}
				catch (Exception var_7_17B)
				{
					HelperFunctions.DebugLine("UNKNOWN EXCEPTION IN RefreshCurrentUser: " + var_7_17B.Message);
					httpStatusCode = HttpStatusCode.GatewayTimeout;
				}
				var_8_1A6 = httpStatusCode;
				if (var_8_1A6 - HttpStatusCode.Unauthorized > 1)
				{
					goto Block_3;
				}
				var_2 = Helper.GetNewAutoCreatedUser().ConfigureAwait(false).GetAwaiter();
				if (var_2.IsCompleted)
				{
					goto IL_1FF;
				}
				await var_2;
			}
			var_2 = configuredTaskAwaiter;
			configuredTaskAwaiter = default(ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter);
			goto IL_1FF;
			Block_3:
			if (var_8_1A6 != HttpStatusCode.GatewayTimeout)
			{
				goto IL_213;
			}
			result = true;
			return result;
			IL_1FF:
			CgApiUser arg_20E_0 = var_2.GetResult();
			var_2 = default(ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter);
			ObjectHolder.CurrentUser = arg_20E_0;
			IL_213:
			result = false;
			return result;
		}

		public static async Task<CgApiUser> GetCurrentUserFromSettings()
		{
			bool flag = false;
			CgApiUser cgApiUser2;
			CgApiUser result;
			if (string.IsNullOrEmpty(SettingsHolder.get_Settings().get_ENC_AuthToken()))
			{
				flag = true;
				TaskAwaiter<CgApiUser> var_3 = Helper.GetNewAutoCreatedUser().GetAwaiter();
				if (!var_3.IsCompleted)
				{
					await var_3;
					TaskAwaiter<CgApiUser> taskAwaiter;
					var_3 = taskAwaiter;
					taskAwaiter = default(TaskAwaiter<CgApiUser>);
				}
				CgApiUser arg_FD_0 = var_3.GetResult();
				var_3 = default(TaskAwaiter<CgApiUser>);
				CgApiUser cgApiUser = arg_FD_0;
				cgApiUser2 = cgApiUser;
				if (cgApiUser2 == null)
				{
					result = null;
					return result;
				}
				SettingsHolder.get_Settings().set_LastUserId(cgApiUser2.get_Id());
				SettingsHolder.get_Settings().set_LastProductId(cgApiUser2.get_Subscription().get_Product().get_Id());
				GuiHelper.ResetProfilesToDefault(cgApiUser2);
			}
			else
			{
				CgApiUser.CgApiOauthCredentials var_4_77 = new CgApiUser.CgApiOauthCredentials();
				var_4_77.FromString(SettingsHolder.get_Settings().get_ENC_AuthToken());
				OAuthRequestInfos var_5_90 = OAuthData.GetOAuthRequestInfos();
				var_5_90.UserKey = var_4_77.get_Token();
				var_5_90.UserSecret = var_4_77.get_TokenSecret();
				CgApiGlobalOAuthData.set_OAuthRequestInfos(var_5_90);
				cgApiUser2 = new CgApiUser(var_5_90);
				HttpStatusCode httpStatusCode = HttpStatusCode.OK;
				try
				{
					flag = (await cgApiUser2.Fetch() && cgApiUser2.get_Id() > 0);
				}
				catch (WebException var_8_1E7)
				{
					httpStatusCode = ((HttpWebResponse)var_8_1E7.Response).StatusCode;
				}
				if (httpStatusCode == HttpStatusCode.OK && (!cgApiUser2.get_Active() || cgApiUser2.get_Id() == 0))
				{
					httpStatusCode = HttpStatusCode.PaymentRequired;
				}
				HttpStatusCode var_9_23A = httpStatusCode;
				if (var_9_23A != HttpStatusCode.OK)
				{
					if (var_9_23A - HttpStatusCode.Unauthorized <= 1)
					{
						TaskAwaiter<CgApiUser> var_3 = Helper.GetNewAutoCreatedUser().GetAwaiter();
						if (!var_3.IsCompleted)
						{
							await var_3;
							TaskAwaiter<CgApiUser> taskAwaiter;
							var_3 = taskAwaiter;
							taskAwaiter = default(TaskAwaiter<CgApiUser>);
						}
						CgApiUser arg_316_0 = var_3.GetResult();
						var_3 = default(TaskAwaiter<CgApiUser>);
						CgApiUser cgApiUser = arg_316_0;
						cgApiUser2 = cgApiUser;
						flag = (cgApiUser2 != null);
					}
				}
				else
				{
					new CgApiUserCertificateManager().Fetch(cgApiUser2.get_Token(), Constants.get_UserDataPath(), Constants.get_OpenVpnBinPath());
					if (ObjectHolder.UserNotAuthorizedErrorHandler != null)
					{
						CgApiGlobalOAuthData.get_OAuthRequestInfos().UserNotAuthorizedErrorHandler = ObjectHolder.UserNotAuthorizedErrorHandler;
					}
					if (ObjectHolder.ServiceNotAvailablErrorHandler != null)
					{
						OAuthRequestInfos expr_2CF = CgApiGlobalOAuthData.get_OAuthRequestInfos();
						expr_2CF.ServiceNotAvailablErrorHandler = (JsonOAuthRestClient.OnHttpErrorHandler)Delegate.Combine(expr_2CF.ServiceNotAvailablErrorHandler, ObjectHolder.ServiceNotAvailablErrorHandler);
					}
				}
			}
			result = ((!flag) ? null : cgApiUser2);
			return result;
		}

		public static async Task<Uri> GetLink(string aLinkId)
		{
			CgApiLink cgApiLink = new CgApiLink();
			Uri result;
			if (await cgApiLink.Fetch(aLinkId, null).ConfigureAwait(false) && !string.IsNullOrWhiteSpace(cgApiLink.get_ParsedUrl()))
			{
				Uri var_4_B1 = new Uri(cgApiLink.get_ParsedUrl());
				if (!string.IsNullOrEmpty(Constants.get_AffiliateId()))
				{
					var_4_B1 = Helper.AddQueryParam(var_4_B1, "affiliate", Constants.get_AffiliateId());
				}
				result = var_4_B1;
			}
			else
			{
				result = null;
			}
			return result;
		}

		public static async Task<Uri> GetAuthLink(string aLinkId, IDictionary<string, string> linkParams = null)
		{
			Uri result;
			if (ObjectHolder.CurrentUser != null)
			{
				CgApiLink cgApiLink = new CgApiLink();
				if (await cgApiLink.Fetch(aLinkId, linkParams).ConfigureAwait(false))
				{
					string text = "";
					try
					{
						text = await ObjectHolder.CurrentUser.FetchAuthToken().ConfigureAwait(false);
					}
					catch (Exception arg_138_0)
					{
						HelperFunctions.DebugLine(arg_138_0.Message);
					}
					if (SettingsHolder.get_Settings().get_LoginServer().Contains("dev-api") && cgApiLink.get_ParsedUrl().Contains("account.cyberghostvpn.com"))
					{
						cgApiLink.set_ParsedUrl("https://dev-account.cyberghostvpn.com/");
					}
					if (SettingsHolder.get_Settings().get_LoginServer().Contains("dev-api") && cgApiLink.get_ParsedUrl().Contains("pro.cyberghostvpn.com"))
					{
						cgApiLink.set_ParsedUrl("https://dev-pro.cyberghostvpn.com/order/");
					}
					Uri var_4_1DE = Helper.AddQueryParam(new Uri(cgApiLink.get_ParsedUrl()), "auth", text);
					if (!string.IsNullOrEmpty(Constants.get_AffiliateId()))
					{
						var_4_1DE = Helper.AddQueryParam(var_4_1DE, "affiliate", Constants.get_AffiliateId());
					}
					result = var_4_1DE;
					return result;
				}
				cgApiLink = null;
			}
			result = null;
			return result;
		}

		public static async Task<bool> OpenAuthLink(string aLinkId, bool userBound = false, string additionalParameters = null, bool forceToken = false, IDictionary<string, string> linkParams = null)
		{
			bool result;
			try
			{
				Uri uri;
				if (GuiHelper.IsProLoginRequired() && !forceToken)
				{
					ConfiguredTaskAwaitable<Uri>.ConfiguredTaskAwaiter var_3 = Helper.GetLink(aLinkId).ConfigureAwait(false).GetAwaiter();
					if (!var_3.IsCompleted)
					{
						await var_3;
						ConfiguredTaskAwaitable<Uri>.ConfiguredTaskAwaiter configuredTaskAwaiter;
						var_3 = configuredTaskAwaiter;
						configuredTaskAwaiter = default(ConfiguredTaskAwaitable<Uri>.ConfiguredTaskAwaiter);
					}
					Uri arg_114_0 = var_3.GetResult();
					var_3 = default(ConfiguredTaskAwaitable<Uri>.ConfiguredTaskAwaiter);
					uri = arg_114_0;
				}
				else
				{
					uri = await Helper.GetAuthLink(aLinkId, linkParams).ConfigureAwait(false);
				}
				if (userBound && ObjectHolder.CurrentUser != null)
				{
					uri = Helper.AddQueryParam(uri, "uHash", HelperFunctions.HashMd5String(aLinkId + "|uid:" + ObjectHolder.CurrentUser.get_Id()));
				}
				if (uri != null)
				{
					if (!string.IsNullOrEmpty(additionalParameters) && !uri.ToString().Contains("?"))
					{
						additionalParameters = string.Format("?{0}", additionalParameters);
					}
					HelperFunctions.OpenFileInBrowser(uri + additionalParameters, false);
					result = true;
				}
				else
				{
					result = false;
				}
			}
			catch (Exception var_6_1B1)
			{
				HelperFunctions.DebugLine(string.Format("OpenAuthLink Exception {0}", var_6_1B1.Message));
				result = false;
			}
			return result;
		}

		public static async Task<bool> OpenLink(string aLinkId, bool addDefaultParams = false)
		{
			bool result;
			try
			{
				Uri uri = await Helper.GetLink(aLinkId).ConfigureAwait(false);
				if (uri == null)
				{
					result = false;
				}
				else
				{
					string arg = string.IsNullOrEmpty(uri.Query) ? "?" : "&";
					HelperFunctions.OpenFileInBrowser(uri + (addDefaultParams ? string.Format("{0}{1}&{2}", arg, MixpanelEventSender.GetEventAsQueryString<BaseMixpanelEvent>(true, null), SettingsHolder.get_Settings().get_BannerSettings().GetSettingsAsQueryString()) : string.Empty), false);
					result = true;
				}
			}
			catch (Exception var_6_EC)
			{
				HelperFunctions.DebugLine(string.Format("OpenLink Exception {0}", var_6_EC.Message));
				result = false;
			}
			return result;
		}
	}
}
