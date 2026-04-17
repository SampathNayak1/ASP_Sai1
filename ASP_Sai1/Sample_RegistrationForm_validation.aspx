<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sample_RegistrationForm_validation.aspx.cs" Inherits="ASP_Sai1.Sample_RegistrationForm_validation" %>

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
                    <td><h1>Registration form with validation</h1></td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>
                        <asp:Label ID="lblFname" runat="server" Text="FirstName :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFname" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFname" runat="server" ForeColor="Red"
                            ErrorMessage="Please enter first name !" ControlToValidate="txtFname"> </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblLname" runat="server" Text="LastName :"></asp:Label>
                    </td>
                    <td>
                       <asp:TextBox ID="txtLname" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLname" runat="server" ForeColor="Red"
                             ErrorMessage="Please enter Last name !" ControlToValidate="txtLname"> </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text="Email : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ForeColor="Red"
                             ErrorMessage="Please enter Email !" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rev" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter valid Email " 
                            ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]*\w+)*\.\w+([-.]\+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblMobileno" runat="server" Text="Mobile : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMobileno" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMobileno" runat="server" ForeColor="Red"
                             ErrorMessage="Please enter Mobile number !" ControlToValidate="txtMobileno"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPwd" runat="server" Text="Password : "></asp:Label>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ForeColor="Red"
                             ErrorMessage="Please enter password ! " ControlToValidate="txtPwd"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblCpwd" runat="server" Text="Confirm Password :"  ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCpwd" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfwCpwd" runat="server" ForeColor="Red"
                             ErrorMessage="Please confirm password !" ControlToValidate="txtCpwd" ></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cfv" runat="server" ControlToCompare="txtpwd" ControlToValidate="txtCpwd" 
                             ErrorMessage="Password and confirm password should be same" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
