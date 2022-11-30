using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cinemas
{
	public class User
	{
		public UserData Data
		{
			get { return data; }
			set { data = value; }
		}

		private User()
		{ }

		public static User GetInstance()
		{
			if (Instance == null)
			{
				Instance = new User();
			}
			return Instance;
		}

		public bool UserLoginStatus => data == null;

		private static User Instance;
		private UserData data;
	}
}
