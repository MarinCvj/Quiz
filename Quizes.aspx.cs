using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Quiz_web
{
    public partial class Quizes : System.Web.UI.Page
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

            string cmdString = "SELECT * FROM quiz ORDER BY sortorder";
            SqlCommand sqlCmd = new SqlCommand(cmdString, cnn);

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = sqlCmd;
            DataTable dt = new DataTable();
            da.Fill(dt);

            rptQuiz.DataSource = dt;
            rptQuiz.DataBind();

            cnn.Close();
        }

        protected void rptQuiz_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                HyperLink qLink = e.Item.FindControl("quizLink") as HyperLink;
                Image qImage = e.Item.FindControl("quizImage") as Image;
                Literal qName = e.Item.FindControl("litName") as Literal;

                DataRowView row = (DataRowView)e.Item.DataItem;

                qLink.NavigateUrl = "~/quiz.aspx?quiz_id=" + row["quiz_id"] + "&question_no=1";
                qImage.ImageUrl = "~/" + row["image_url"];
                qName.Text = row["name"].ToString();

            }
        }
    }
}