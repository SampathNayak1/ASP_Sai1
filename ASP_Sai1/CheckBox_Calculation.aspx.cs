using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Sai1
{
    public partial class CheckBox_Calculation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void chkC_CheckedChanged(object sender, EventArgs e)
        {
            int Total = 0;
            if (chkC.Checked)
                Total += 3000;
            if (chkCPP.Checked)
                Total += 5000;
            if (chkDotNet.Checked)
                Total += 10000;
            txtResult.Text = Total.ToString();

        }
    }
}