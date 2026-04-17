using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Sai1
{
    public partial class DropDownList_CascadingDDL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlCountry.Items.Add("--Select State--");
                ddlCountry.Items.Add("USA");
                ddlCountry.Items.Add("INDIA");
                ddlCountry.Items.Add("UK"); 
            }
        }

        protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlState.Items.Clear();
            if (ddlCountry.SelectedValue == "USA")
            {
                ddlState.Items.Add("--Select State--");
                ddlState.Items.Add("Washington");
                ddlState.Items.Add("New York");
                ddlState.Items.Add("Ohio");
            }
            else if(ddlCountry.SelectedValue == "INDIA")
            {
                ddlState.Items.Add("--Select State--"); 
                ddlState.Items.Add("Telangana");
                ddlState.Items.Add("Andrapradesh");
                ddlState.Items.Add("Mumbai");
            }
            else if(ddlCountry.SelectedValue == "UK")
            {
                ddlState.Items.Add("--Select State--"); 
                ddlState.Items.Add("England");
                ddlState.Items.Add("Scotland");
                ddlState.Items.Add("Wales");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblResult.Text = "Country Name is : " + ddlCountry.SelectedItem.Text + "<br>" +
                             "State Name is : " + ddlState.SelectedItem.Text + "<br>" +
                             "City Name is : " + ddlcity.SelectedItem.Text;
                           
        }

        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlcity.Items.Clear();

            if(ddlState.SelectedValue == "Washington")
            {
                ddlcity.Items.Add("Seattle");
                ddlcity.Items.Add("Spokane");
                ddlcity.Items.Add("Tacoma");

            }
           else if (ddlState.SelectedValue == "New York")
            {
                ddlcity.Items.Add("Buffalo");
                ddlcity.Items.Add("Rochester");
                ddlcity.Items.Add("Albany");
            }
            else if (ddlState.SelectedValue == "Ohio")
            {
                ddlcity.Items.Add("Columbus");
                ddlcity.Items.Add("Parma");
                ddlcity.Items.Add("Cincinnati");
            }
            else if (ddlState.SelectedValue == "Telangana")
            {
                ddlcity.Items.Add("Hyderabd");
                ddlcity.Items.Add("Warangal");
                ddlcity.Items.Add("Karimnagar");
            }
            else if (ddlState.SelectedValue == "Andrapradesh")
            {
                ddlcity.Items.Add("Vizag");
                ddlcity.Items.Add("Tirupati");
                ddlcity.Items.Add("Kurnool");
            }
            else if (ddlState.SelectedValue == "Mumbai")
            {
                ddlcity.Items.Add("Navi Mumbai");
                ddlcity.Items.Add("Puna");
                ddlcity.Items.Add("Nanded");
            }
            else if (ddlState.SelectedValue == "England")
            {
                ddlcity.Items.Add("Bath");
                ddlcity.Items.Add("Bristol");
                ddlcity.Items.Add("Doncaster");
            }
            else if (ddlState.SelectedValue == "Scotland")
            {
                ddlcity.Items.Add("Glasgow");
                ddlcity.Items.Add("Inverness");
                ddlcity.Items.Add("Perth");
            }
            else if (ddlState.SelectedValue == "Wales")
            {
                ddlcity.Items.Add("Cardiff");
                ddlcity.Items.Add("Swansea");
                ddlcity.Items.Add("Newport");
            }
        }
    }
}