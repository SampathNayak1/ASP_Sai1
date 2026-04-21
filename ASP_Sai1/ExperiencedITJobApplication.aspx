<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExperiencedITJobApplication.aspx.cs" Inherits="ASP_Sai1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center">
                <tr>
                    <td>
                        <h1>Experinced IT Job Application Form</h1>
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>
                        <h3>Personal Details </h3>
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>First Name : </td>
                    <td>
                        <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFname" runat="server"
                            ControlToValidate="txtFname"
                            ForeColor="Red"
                            ErrorMessage="Enter First Name"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revFname" runat="server"
                            ControlToValidate="txtFname"
                            ForeColor="Red"
                            ErrorMessage="Enter Valid First Name"
                            ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Last Name : </td>
                    <td>
                        <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv" runat="server"
                            ControlToValidate="txtLname"
                            ForeColor="Red"
                            ErrorMessage="Enter Last Name"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revLname" runat="server"
                            ControlToValidate="txtLname"
                            ForeColor="Red"
                            ErrorMessage="Enter Valid last Name"
                            ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Date of Birth :
                    </td>
                    <td>
                        <asp:TextBox ID="txtDOB" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Gender :
                    </td>
                    <td>
                        <asp:RadioButton ID="rbnMale" runat="server" AutoPostBack="true" GroupName="gender" Text="Male"/>
                        <asp:RadioButton ID="rbnFemale" runat="server" AutoPostBack="true" GroupName="gender" Text="Female" />
                    </td>
                </tr>
                <tr>
                    <td>Contact No : 
                    </td>
                    <td>
                        <asp:TextBox ID="txtContactNo" runat="server" TextMode="Phone"></asp:TextBox>
                        <asp:RequiredFieldValidator
                            ID="rfvContactNo"
                            runat="server"
                            ForeColor="Red"
                            ErrorMessage="Please enter Contact number"
                            ControlToValidate="txtContactNo"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator
                            ID="revContactNo"
                            runat="server"
                            ForeColor="Red"
                            ErrorMessage="Please enter Valid Contact No"
                            ControlToValidate="txtContactNo"
                            ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Email ID:
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmailID" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator
                            ID="rfvtxtEmialID"
                            runat="server"
                            ControlToValidate="txtEmailID"
                            ForeColor="red"
                            ErrorMessage="Please Enter Email ID"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator
                            ID="revEmailID"
                            runat="server"
                            ControlToValidate="txtEmailID"
                            ForeColor="Red"
                            ErrorMessage="Please enter valid Email ID"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]*\w+)*\.\w+([-.]\+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Address :
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>

            <table align="center">
                <tr>
                    <td>
                        <h2>Educational Details</h2>
                    </td>
                    <td></td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>
                        <h3>SSC</h3>
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>School Name : </td>
                    <td>
                        <asp:TextBox ID="txtSchoolName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Passed Year :
                    </td>
                    <td>
                        <asp:TextBox ID="txtSScPassedYear" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Marks Percentage :
                    </td>
                    <td>
                        <asp:TextBox ID="txtSScMarksPercentage" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>
                        <h3>Intermediate</h3>
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>Group Name : 
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlGroupName" runat="server">
                            <asp:ListItem Value="">--Inter Group Name-- </asp:ListItem>
                            <asp:ListItem Value="MPC">MPC</asp:ListItem>
                            <asp:ListItem Value="MEC">MEC</asp:ListItem>
                            <asp:ListItem Value="BIPC">BIPC</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>College Name :</td>
                    <td>
                        <asp:TextBox ID="txtClgName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Year of Pass :
                    </td>
                    <td>
                        <asp:TextBox ID="txtYOP" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Marks Percentage :
                    </td>
                    <td>
                        <asp:TextBox ID="txtMarksPercentage" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>
                        <h3>Graduation</h3>
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>Group Name :
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlGraduGroupname" runat="server">
                            <asp:ListItem Value="">--Choose College Group Name--</asp:ListItem>
                            <asp:ListItem Value="IT">IT </asp:ListItem>
                            <asp:ListItem Value="CSC">CSC</asp:ListItem>
                            <asp:ListItem Value="ECE">ECE</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>College Name :
                    </td>
                    <td>
                        <asp:TextBox ID="txtCollegeName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>University Name :
                    </td>
                    <td>
                        <asp:TextBox ID="txtUniversityName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Year of Passing :
                    </td>
                    <td>
                        <asp:TextBox ID="txtGraduationYOP" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Percentage of Marks :
                    </td>
                    <td>
                        <asp:TextBox ID="txtGraduationPercentageofMarks" runat="server"></asp:TextBox>
                    </td>
                </tr>

            </table>
            <table align="center">
                <tr>
                    <td>
                        <h3>Post Graduation(If Any)</h3>
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>College Name :</td>
                    <td>
                        <asp:TextBox ID="txtPGCollegename" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>University Name : </td>
                    <td>
                        <asp:TextBox ID="txtPgUname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Year of Passing :
                    </td>
                    <td>
                        <asp:TextBox ID="txtPGYOP" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Percentage of Marks :
                    </td>
                    <td>
                        <asp:TextBox ID="txtPGPercentageMarks" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>
                        <h3>Skill Set</h3>
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>Operating System :
                    </td>
                    <td>
                        <asp:TextBox ID="txtOperatingSystem" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Programming languange :
                    </td>
                    <td>
                        <asp:TextBox ID="txtProramminglanguange" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Data Base :
                    </td>
                    <td>
                        <asp:TextBox ID="txtDatabase" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Networks :
                    </td>
                    <td>
                        <asp:TextBox ID="txtNetworks" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Other Skills :
                    </td>
                    <td>
                        <asp:TextBox ID="txtOtherSkills" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>
                        <h3>Employee Details </h3>
                    </td>
                    <td></td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>Company Name : </td>
                    <td>
                        <asp:TextBox ID="txtCompanyName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Company Address :  </td>
                    <td>
                        <asp:TextBox ID="txtCompanyAddress" runat="server"> </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Company Phone No : </td>
                    <td>
                        <asp:TextBox ID="txtComPhno" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Company Website :
                    </td>
                    <td>
                        <a href="https://learn.microsoft.com/en-us/dotnet/csharpd" name="Company Website">Company Website</a>
                    </td>
                </tr>
                <tr>
                    <td>Description :
                    </td>
                    <td>
                        <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Roles & Responsibility</td>
                    <td>
                        <asp:TextBox ID="txtRR" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Current CTC</td>
                    <td>
                        <asp:TextBox ID="txtCtc" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnCommand="btnSubmit_Command" />
                    </td>
                    <td>
                        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>
                        <asp:Label ID="lblSubmit" runat="server"></asp:Label>
                    </td>
                </tr>

            </table>


        </div>
    </form>
</body>
</html>
