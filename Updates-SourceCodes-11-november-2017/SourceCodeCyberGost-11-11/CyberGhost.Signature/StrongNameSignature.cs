using System;
using System.IO;
using System.Reflection;

namespace CyberGhost.Signature
{
	public static class StrongNameSignature
	{
		private static bool CheckAssemblyToken(string assembly, byte[] expectedToken)
		{
			bool result;
			try
			{
				Assembly expr_06 = Assembly.LoadFrom(assembly);
				byte[] array = (expr_06 != null) ? expr_06.GetName().GetPublicKeyToken() : null;
				if (((array != null) ? new int?(array.Length) : null) != expectedToken.Length)
				{
					result = false;
				}
				else
				{
					for (int i = 0; i < array.Length; i++)
					{
						if (array[i] != expectedToken[i])
						{
							result = false;
							return result;
						}
					}
					result = true;
				}
			}
			catch (FileNotFoundException)
			{
				result = false;
			}
			catch (BadImageFormatException)
			{
				result = false;
			}
			return result;
		}

		public static bool SelfCheckAssembly(string assembly)
		{
			byte[] expectedToken = new byte[]
			{
				154,
				229,
				93,
				251,
				182,
				170,
				154,
				110
			};
			return StrongNameSignature.CheckAssemblyToken(assembly, expectedToken);
		}
	}
}
