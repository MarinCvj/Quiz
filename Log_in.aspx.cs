using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quiz_web
{
    public partial class Log_in : System.Web.UI.Page
    {
        SqlConnection cnn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;
            cnn = new SqlConnection(cs);
            cnn.Open();
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string email_text = email.Text;
            string password_text = password.Text;

            string user_get = "SELECT * FROM quiz_users WHERE email='" + email_text + "'" + "AND password='" + password_text + "'";
            SqlCommand sqlCmd = new SqlCommand(user_get, cnn);

            using (SqlDataReader sqlReader = sqlCmd.ExecuteReader())
            {
                while (sqlReader.Read())
                {
                    HttpCookie c = new HttpCookie("email");
                    c.Value = email_text;
                    c.Expires.Add(new TimeSpan(1, 0, 0));
                    Response.Cookies.Add(c);
                    Response.Redirect("~/Quizes.aspx");
                }
            }
            cnn.Close();
        }
    }
}