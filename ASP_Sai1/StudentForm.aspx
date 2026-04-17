<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentForm.aspx.cs" Inherits="ASP_Sai1.StudentForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center">
                <tr align="center" >
                    <td><h1>Student Form</h1></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSid" runat="server" Text="Student Id"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtId" runat="server"  ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSname" runat="server" text="Student Name">  </asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:Label ID="lblSdept" runat="server" Text="Student Department"></asp:Label>
                    </td>
                     <td>
                        <asp:TextBox ID="txtSsal" runat="server"></asp:TextBox>
                     </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                         <asp:Button ID="txtSubmit" runat="server" Text="Submit" OnClick="txtSubmit_Click"/>
                    </td>
                </tr>
                
            </table>
            <table align="center">
                <tr>
                 <td>
                       <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
                  </td>
                    </tr>
            </table>

            <table align="center">
                <tr>
                    <td>
                        <asp:label ID="lbltext" runat="server" Text ="Enter a value"></asp:label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtbox1" runat="server" AutoPostBack="true" OnTextChanged="txtbox1_TextChanged"   ></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Button" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
