using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Sai1
{
    public partial class Sample_RegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //lblHobbies.Visible = false;
            //lblgender.Visible = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblResult.Text = "Name : " + txtName.Text + "<br>" +
                            "Mobile Number : " + txtMobile.Text + "<br>" +
                            "Gender : " + lblgender.Text + "<br>" +
                            "Email : " + txtEmail.Text + "<br>" +
                            "Hobbies :" + lblHobbies.Text;
            lblHobbies.Visible = false;
            lblgender.Visible = false;
        }

        protected void rbtnMale_CheckedChanged(object sender, EventArgs e)
        {
            string gender = lblgender.Text;
            if (rbtnMale.Checked)
            {
                lblgender.Text = "Male";
            }
            else if (rbtnFemale.Checked)
            {
                lblgender.Text = "Female";

            }
        }

        protected void chkPD_CheckedChanged(object sender, EventArgs e)
        {
            string add = "";
            if (chkPD.Checked)
            {
                add += "Personal Developmnet";
            }
            if (chkTH.Checked)
            {
                add += "Technical Hobbies";
            }
            if (chkPA.Checked)
            {
                add += "Physical Activity";
            }
            string hobbies = lblHobbies.Text;

            lblHobbies.Text = add;
        }
    }
}