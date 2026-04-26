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
            BindGridData();
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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=SAM\\SQLEXPRESS; Initial Catalog=Login;Integrated Security=true");
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into Login1 values('" + txtUsername.Text + "','" + txtPassword.Text + "')", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("Details are submited");
            BindGridData();
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

        protected void btnDelete_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection("Data Source=SAM\\SQLEXPRESS; Initial Catalog=Login; Integrated Security=true");
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete Login1 where LTRIM(RTRIM(UName))='" + txtUsername.Text + "' ", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            BindGridData();
            Response.Write("Delete Command is excuted.");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=SAM\\SQLEXPRESS; Initial Catalog=Login; Integrated Security=true");
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Login1 WHERE UName LIKE @name", conn);
            da.SelectCommand.Parameters.AddWithValue( "@name", "%"+txtUsername.Text.Trim()+"%");
            DataSet ds= new DataSet();
            da.Fill(ds);
            grdData.DataSource = ds;
            grdData.DataBind();
        }
    }
}