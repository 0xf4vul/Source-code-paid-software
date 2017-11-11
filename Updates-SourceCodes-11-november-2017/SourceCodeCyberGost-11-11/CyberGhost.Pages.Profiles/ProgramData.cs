using CyberGhost.Helpers;
using CyberGhost.RESTCommunicator.Classes;
using MobileConcepts.Helpers;
using System;
using System.Drawing;
using System.IO;
using System.Reflection;

namespace CyberGhost.Pages.Profiles
{
	public class ProgramData
	{
		public int Id
		{
			get;
			set;
		}

		public string ExeName
		{
			get;
			set;
		}

		public string RegName
		{
			get;
			set;
		}

		public Uri ExeImage
		{
			get;
			set;
		}

		public string Tag
		{
			get;
			set;
		}

		public string ToolTip
		{
			get;
			set;
		}

		public string ApplicationExe
		{
			get;
			set;
		}

		public bool Visible
		{
			get;
			set;
		}

		public ProgramData(CgApiProgram program, bool visible = false)
		{
			string uriString = this.IconFromFilePath(program.GetApplicationExe());
			this.ExeImage = new Uri(uriString);
			this.ExeName = program.GetApplicationDescription();
			this.ToolTip = program.get_ExeName();
			this.ApplicationExe = program.GetApplicationExe();
			this.Visible = visible;
		}

		public ProgramData(string fileName, bool visible = false)
		{
			string text = this.IconFromFilePath(fileName);
			if (!string.IsNullOrEmpty(text) && File.Exists(text))
			{
				this.ExeImage = new Uri(text);
			}
			else
			{
				this.ExeImage = new Uri(Theming.GetThemedImage("Icons\\Functions\\blank_tile.png"));
			}
			this.ExeName = Path.GetFileName(fileName);
			this.Tag = "";
			this.ToolTip = fileName;
			this.ApplicationExe = fileName;
			this.Visible = visible;
		}

		public ProgramData()
		{
		}

		public string IconFromFilePath(string filePath)
		{
			try
			{
				Icon icon = Icon.ExtractAssociatedIcon(filePath);
				string fileName = Path.GetFileName(filePath);
				string text = Path.Combine(HelperFunctions.GetUserDataAppPath("CyberGhost", true), "", fileName + ".png");
				string text2 = Path.Combine(HelperFunctions.GetUserDataAppPath("CyberGhost", true), "", fileName + ".ico");
				string result;
				if (icon != null)
				{
					if (File.Exists(text))
					{
						result = text;
						return result;
					}
					using (FileStream fileStream = new FileStream(text2, FileMode.CreateNew))
					{
						icon.Save(fileStream);
					}
					HelperFunctions.IcoToPng(text2, text);
					if (File.Exists(text2))
					{
						File.Delete(text2);
					}
				}
				result = text;
				return result;
			}
			catch (Exception ex)
			{
				HelperFunctions.DebugLine(string.Format("{0}::{1} COULD NOT GET ICON {2}", base.GetType().Name, MethodBase.GetCurrentMethod().Name, ex.Message));
			}
			return string.Empty;
		}
	}
}
