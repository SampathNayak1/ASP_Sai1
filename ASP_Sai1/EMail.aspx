<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EMail.aspx.cs" Inherits="ASP_Sai1.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <h1 align="center">Send Mail Application</h1>
               <table align="center" style: border:"2px solid blue  ">
                
                <tr>
                    <td>
                        <asp:Label ID="lblFrom" runat="server" Text="From : "></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtFrom" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSubject" runat="server" Text="Subject : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTo" runat="server" Text="To : "></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtTo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblCc" runat="server" Text="CC : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCc" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblBody" runat="server" Text="Body : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" Height="118px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td> 
                        <asp:Button ID="btnSubmit" runat="server" Text="Button" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
