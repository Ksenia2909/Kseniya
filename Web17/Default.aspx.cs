using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.OleDb;
using System.Web.UI.WebControls;

namespace Web17
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                OleDbConnection conn = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\nks601\Desktop\Погуда№17\Web17\Web17\obj\Debug\DB.mdb");
                conn.Open();
                OleDbCommand command = new OleDbCommand("SELECT count(Код) FROM Проверка WHERE Email = '" + txtEmail.Text + "'", conn);//Создаём SQL-запрос
                int count = Convert.ToInt32(command.ExecuteScalar());

                if (count == 0)
                {
                    OleDbCommand command1 = new OleDbCommand("INSERT INTO Проверка (Name,Surname,Email) VALUES ('"+ txtFirstName.Text + "','" + txtLastName.Text + "','" + txtEmail.Text + "')", conn);
                    command1.ExecuteNonQuery();
                    lblOutput.Text = "Пользователь добавлен!";
                }
                else
                    lblOutput.Text = "Пользователь уже существует!";
            }
        }
    }
}