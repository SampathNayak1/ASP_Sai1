using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Sai1
{
    public partial class BookMyShowSample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlCountry.Items.Add("--Select Country--");
                ddlCountry.Items.Add("USA");
                ddlCountry.Items.Add("INDIA");
                ddlCountry.Items.Add("UK");
            }
        }
        protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlState.Items.Clear();
            if(ddlCountry.SelectedValue == "USA")
            {
                ddlState.Items.Add("--Select State--");
                ddlState.Items.Add("Washington");
                ddlState.Items.Add("New York");
                ddlState.Items.Add("Ohio");
            }
            else if (ddlCountry.SelectedValue == "INDIA")
            {
                ddlState.Items.Add("--Select State--");
                ddlState.Items.Add("Telangana");
                ddlState.Items.Add("Andrapradesh");
                ddlState.Items.Add("Mumbai");
            }
            else if (ddlCountry.SelectedValue == "UK")
            {
                ddlState.Items.Add("--Select State--");
                ddlState.Items.Add("England");
                ddlState.Items.Add("Scotland");
                ddlState.Items.Add("Wales");
            }

        }
        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            string name = txtMName.Text;
            string email = txtEmail.Text;
            string chkTime = "";
            string country = ddlCountry.SelectedItem.Text;
            string state = ddlState.SelectedItem.Text;
            string city = ddlcity.SelectedItem.Text;

            if (rbnMorning.Checked)
            {
                chkTime = "Morning";
            }
            else if (rbnEvning.Checked)
            {
                chkTime = "Evening";
            }
             
            string chkbox = "";
            if (chkPop.Checked)
            {
                chkbox += "POP CORN";
            }
            if (chkSoftdrinks.Checked)
            {
                chkbox += "Cool Drinks";
            }
            if (chk3dGlass.Checked)
            {
                chkbox += "Choose 3D glasss";
            }


            lblResult.Text = "Movie Name : " + name + "<br>" +
                           "Email : " + email + "<br>" + 
                           "City : " + country + "<br>"+
                           "State : " + state + "<br>"+
                           "City : " + city + "<br>"+
                           "Check Time : " + chkTime + "<br>" +
                           "Add Ons : " + chkbox   ;

        }

        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlcity.Items.Clear();
            if(ddlState.SelectedValue =="")
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