<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JobApplication.aspx.cs" Inherits="ASP_Sai1.JobApplication" %>

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
                    <td></td>
                    <td>
                        <h1>IT Job Application form</h1>

                    </td>
                </tr>
            </table><br />

            <table align="center">
                <tr>
                    <td>
                        <asp:Button ID="btnFresher" runat="server" Text="Fresher IT Job Application" OnClick="btnFresher_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnExperienced" runat="server" Text="Experinced Job Application" OnClick="btnExperienced_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
