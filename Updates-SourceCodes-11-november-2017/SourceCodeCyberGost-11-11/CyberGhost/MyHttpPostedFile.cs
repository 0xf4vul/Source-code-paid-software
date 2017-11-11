using System;
using System.IO;
using ZendeskApi.Contracts.Models;

namespace CyberGhost
{
	public class MyHttpPostedFile : IHttpPostedFile
	{
		public string ContentType
		{
			get;
			set;
		}

		public string FileName
		{
			get;
			set;
		}

		public Stream InputStream
		{
			get;
			set;
		}
	}
}
