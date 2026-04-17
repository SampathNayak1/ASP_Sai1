using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Sai1
{
    public partial class ChekBox_Hobbies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void chkPD_CheckedChanged(object sender, EventArgs e)
        {
            string Add = "";
            if (chkPD.Checked)
                Add += "Reading Books";
            if (chkTH.Checked)
                Add += "Coding";
            if (chkPA.Checked)
                Add += "Fitness workout";
            if (chkE.Checked)
                Add += "Watching movies or web series";
            txtResult.Text= Add+ ","   ;
        }
    }
}