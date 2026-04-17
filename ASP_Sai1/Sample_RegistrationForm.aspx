<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sample_RegistrationForm.aspx.cs" Inherits="ASP_Sai1.Sample_RegistrationForm" %>

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
                        <h1>Registration Form</h1>
                    </td>
                    <td></td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>
                        <asp:Label ID="lblName" runat="server" Text="Name   "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblMobile" runat="server" Text="Mobile   "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Gender 
                    </td>
                    <td>
                        <asp:RadioButton ID="rbtnMale" runat="server" Text="Male" GroupName="gender" AutoPostBack="true" OnCheckedChanged="rbtnMale_CheckedChanged" />
                        <asp:RadioButton ID="rbtnFemale" runat="server" Text="Female" GroupName="gender" AutoPostBack="true" OnCheckedChanged="rbtnMale_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"> </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Hobbies
                    </td>
                    <td>
                        <asp:CheckBox ID="chkPD" runat="server" Text="Personal Developmnet" AutoPostBack="true" OnCheckedChanged="chkPD_CheckedChanged" />
                    </td>
                    <td>
                        <asp:CheckBox ID="chkTH" runat="server" Text="Technical Hobbies" AutoPostBack="true" OnCheckedChanged="chkPD_CheckedChanged" />

                    </td>
                    <td>
                        <asp:CheckBox ID="chkPA" runat="server" Text="Physical Activity" AutoPostBack="true" OnCheckedChanged="chkPD_CheckedChanged" />
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    </td>
                </tr>

            </table>
            <table align="center">
                <tr>
                    <td>
                        <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
                        <asp:Label ID="lblHobbies" runat="server" Text=" "></asp:Label>
                        <asp:Label ID="lblgender" runat="server" Text=" "></asp:Label>


                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
