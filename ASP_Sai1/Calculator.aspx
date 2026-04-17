<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="ASP_Sai1.Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center">
                <tr align="center">
                    <td><h1>Calculator</h1></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblNum1" runat="server" Text="Number 1"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtnum1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblNum2" runat="server" Text="Number 2"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNum2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:Label ID="lblResult" runat="server" Text="Result"></asp:Label> 
                    </td>
                    <td>
                        <asp:TextBox ID="txtResult" runat="server"></asp:TextBox>  
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Additon"/>
                    </td>
                    <td>
                        <asp:Button ID="btnSub" runat="server" OnClick="btnSub_Click" Text="Subtraction"/>
                    </td>
                    <td>
                        <asp:Button ID="btnMul" runat="server" OnClick="btnMul_Click" Text="Multiplication" />
                    </td>
                    <td>
                        <asp:Button ID="btnDiv" runat="server" OnClick="btnDiv_Click" Text="Division" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
