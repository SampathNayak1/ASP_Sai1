<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Session1.aspx.cs" Inherits="ASP_Sai1.Session1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Session1.aspx</h2>
            <table>
                <tr>
                    <%--<td>Welcome</td>--%> 
                     <td><asp:Label ID="lblString" runat="server"></asp:Label></td>      
                </tr>
                <tr>
                    <td>
                        First Name :
                    </td>
                    <td>
                        <asp:Label ID="lblFname" runat="server" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Last Name :
                    </td>
                    <td>
                        <asp:Label ID="lblLname" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
