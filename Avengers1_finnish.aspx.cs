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
    public partial class Avengers1_finnish : System.Web.UI.Page
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

            string ans = "SELECT quiz FROM quiz_table WHERE email = '" + email + "'";
            SqlCommand sqlCmd = new SqlCommand(ans, cnn);
            string correct = sqlCmd.ExecuteScalar().ToString();
            lbl_score.Text = correct;
        }
    }
}