using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Sai1
{
    public partial class View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["Clickcount"] = 0; 
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int count=(int)ViewState["Clickcount"];
            count++;
            ViewState["Clickcount"]=count;
            lbl1.Text = "Clickcount" + count;
        }
    }
}