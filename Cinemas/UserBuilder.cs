using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cinemas
{
	public class UserBuilder
	{
		private UserData userData;

		public UserBuilder()
		{
			userData = new UserData();
		}

		public UserBuilder SetUserID(int id)
		{
			userData.UserID = id;
			return this;
		}

		public UserBuilder SetUsername(string username)
		{
			userData.Username = username;
			return this;
		}

		public UserBuilder SetEmail(string email)
		{
			userData.UserEmail = email;
			return this;
		}

		public UserBuilder SetFirstName(string firstName)
		{
			userData.UserFirstName = firstName;
			return this;
		}

		public UserBuilder SetSecondName(string secondName)
		{
			userData.UserSecondName = secondName;
			return this;
		}

		public UserBuilder SetThirdName(string thirdName)
		{
			userData.UserThirdName = thirdName;
			return this;
		}

		public UserData Build()
		{
			return userData;
		}

	}
}
