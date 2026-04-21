using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Sai1
{
    public partial class FresherJobITApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
       


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string FirstName = txtFname.Text;
            string LastName = txtLname.Text;
            string DOB = txtDob.Text;
            string Gender = " ";
            if (rbnMale.Checked)
            {
                Gender = "Male";
            }
            else if (rbnFemale.Checked)
            {
                Gender = "Female";
            }
            ulong ContactNo = Convert.ToUInt32(txtContact.Text);
            string Email = txtEmailId.Text;
            string Address = txtAddress.Text;
            string SchoolName = txtSchoolname.Text;
            string SchoolPassYear = txtSSCPassyear.Text;
            string SSCMarksPercentage = txtPercentageMarks.Text;
            
            




                lblSubmit.Text = "<h2>Submited Fresher IT Job Application Form</h2> " + "<br>" +
                                "<h3>Personal Details</h3>" +
                                "First Name : " + FirstName + "<br>" +
                                "Last Name : " + LastName + "<br>" +
                                "Date Of Birth : " + DOB + "<br>" +
                                "Gender : " + Gender + "<br>" +
                                "Contact No : " + ContactNo + "<br>" +
                                "Email : " + Email + "<br>" +
                                "Address : " + Address + "<br>" +
                                "<h3>Educational Details</h3>" + "<br>" +
                                "  <b>SSC</b>  " + "<br>" +
                                "School Name : " + SchoolName + "<br>" +
                                "Pass Year : " + SchoolPassYear + "<br>" +
                                "Marks Percentage : " + SSCMarksPercentage + "<br>" + "<br>" +
                                "<b>Intermediate</b>" +"<br>"+
                                "Group Name : " + ddlInterGroupname.Text+"<br>"+
                                "College Name : "+txtCollegeName.Text+"<br>"+
                                "Year of Pass : "+txtYearofpass.Text+"<br>"+
                                "Marks Percentage : "+ txtInterMarksPercentage.Text+"<br>"+"<br>"+
                                "<b>Graduation</b>"+"<br>"+
                                "Group Name : "+ddlGraduGroupname.Text+"<br>"+
                                "College Name : "+ txtGraduCollegeName.Text+"<br>"+
                                "University Name : "+ txtUnersityname.Text+"<br>"+
                                "Year of Passing : "+ txtGraduYearOfPass.Text+"<br>+" +
                                "Marks Percentage : "+ txtGraduMarksPer.Text+"<br>"+ "<br>" +
                                "<b>Post graduation(If Any)</b>" +"<br>"+
                                "College Name : "+ txtPg.Text+"<br>"+
                                "University Name : " + txtUname.Text+"<br>"+
                                "Year of Pass : "+ txtPGyop.Text+"<br>"+
                                "Marks Percentage : "+ TxtPGMarksPercentage.Text+"<br>"+ "<br>" +
                                "<b>Skill Set</b>" +"<br>"+
                                "Operating System : "+ txtOS.Text+"<br>"+
                                "Programming Language : "+ txtPL.Text+"<br>"+
                                "Data base : "+ txtDB.Text+"<br>"+
                                "Networks : "+ txtNetwork.Text+"<br>"+
                                "Other Skills : "+ txtOtherSkills.Text ;


        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            lblSubmit.Text="" ;
        }

        protected void ddlInterGroupname_SelectedIndexChanged(object sender, EventArgs e)
        {
            string group = ddlInterGroupname.Text;



            if (ddlInterGroupname.SelectedValue == "MPC")
            {
                ddlInterGroupname.Text = "MPC";
            }
            else if (ddlInterGroupname.SelectedValue == "BSc")
            {
                ddlInterGroupname.Text = "BSc";
            }
            else if (ddlInterGroupname.SelectedValue == "MEC")
            {
                ddlInterGroupname.Text = "MEC";
            }
        }

        protected void ddlGraduGroupname_SelectedIndexChanged(object sender, EventArgs e)
        {
            string GroupName = ddlGraduGroupname.Text;
            if (ddlGraduGroupname.SelectedValue == "CSC")
            {
                ddlGraduGroupname.Text = "CSC";
            }
            else if(ddlGraduGroupname.SelectedValue == "IT")
            {
                ddlGraduGroupname.Text = "IT";
            }
            else if (ddlGraduGroupname.SelectedValue == "ECE")
            {
                ddlGraduGroupname.Text = "ECE";
            }
        }
    }
}