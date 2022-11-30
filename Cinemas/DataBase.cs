using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Cinemas
{
	class DataBase
	{
        public static void TryConnect(string connection_string)
        {
			try
			{
                connection = new SqlConnection(connection_string);
                connection.Open();
			}
            catch (SqlException e)
			{
                MessageBox.Show(e.ToString(), "Error", MessageBoxButtons.OK);
			}
        }

        public static void TryCloseConnection()
		{
			try
			{
                connection.Close();
			}
            catch(SqlException e)
			{
                MessageBox.Show(e.ToString(), "Error", MessageBoxButtons.OK);
            }
		}

        public static void GetUserData(string login, string password)
		{
            DataTable userData = GetData($"SELECT [code], [login], [first name], [second name], [third name], [email] FROM [user] WHERE [user].login = '{login}' AND [user].password = '{password}';");
            if (userData.Rows.Count == 0)
            {
                MessageBox.Show("Invalid login or password", "Error", MessageBoxButtons.OK);
            }
            User.GetInstance().Data = new UserBuilder().SetUserID(Convert.ToInt32(userData.Rows[0][0])).
                                                        SetUsername(userData.Rows[0][1].ToString()).
                                                        SetEmail(userData.Rows[0][2].ToString()).
                                                        SetFirstName(userData.Rows[0][3].ToString()).
                                                        SetSecondName(userData.Rows[0][4].ToString()).
                                                        SetThirdName(userData.Rows[0][5].ToString()).
                                                        Build();
		}

        public static DataTable GetData(string query)
        {
            sqlCommand = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
            DataTable data = new DataTable();
            adapter.Fill(data);
            return data;
        }

        public static int SetData(string query)
        {
            sqlCommand = new SqlCommand(query, connection);
            return sqlCommand.ExecuteNonQuery();
        }

        private DataBase() { }

        private static SqlConnection connection;
        private static SqlCommand sqlCommand;

    }
}
