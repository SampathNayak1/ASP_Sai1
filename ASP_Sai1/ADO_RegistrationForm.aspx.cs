using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ASP_Sai1
{
    public partial class ADO_RegistrationForm : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridData();
            }  
             
        }

        protected void BindGridData()
        {
            SqlConnection con = new SqlConnection("Data Source=SAM\\SQLEXPRESS; Initial Catalog=Login; Integrated Security=true");
            SqlDataAdapter da = new SqlDataAdapter("select * from Registrations", con );
            DataSet ds= new DataSet();
            da.Fill(ds);
            grdData.DataSource = ds;
            grdData.DataBind();
        }


        protected void btnSubmit_Click(object sender, EventArgs e)
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
            //if (hobbies == " ")
            //{
            //    lblMsg.Text = "Please select filed. ";
            //}
            //else
            //{
            //    lblMsg.Text = hobbies.Trim(',', ' ');
            //}

            string language = ddlLanguages.SelectedItem.Text;

            SqlConnection conn = new SqlConnection("Data Source=SAM\\SQLEXPRESS; Initial Catalog=Login; Integrated Security=true");
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into Registrations values(' " + txtFname.Text + " ',' " + txtLname.Text + " ',' " + txtUname.Text + " ','"+gender+"','"+hobbies+"','"+language+"',' " + txtEmail.Text + " ',' " + txtMoboileNo.Text + " ',' " + txtPass.Text + "','"+txtCPass.Text+"'  )", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("Submitted Registation Form");
            BindGridData();  
        }

 

        protected void grdData_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=SAM\\SQLEXPRESS; Initial Catalog=Login; Integrated Security=true");
            conn.Open();
            int Rid = Convert.ToInt32(grdData.DataKeys[e.RowIndex].Value);
            SqlCommand cmd = new SqlCommand("delete  from Registrations where Rid=@rid",conn);
            cmd.Parameters.AddWithValue("@rid", Rid);
            cmd.ExecuteNonQuery();
            conn.Close();
            BindGridData();
        }

        protected void grdData_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdData.EditIndex = e.NewEditIndex;
            BindGridData();
        }

        protected void grdData_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=SAM\\SQLEXPRESS; Initial Catalog=Login; Integrated Security=true");
            conn.Open();
            GridViewRow grd = grdData.Rows[e.RowIndex];
            int Rid = Convert.ToInt32(grdData.DataKeys[e.RowIndex].Value);
            string Fname = ((TextBox)grd.FindControl("txtsFirstname")).Text;
            string Lname = ((TextBox)grd.FindControl("txtsLname")).Text;
            string Uname = ((TextBox)grd.FindControl("txtsUname")).Text;
            string gender = ((TextBox)grd.FindControl("btnGender")).Text;
            string hobbies = ((TextBox)grd.FindControl("txtsHobbies")).Text;
            string language  = ((TextBox)grd.FindControl("txtsLanguages")).Text;
            string email = ((TextBox)grd.FindControl("txtsEmail")).Text;
            string phono = ((TextBox)grd.FindControl("txtsPhno")).Text  ;
            string password = ((TextBox)grd.FindControl("txtsPassword")).Text;
            string Conpassword = ((TextBox)grd.FindControl("txtsConfirmPassword")).Text;


            SqlCommand cmd = new SqlCommand("update Registrations set FirstName=@firstname," + "LastName=@lastname,"+"UserName=@username,"+"Gender=@gender,"+"Hobbies=@hobbies,"+"Languages=@languages,"+"Email=@email,"+"Phoneno=@phno,"+"Password=@password,"+"ConfirmPassword=@conPassword where Rid=@id", conn);
            cmd.Parameters.AddWithValue("@id", Rid); 
            cmd.Parameters.AddWithValue("@firstname", Fname);
            cmd.Parameters.AddWithValue("@lastname", Lname);
            cmd.Parameters.AddWithValue("@username", Uname);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@hobbies", hobbies);
            cmd.Parameters.AddWithValue("@languages",language);
            cmd.Parameters.AddWithValue("@email",email);
            cmd.Parameters.AddWithValue("@phno",phono);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@conPassword", Conpassword);
            cmd.ExecuteNonQuery();
            conn.Close();
            BindGridData();
        }


        protected void grdData_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdData.EditIndex = -1;
            BindGridData() ;
        }

        protected void grdData_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdData.PageIndex = e.NewPageIndex;
            BindGridData() ;
        }
    }
}