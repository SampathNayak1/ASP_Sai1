<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Session.aspx.cs" Inherits="ASP_Sai1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Session.aspx

            </h3>
            <table>
                <tr>
                    <td>First Name :
                    </td>
                    <td>
                        <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Last Name :
                    </td>
                    <td>
                        <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>

                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="SessionStartData " OnClick="btnSubmit_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
