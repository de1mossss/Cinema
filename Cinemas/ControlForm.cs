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
	public partial class ControlForm : Form
	{
		public static ControlForm mainForm;
		public ControlForm()
		{
			InitializeComponent();
			try
			{
				DataBase.TryConnect("Data Source=DESKTOP-2BVHN50;Database=Cinema;Integrated Security=True");
			}
			catch(SqlException e)
			{
				//
			}
			mainForm = this;

			if (User.GetInstance().UserLoginStatus)
			{
				AuthorizationForm authorization = new AuthorizationForm();
				ShowNewForm(authorization);
			}
		}

		public Point GetCenterOfMainForm(Form form)
		{
			return new Point(mainForm.Width / 2 - form.Width / 2, mainForm.Height / 2 - form.Height / 2);
		}

		public void ShowNewForm(Form form)
		{
			form.TopLevel = false;
			form.Location = GetCenterOfMainForm(form);
			mainForm.Controls.Clear();
			mainForm.Controls.Add(form);
			form.Show();
		}
	}
}
