<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QueryString.aspx.cs" Inherits="ASP_Sai1.QueryString" %>

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
                        <asp:Label ID="lbl1" runat="server" Text="UserName"></asp:Label>
                        <asp:TextBox ID="txt1" runat="server" ></asp:TextBox><br />
                        <asp:Label ID="lbl2" runat="server" Text="PassWord"></asp:Label>
                        <asp:TextBox ID="txt2" runat="server"></asp:TextBox><br />
                        <asp:Button ID="btn" runat="server" Text="Submit" OnClick="btn_Click"  />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
