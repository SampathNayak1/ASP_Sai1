using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Sai1
{
    public partial class ApplicationCountUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int currentusercount = (int)Application["UserCount"];
            lblCount.Text="Active Users Count  " +currentusercount.ToString();
        }
    }
}