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
    public partial class Avengers1_quiz3 : System.Web.UI.Page
    {
        SqlConnection cnn;
        string email;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;
            cnn = new SqlConnection(cs);
            cnn.Open();

            HttpCookie c = Request.Cookies["email"];
            email = c.Value;
        }

        protected void Next_Click(object sender, EventArgs e)
        {
            if (radioButton2.Selected == true)
            {
                string ans = "UPDATE quiz_table SET quiz = quiz + 1 WHERE email = '" + email + "'";
                SqlCommand sqlCmd = new SqlCommand(ans, cnn);
                sqlCmd.ExecuteNonQuery();
            }
            Response.Redirect("Avengers1_quiz4.aspx");
            cnn.Close();
        }

        protected void Previous_Click(object sender, EventArgs e)
        {
            Response.Redirect("Avengers1_quiz2.aspx");
        }
    }
}