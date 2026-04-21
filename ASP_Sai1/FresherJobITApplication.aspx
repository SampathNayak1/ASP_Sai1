<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FresherJobITApplication.aspx.cs" Inherits="ASP_Sai1.FresherJobITApplication" %>

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
                        <h1>Fresher IT Job Application form </h1>

                    </td>
                </tr>
            </table>
            <table align="center">
                 
                <tr>
                    <td >
                        <h2>Personal Details : </h2>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    
                    <td>
                        <asp:Label ID="lblFname" runat="server" Text="First Name : "></asp:Label>
                        <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFname" runat="server" ControlToValidate="txtFname"
                             ForeColor="Red" ErrorMessage="Please Enter First Name" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revFname" runat="server" ControlToValidate="txtFname" ErrorMessage="Only Alphabets allowed"
                             ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblLname" runat="server" Text="Last Name : "> </asp:Label>
                        <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLname" runat="server" ControlToValidate="txtLname"
                             ForeColor="Red" ErrorMessage="Please enter Last Name"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revLname" runat="server" ControlToValidate="txtLname" ErrorMessage="Only Alphabets alloweed"
                             ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>

                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDob" runat="server" Text="Date Of Birth : "></asp:Label>
                        <asp:TextBox ID="txtDob" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Gender : "></asp:Label>
                        <asp:RadioButton ID="rbnMale" runat="server" Text="Male" AutoPostBack="true" GroupName="Gender"  />
                        <asp:RadioButton ID="rbnFemale" runat="server" Text="Female" AutoPostBack="true" GroupName="Gender"  />

                    </td>
                    
                </tr>
                <tr>

                    <td>Contact No :
                        <asp:TextBox ID="txtContact" runat="server" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvContactno" runat="server" ControlToValidate="txtContact"
                             ForeColor="Red" ErrorMessage="Please enter Contact Number"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revContact" runat="server" ControlToValidate="txtContact" ForeColor="Red" ErrorMessage="Please enter valid Contact number"
                             ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Email Id :
                        <asp:TextBox ID="txtEmailId" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmailId"
                             ForeColor="Red" ErrorMessage="Please enter Email Id"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmailId" ErrorMessage="Please enter valid Email id"
                             ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]*\w+)*\.\w+([-.]\+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Address:
                        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    </td>
                </tr>




                <tr>
                    <td>
                        <h2>Educational Details : </h2>

                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <h3>SSC</h3>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>School Name :
                        <asp:TextBox ID="txtSchoolname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Passed Year :
                        <asp:TextBox ID="txtSSCPassyear" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Marks Percentage :
                        <asp:TextBox ID="txtPercentageMarks" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h3>Intermediate </h3>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>Group Name :
                        <asp:DropDownList ID="ddlInterGroupname" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlInterGroupname_SelectedIndexChanged"   >
                            <asp:ListItem>--Choose Group Name--</asp:ListItem>
                            <asp:ListItem>MPC</asp:ListItem>
                            <asp:ListItem>BSc</asp:ListItem>
                            <asp:ListItem>MEC</asp:ListItem>
                        </asp:DropDownList>
                         
                    </td>
                </tr>
                <tr>
                    <td>College Name :
                        
                         <asp:TextBox ID="txtCollegeName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Year of Pass
                        <asp:TextBox ID="txtYearofpass" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Marks Percentage :
                        <asp:TextBox ID="txtInterMarksPercentage" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h3>Graduation </h3>
                    </td>
                </tr>
                <tr>
                    <td>Group Name :
                        <asp:DropDownList ID="ddlGraduGroupname" runat="server" AutoPostBack="true">
                            <asp:ListItem>--Choose Group Name--</asp:ListItem>
                            <asp:ListItem>CSC</asp:ListItem>
                            <asp:ListItem>IT</asp:ListItem>
                            <asp:ListItem>ECE</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>College Name:
                         
                        <asp:TextBox ID="txtGraduCollegeName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>University Name :
                        <asp:TextBox ID="txtUnersityname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Year of Passing :
                        <asp:TextBox ID="txtGraduYearOfPass" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Marks Percentage : 
                        <asp:TextBox ID="txtGraduMarksPer" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h3>Post graduation(If Any)</h3>

                    </td>
                </tr>
                <tr>
                    <td>College Name :
                    <asp:TextBox ID="txtPg" runat="server"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td>University Name :
                        <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Year of Pass :
                        <asp:TextBox ID="txtPGyop" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Marks Percentage
                        <asp:TextBox ID="TxtPGMarksPercentage" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h3>Skill Set</h3>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>Operating System : 
                        <asp:TextBox ID="txtOS" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Programming Language :
                        <asp:TextBox ID="txtPL" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Data base :
                        <asp:TextBox ID="txtDB" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Networks :
                        <asp:TextBox ID="txtNetwork" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Other Skills : 
                        <asp:TextBox ID="txtOtherSkills" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" /> 
                    </td> 
                </tr>
                 
            </table>
            <table align="center">
                <tr >
                    <td>
                        <asp:Label ID="lblSubmit" runat="server" ></asp:Label>
                    </td>
                    
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
