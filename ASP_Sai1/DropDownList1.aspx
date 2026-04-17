<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropDownList1.aspx.cs" Inherits="ASP_Sai1.DropDownList1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddlDay" runat="server"  >
                <asp:ListItem >Day</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem  >16</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ddlMonth" runat="server"  >
                <asp:ListItem>Month</asp:ListItem>
                <asp:ListItem>Jan</asp:ListItem>
                <asp:ListItem>Feb</asp:ListItem>
                <asp:ListItem  >Apr</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ddlYear" runat="server"  >
                <asp:ListItem>Year</asp:ListItem>
                <asp:ListItem>1990</asp:ListItem>
                <asp:ListItem>1991</asp:ListItem>
                <asp:ListItem>1992</asp:ListItem>
                <asp:ListItem    >2026</asp:ListItem>
            </asp:DropDownList>
        </div>
    </form>
</body>
</html>
