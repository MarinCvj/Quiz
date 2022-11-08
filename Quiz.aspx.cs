﻿using System;
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
    public partial class Quiz : System.Web.UI.Page
    {
        SqlConnection cnn;
        string email;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string cs = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;
                cnn = new SqlConnection(cs);
                cnn.Open();

                HttpCookie c = Request.Cookies["email"];
                email = c.Value;

                string QuizID = Request.QueryString["quiz_id"];
                string QuestionNumber = Request.QueryString["question_no"];

                string cmdString = "" +
                    "SELECT * FROM quiz_question WHERE id_quiz=" + QuizID +" AND sortorder=" + QuestionNumber + " ORDER BY sortorder;" +
                    "SELECT a.* FROM quiz q" +
                    "   INNER JOIN quiz_question qq ON q.quiz_id = qq.id_quiz" +
                    "   INNER JOIN quiz_answer a ON qq.question_id = a.id_question" +
                    "   WHERE q.quiz_id = " + QuizID +
                    "        and qq.sortorder = " + QuestionNumber +
                    "   ORDER BY sortorder";
                SqlCommand sqlCmd = new SqlCommand(cmdString, cnn);

                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = sqlCmd;
                DataSet ds = new DataSet();
                da.Fill(ds);

                rptQuizQuestion.DataSource = ds.Tables[0];
                rptQuizQuestion.DataBind();

                for (int i = 0; i < ds.Tables[1].Rows.Count; i++)
                {
                    ListItem li = new ListItem(ds.Tables[1].Rows[i]["answer"].ToString(), ds.Tables[1].Rows[i]["answer_id"].ToString());
                    RadioListAnswers.Items.Add(li);
                }

                cnn.Close();
            }
        }

        protected void RptQuizQuestion_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {

                Literal qName = e.Item.FindControl("litName") as Literal;

                DataRowView row = (DataRowView)e.Item.DataItem;

                qName.Text = row["question"].ToString();
            }
        }

        protected void Previous_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://localhost:44382/quiz.aspx");
        }

        protected void Next_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://localhost:44382/quiz.aspx?quiz_id=1&question_no=2");
        }
    }
}
