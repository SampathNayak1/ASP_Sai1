using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASP_Sai1
{
    public partial class ADO_RegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
           
            SqlConnection conn = new SqlConnection("Data Source=SAM\\SQLEXPRESS; Initial Catalog=Login; Integrated Security=true");
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into Registation values(' " + txtFname.Text + " ',' " + txtLname.Text + " ',' " + txtUname.Text + " ',' " + txtEmail.Text + " ',' " + txtMoboileNo.Text + " ',' " + txtPass.Text + "' )", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("Submitted Registation Form");
        }



        protected void rbnMale_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btnGender_Click(object sender, EventArgs e)
        {
            string gender = "";
            if (rbnMale.Checked)
            {
                gender = "Male";
            }
            else if (rbnFemale.Checked)
            {
                gender = "Female";
            }

            string hobbies = "";
             foreach (ListItem item in cblHobbies.Items)
            {
                if (item.Selected)
                {
                    hobbies += item.Text + ","; 
                }
            }
            if (hobbies == " ")
            {
                lblMsg.Text = "Please select filed. ";
            }
            else
            {
                lblMsg.Text = hobbies.Trim(',', ' ');
            }
           
            lblMsg.Text = "Gender : " + gender +
                            "Hobbies : " + hobbies;

        }
         

         
    }
}