using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Sai1
{
    public partial class SessionState : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ClickCount"] == null)
            {
                Session["ClickCount"]  = 0;
            }
            lblCount.Text = "Click Count" + Session["ClickCount"].ToString();

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            int count = (int)Session["ClickCount"];
            count++;
            Session["ClickCount"]=count;
            lblCount.Text = "Click Count" + Session["ClickCount"].ToString(); 
        }
    }
}