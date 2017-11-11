using System;
using System.IO;

namespace ibVPN.Helpers
{
	public class Logger
	{
		private string __log_file_path;

		public string filePath
		{
			get
			{
				return this.__log_file_path;
			}
			set
			{
				if (value.Length > 0)
				{
					this.__log_file_path = value;
				}
			}
		}

		public void flush()
		{
			File.WriteAllText(this.filePath, string.Empty);
		}

		public void log(string msg)
		{
			try
			{
				if (msg.Length > 0 && File.Exists(this.filePath))
				{
					using (StreamWriter streamWriter = new StreamWriter(this.filePath, true))
					{
						streamWriter.WriteLine("{0} : {1}", string.Format("{0:[dd.MM.yyyy HH:mm:ss]} ", DateTime.Now), msg);
						streamWriter.Flush();
					}
				}
			}
			catch
			{
			}
		}
	}
}
