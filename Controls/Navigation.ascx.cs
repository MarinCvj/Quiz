using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quiz_web.Controls
{
    public partial class Navigation : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string path = Request.Url.ToString();

            if (path.Contains("Home.aspx"))
            {
                home.Attributes["class"] = "active";
            }
            else if (path.Contains("Quizes.aspx")) 
            {
                quiz.Attributes["class"] = "active";
            }
            else if (path.Contains("Sign_up.aspx"))
            {
                sign_up.Attributes["class"] = "active";
            }
            else if (path.Contains("Log_in.aspx"))
            {
                log_in.Attributes["class"] = "active";
            }
        }
    }
}