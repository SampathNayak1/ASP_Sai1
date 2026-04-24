using System; 
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace ASP_Sai1
{
    public partial class ADO_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=SAM\\SQLEXPRESS; Initial Catalog=Login;Integrated Security=true");
            conn.Open();
            SqlCommand cmd = new SqlCommand(  "insert into Login1 values(' " + txtUsername.Text + "   ','  " + txtPassword.Text + "  ')" , conn );
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("Details are submited");
        }
    }
}