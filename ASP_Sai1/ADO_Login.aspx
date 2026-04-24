<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADO_Login.aspx.cs" Inherits="ASP_Sai1.ADO_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <h1>Login Page</h1>
                    </td>
                </tr>
            </table>
            <table>
                <tr>
                    <td>
                       <asp:Label ID="lblUsername" runat="server" Text="Username : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ForeColor="Red" ControlToValidate="txtUsername"
                             ErrorMessage="Please enter username"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassword" runat="server" Text="Password : " ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server"> </asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ForeColor="Red" ControlToValidate="txtPassword"
                             ErrorMessage="Please enter password"></asp:RequiredFieldValidator>
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
