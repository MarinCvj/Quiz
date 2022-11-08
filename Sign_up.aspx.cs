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
    public partial class Sign_up : System.Web.UI.Page
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

            string user = "INSERT INTO quiz_users (email, password) VALUES ('" + email_text + "','" + password_text + "')";
            SqlCommand sqlCmd = new SqlCommand(user, cnn);
            sqlCmd.ExecuteNonQuery();

            HttpCookie c = new HttpCookie("email");
            c.Value = email_text;
            c.Expires.Add(new TimeSpan(1, 0, 0));
            Response.Cookies.Add(c);

            Response.Redirect("~/Quizes.aspx");
            cnn.Close();
        }
    }
}