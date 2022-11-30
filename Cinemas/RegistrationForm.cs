using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Cinemas
{
	public partial class RegistrationForm : Form
	{
		public RegistrationForm()
		{
			InitializeComponent();
		}

		private void signUpButton_Click(object sender, EventArgs e)
		{
            string login = usernameTextBox.Text;
            string password = passwordTextBox.Text;
            string name = firstNameTextBox.Text;
            string second_name = lastNameTextBox.Text;
            string third_name = thirdNameTextBox.Text;
            string email = emailTextBox.Text;

            try
            {
                DataBase.SetData($"INSERT INTO [user] ([login], [password], [first name], [second name], [third name], [email]) VALUES ('{login}', '{password}', '{name}', '{second_name}', '{third_name}', '{email}')");
                MessageBox.Show("Регистрация успешна", "", MessageBoxButtons.OK);
                Hide();
            }
            catch (SqlException exception)
            {
                MessageBox.Show(exception.ToString(), "Error", MessageBoxButtons.OK);
            }
        }
	}
}
