<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADO_RegistrationForm.aspx.cs" Inherits="ASP_Sai1.ADO_RegistrationForm" %>

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
                        <h1>Registration From</h1>
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>First Name: </td>
                    <td>
                        <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFname" runat="server" ControlToValidate="txtFname" ForeColor="Red"
                            ErrorMessage="Please enter First name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Last Name : 
                    </td>
                    <td>
                        <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLname" runat="server" ControlToValidate="txtLname" ForeColor="Red"
                            ErrorMessage="Please enter Last name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>User Name :
                    </td>
                    <td>
                        <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvUname" runat="server" ControlToValidate="txtUname" ForeColor="Red"
                            ErrorMessage="Please enter Username"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Email Id :
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ForeColor="Red" ControlToValidate="txtEmail"
                            ErrorMessage="Please enter Email"></asp:RequiredFieldValidator>
                        <asp:regularexpressionvalidator id="revemail" runat="server" forecolor="red"
                            controltovalidate="txtemail" validationexpression="\w+([-+.']\w+)*@\w+([-.]*\w+)*\.\w+([-.]\+)*"></asp:regularexpressionvalidator>
                    </td>


                </tr>
                <tr>
                    <td>Mobile Number :
                    </td>
                    <td>
                        <asp:TextBox ID="txtMoboileNo" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMobileno" runat="server" ForeColor="Red" ControlToValidate="txtMoboileNo"
                            ErrorMessage="Please enter Mobile number"> </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revMobileno" runat="server" ControlToValidate="txtMoboileNo" ForeColor="Red"
                            ValidationExpression="\d{10}" ErrorMessage="Validate your Phno"></asp:RegularExpressionValidator>
                    </td>

                </tr>
                <tr>
                    <td>Password :
                    </td>
                    <td>
                        <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPass" runat="server" ForeColor="Red" ControlToValidate="txtPass"
                            ErrorMessage="Please enter Password"></asp:RequiredFieldValidator>
                   
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
