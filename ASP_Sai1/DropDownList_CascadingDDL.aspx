<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropDownList_CascadingDDL.aspx.cs" Inherits="ASP_Sai1.DropDownList_CascadingDDL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged"></asp:DropDownList>
            <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlState_SelectedIndexChanged"></asp:DropDownList> 
            <asp:DropDownList ID="ddlcity" runat="server" ></asp:DropDownList><br /><br />


            <asp:Button  ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/><br /><br />
            <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>

        </div>
    </form>
</body>
</html>
