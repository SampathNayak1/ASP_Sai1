using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Sai1
{
    public partial class queryStrin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username=Request.QueryString["Username"];
            string password=Request.QueryString["Password"];
            lbl1.Text = "Welcome " + username + " " + password;
        }
    }
}