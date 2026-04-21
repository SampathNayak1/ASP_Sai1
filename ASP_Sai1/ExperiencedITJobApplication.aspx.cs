using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace ASP_Sai1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        protected void btnSubmit_Command(object sender, CommandEventArgs e)
        {
            String gender = "";
            if (rbnMale.Checked)
            {
                gender = "Male";
            }
            else if(rbnFemale.Checked){
                gender = "Female";
            }
            lblSubmit.Text = "<h2>Submitted Experienced Deatils Are </h2>"+"<br>"+
                            "<b>Personal Details<b> "+"<br>"+
                            "First Name : "+ txtFname.Text + "<br>"+
                            "Last Name : "+ txtLname.Text+"<br>"+
                            "Date of Birth : "+ txtDOB.Text+"<br>"+
                            "Gender : "+gender+"<br>"+

                            "<h3>Educational Details</h3>" +"<br>"+
                            "<b>SSC</b>"+"<br>"+"School Name : "+txtSchoolName.Text +"<br>"+
                            "Passed Year : "+txtSScPassedYear.Text+"<br>"+
                            "Marks Percentage : "+txtSScMarksPercentage.Text+"<br>"+
                            "<b>Intermediate</b>"+"<br>"+ddlGroupName.SelectedValue+"<br>"+
                            "College Name : "+txtClgName.Text+"<br>"+
                            "Year of Pass : "+ txtYOP.Text+"<br>"+
                            "Marks Percentage : "+txtMarksPercentage.Text+"<br>"+
                            "<b>Graduation</b>"+"<br>"+
                            "Group Name : "+ddlGraduGroupname.SelectedValue+"<br>"+
                            "College Name :  " + txtCollegeName.Text+"<br>"+
                            "University Name : "+ txtUniversityName.Text+"<br>"+
                            "Year of Passing : "+ txtGraduationYOP.Text+"<br>"+
                            "Percentage of Marks : "+ txtGraduationPercentageofMarks.Text+"<br>"+
                            "<b>Post Graduation</b>"+"<br>"+
                            "College Name : "+txtPGCollegename.Text+"<br>"+
                            "University Name : "+txtPgUname.Text+"<br>"+
                            "Year of Pass : "+txtPGYOP.Text+"<br>"+
                            "Percentage of Marks : "+txtPGPercentageMarks.Text+"<br>"+
                            "<b>Skill Set</b>"+"<br>"+
                            "Operating System :"+ txtOperatingSystem.Text+"<br>"+
                            "Programming Language :"+txtProramminglanguange.Text+"<br>"+
                            "Data Base : "+ txtDatabase.Text+"<br>"+
                            "Networks : "+ txtNetworks.Text+"<br>"+
                            "Other Skills :"+ txtOtherSkills.Text+"<br>"+
                            "<h3>Employee Details : </h3>  " + "<br>" +
                            "Company Name : " + txtCompanyName.Text + "<br>" +
                            "Company Address : " + txtCompanyAddress.Text + "<br>" +
                            "Company Phone No : " + txtComPhno.Text + "<br>" +
                            "Description : " + txtDescription.Text + "<br>" +
                            "Roles & Responsibility : " + txtRR.Text + "<br>" +
                            "Current CTC :" + txtCtc.Text + "<br>";

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            lblSubmit.Text = "";
        }
    }
}