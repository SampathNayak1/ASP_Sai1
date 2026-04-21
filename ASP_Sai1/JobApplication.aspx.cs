using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Sai1
{
    public partial class JobApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFresher_Click(object sender, EventArgs e)
        {
            Response.Redirect("FresherJobITApplication.aspx");
        }

        protected void btnExperienced_Click(object sender, EventArgs e)
        {
            Response.Redirect("ExperiencedITJobApplication.aspx");
        }
    }
}