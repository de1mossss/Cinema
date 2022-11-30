using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Cinemas
{
	public partial class AuthorizationForm : Form
	{
		public AuthorizationForm()
		{
			InitializeComponent();
		}

		private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
		{
			RegistrationForm regForm = new RegistrationForm();
			ControlForm.mainForm.ShowNewForm(regForm);
		}

		private void LoginButton_Click(object sender, EventArgs e)
		{
            string login = usernameTextBox.Text;
            string password = passwordTextBox.Text;
            DataBase.GetUserData(login, password);
            try
            {
                MessageBox.Show($"Добро пожаловать, {User.GetInstance().Data.UserFirstName}!");
            }
            catch (Exception exception)
            {
                MessageBox.Show(exception.ToString(), "Error", MessageBoxButtons.OK);
            }
            
        }

	}
}
