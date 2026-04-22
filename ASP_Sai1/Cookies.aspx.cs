using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Sai1
{
    public partial class Cookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            HttpCookie userCookie = new HttpCookie("UserInfo");
            userCookie["Username"] = txtUname.Text;
            userCookie["Password"]=txtPass.Text;
            userCookie.Expires=DateTime.Now.AddMinutes(1);
            Response.Cookies.Add(userCookie);
            Response.Redirect("Cookies1.aspx");
        }
    }
}