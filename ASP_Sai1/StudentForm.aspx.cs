using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Sai1
{
    public partial class StudentForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnSubmit.Enabled = false;


        }

        protected void txtSubmit_Click(object sender, EventArgs e)
        {
            lblResult.Text = "Student Id : " + txtId.Text + "Student name is :  " +txtname.Text+ "Student Depatment is :" + txtSsal.Text ; 
        }
      

        protected void txtbox1_TextChanged(object sender, EventArgs e)
        {
            if (txtbox1.Text.Length > 0)
            {
                btnSubmit.Enabled = true;
            }
            else
            {
                btnSubmit.Enabled = false;
            }

        }
    }
}