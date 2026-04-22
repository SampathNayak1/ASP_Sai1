using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Sai1
{
    public partial class Cookies1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie ucookie = Request.Cookies["UserInfo"];
            if(ucookie != null)
            {
                lblfname.Text = ucookie["Username"];
                lblLname.Text = ucookie["Password"];
            }
        }
    }
}