<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckBox_Calculation.aspx.cs" Inherits="ASP_Sai1.CheckBox_Calculation" %>

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
                        <asp:CheckBox ID="chkC" runat="server" AutoPostBack="true" Text="C-3000" OnCheckedChanged="chkC_CheckedChanged"  />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="chkCPP" runat="server" AutoPostBack="true" Text="CPP-5000" OnCheckedChanged="chkC_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="chkDotNet" runat="server" AutoPostBack="true" Text="DotNet-10000" OnCheckedChanged="chkC_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblResult" runat="server" Text="Total Result "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtResult" runat="server" Enabled="true"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
