<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LifeCycleAsp.aspx.cs" Inherits="ASP_Sai1.LifeCycleAsp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <asp:Label ID="lblPPreInit" runat="server"></asp:Label><br />
  <asp:Label ID="lblPInit" runat="server"></asp:Label><br />
  <asp:Label ID="lblPInitCompelte" runat="server"></asp:Label><br />
            <asp:Label ID="lblPLoad" runat="server"></asp:Label><br />
          
            <asp:Label ID="lblPLoadComplete" runat="server"></asp:Label><br />

            <asp:TextBox ID="txtusername" runat="server" OnTextChanged="txtusername_TextChanged"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /><br />
          
            <asp:RadioButton ID="rbnTelugu" runat="server" GroupName="language" AutoPostBack="true" OnCheckedChanged="rbnTelugu_CheckedChanged" />Telugu - 
            <asp:Label ID="lblTelugu" runat="server"></asp:Label> <br />
            <asp:RadioButton  ID="rbnEnglish" runat="server" GroupName="laguage" AutoPostBack="true" OnCheckedChanged="rbnEnglish_CheckedChanged"/>English - 
            <asp:Label ID="lblEnglish" runat="server"></asp:Label><br />
            <asp:RadioButton ID="rbnHindi" runat="server" GroupName="language" AutoPostBack="true" OnCheckedChanged="rbnHindi_CheckedChanged" />Hindi - 
            <asp:Label ID="lblHindi" runat="server"></asp:Label><br />

            <asp:CheckBox ID="chkChess" AutoPostBack="true" runat="server" OnCheckedChanged="chkChess_CheckedChanged" />Chess
            <asp:Label ID="lblChess" runat="server"></asp:Label><br />

            <asp:CheckBox ID="chkTennis" AutoPostBack="true" runat="server" OnCheckedChanged="chkTennis_CheckedChanged" />Tennis
            <asp:Label ID="lblTennis" runat="server"></asp:Label><br /> 

            <asp:CheckBox ID="chkCriket" AutoPostBack="true"  runat="server" OnCheckedChanged="chkCriket_CheckedChanged"/>Cricket
            <asp:Label ID="lblCricket" runat="server"></asp:Label><br /> 
        </div>
    </form>
</body>
</html>
