<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChekBox_Hobbies.aspx.cs" Inherits="ASP_Sai1.ChekBox_Hobbies" %>

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
                    <td ><h1>Hobbies</h1></td>
                </tr>
            </table>
            <table align="center">
                 
                <tr>
                    <td>
                        <asp:CheckBox ID="chkPD" runat="server" AutoPostBack="true" Text="Personal Devlopment" OnCheckedChanged="chkPD_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="chkTH" runat="server" AutoPostBack="true" Text="Technical Hobbies" OnCheckedChanged="chkPD_CheckedChanged"  /> 
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="chkPA" runat="server" AutoPostBack="true" Text="Physical Activity" OnCheckedChanged="chkPD_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <asp:CheckBox ID="chkE" runat="server" AutoPostBack="true" Text="Entertainment" OnCheckedChanged="chkPD_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblResult" runat="server" Text="Hobbies :"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtResult" runat="server" Width="719px"  ></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
