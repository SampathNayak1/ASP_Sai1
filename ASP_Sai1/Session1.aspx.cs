using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Sai1
{
    public partial class Session1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Firstname"] == null && Session["Lastname"] == null)
                {
                    Session["Firstname"] = "ABC";
                    Session["Lastname"] = "ZXC";
                    lblString.Text = "Welcome " + Session["firstname"] + " " + Session["Lastname"]; 
                }
                else
                {
                    lblString.Text = Session["Firstname"] + " " + Session["Lastname"];
                    lblFname.Text = Session["Firstname"].ToString();
                    lblLname.Text = Session["Lastname"].ToString();
                }
            }
        }
    }
}