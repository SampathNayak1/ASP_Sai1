
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
                        <h1>Movie Ticket Booking </h1>
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>
                        <asp:Label ID="lblMName" runat="server" Text="Movie Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Choose Show Time :</td>
                    <td>
                        <asp:RadioButton ID="rbnMorning" runat="server" GroupName="ShowTime" AutoPostBack="true" Text="Morning" />
                        <asp:RadioButton ID="rbnEvning" runat="server" GroupName="ShowTime" AutoPostBack="true" Text="Evening" />

                    </td>
                </tr>
                <tr>
                    <td>Add-Ons</td>
                    <td>
                        <asp:CheckBox ID="chkPop" runat="server" AutoPostBack="true" Text="Pop-Corns" />
                        <asp:CheckBox ID="chkSoftdrinks" runat="server" AutoPostBack="true" Text="Soft-Drints" />
                        <asp:CheckBox ID="chk3dGlass" runat="server" AutoPostBack="true" Text="3D-Glasses" />
                    </td>
                </tr>
                <tr>
                    <td>County :
                        <asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged"></asp:DropDownList>
                    </td>
                    <td>State :
                        <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlState_SelectedIndexChanged"></asp:DropDownList>
                    </td>
                    <td>City :
                        <asp:DropDownList ID="ddlcity" runat="server" AutoPostBack="true"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click1" />
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>
                        <asp:Label ID="lblResult" runat="server" Text="" />
                    </td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
