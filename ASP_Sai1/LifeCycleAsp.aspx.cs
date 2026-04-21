using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Sai1
{
    public partial class LifeCycleAsp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblPLoad.Text = "Hi This is Page_Load ";
            btnSubmit.Visible = false;


        }
        protected void Page_PreInit(object sender,EventArgs e)
        {
            lblPPreInit.Text = "Hi This is Page_PreInit";
        }
        protected void Page_Init(object sender,EventArgs e)
        {
            lblPInit.Text = "Hi This is Page_Init ";
        }
        protected void Page_InitComplete(object sender,EventArgs e)
        {
            lblPInitCompelte.Text = "Hi This is Page_PreInit_Complte ";
        }
        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            lblPLoadComplete.Text = "Hi This is Page_LoadComplete";
        }

        protected void txtusername_TextChanged(object sender, EventArgs e)
        {
            if (txtusername.Text.Length > 3)
            {
                btnSubmit.Visible = true;   
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (rbnTelugu.Checked)
            {
                lblTelugu.Text = "Selelcted Language is Telugu";
            }
            else if (rbnEnglish.Checked)
            {
                lblEnglish.Text = "Selected Language is English";
            }
            else if (rbnHindi.Checked)
                {
                    lblHindi.Text = "Selected Language is Hinid";
                }

        }

        protected void chkTennis_CheckedChanged(object sender, EventArgs e)
        {
            if (chkChess.Checked)
            {
                lblTennis.Text = "Chess is Selected";
            } 
        }

        protected void chkChess_CheckedChanged(object sender, EventArgs e)
        {
            if (chkChess.Checked)
            {
                lblChess.Text = "Chess is Selected";
            }
        }

        protected void chkCriket_CheckedChanged(object sender, EventArgs e)
        {
            if (chkCriket.Checked)
            {
                lblCricket.Text = "Cricket is selelcted";
            }
        }

        protected void rbnTelugu_CheckedChanged(object sender, EventArgs e)
        {
            if (rbnTelugu.Checked)
            {
                lblTelugu.Text = "Selelcted Language is Telugu";
            }
        }

        protected void rbnEnglish_CheckedChanged(object sender, EventArgs e)
        {
               if (rbnEnglish.Checked)
            {
                lblEnglish.Text = "Selected Language is English";
            }
          
           
        }

        protected void rbnHindi_CheckedChanged(object sender, EventArgs e)
        {
            if (rbnHindi.Checked)
            {
                lblHindi.Text = "Selected Language is Hinid";
            }
        }
    }
}