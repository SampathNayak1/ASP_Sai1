using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;


namespace ASP_Sai1
{
    public partial class ADO_Login : System.Web.UI.Page
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
            SqlDataAdapter da = new SqlDataAdapter("select * from Login1", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            grdData.DataSource = ds;
            grdData.DataBind();
        }

    

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=SAM\\SQLEXPRESS; Initial Catalog=Login; Integrated Security=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("update Login1 set UPassword='" + txtPassword.Text + "' where UName ='" + txtUsername.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            BindGridData();
            Response.Write("Update Command is excuted.");
        }
 

    // Updating the Row
    protected void grdData_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=SAM\\SQLEXPRESS; Initial Catalog=Login; Integrated Security=true");
            con.Open();
            GridViewRow grd = grdData.Rows[e.RowIndex];
            int Uid = Convert.ToInt32(grdData.DataKeys[e.RowIndex].Value);
            string username =((TextBox)grd.FindControl("txtsUname")).Text;
            string password = ((TextBox)grd.FindControl("txtsPass")).Text;
            SqlCommand cmd = new SqlCommand("update Login1 set UName=@username,"  + "UPassword=@password where Uid=@id",con);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@id", Uid);
            cmd.ExecuteNonQuery();
            con.Close();
            BindGridData();
           
        }
         //Row Editing
        protected void grdData_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdData.EditIndex=e.NewEditIndex;
            BindGridData();
         }

        //Canceling the event
        protected void grdData_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdData.EditIndex = -1;
            BindGridData();
        }

        //Page Index Changing
        protected void grdData_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdData.PageIndex = e.NewPageIndex;
            BindGridData();
        }

        //Deleting a row
        protected void grdData_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=SAM\\SQLEXPRESS; Initial Catalog=Login;Integrated Security=true");
            con.Open();

            int Uid = Convert.ToInt32(grdData.DataKeys[e.RowIndex].Value);
            SqlCommand cmd = new SqlCommand("delete from Login1 where Uid=@id",con);
            cmd.Parameters.AddWithValue("@id", Uid);
            cmd.ExecuteNonQuery();
            con.Close( );
            BindGridData();
        }
        protected void btnsubmit_Click1(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=SAM\\SQLEXPRESS; Initial Catalog=Login;Integrated Security=true");
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into Login1 values('" + txtUsername.Text + "','" + txtPassword.Text + "')", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("Details are submited");
            BindGridData();

        }

        protected void btnupdate_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=SAM\\SQLEXPRESS; Initial Catalog=Login; Integrated Security=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("update Login1 set UPassword='" + txtPassword.Text + "' where UName ='" + txtUsername.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            BindGridData();
            Response.Write("Update Command is excuted.");
        }

        protected void btndelete_click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=SAM\\SQLEXPRESS; Initial Catalog=Login; Integrated Security=true");
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete Login1 where LTRIM(RTRIM(UName))='" + txtUsername.Text + "' ", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            BindGridData();
            Response.Write("Delete Command is excuted.");
        }

        protected void btnsearch_click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=SAM\\SQLEXPRESS; Initial Catalog=Login; Integrated Security=true");
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Login1 WHERE UName LIKE @name", conn);
            da.SelectCommand.Parameters.AddWithValue("@name", "%" + txtUsername.Text.Trim() + "%");
            DataSet ds = new DataSet();
            da.Fill(ds);
            grdData.DataSource = ds;
            grdData.DataBind(); 
        }

  
    }
}