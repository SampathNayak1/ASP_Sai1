<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SessionState.aspx.cs" Inherits="ASP_Sai1.SessionState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lbl1" runat="server"></asp:Label>
            <asp:Button ID="btn" runat="server" Text="Submit" OnClick="btn_Click"  />
            <asp:Label ID="lblCount" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
