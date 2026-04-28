<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADO_Login.aspx.cs" Inherits="ASP_Sai1.ADO_Login" %>

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
                        <h1>Login Page</h1>
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>
                        <asp:Label ID="lblUsername" runat="server" Text="Username : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                         <asp:requiredfieldvalidator id="rfvusername" runat="server" forecolor="red" controltovalidate="txtusername"
                            errormessage="please enter username"></asp:requiredfieldvalidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassword" runat="server" Text="Password : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server"> </asp:TextBox>
                            <asp:requiredfieldvalidator id="rfvpassword" runat="server" forecolor="red" controltovalidate="txtpassword"
                            errormessage="please enter password"></asp:requiredfieldvalidator>
                    </td>
                </tr>

                <tr>

                    <td>
                        <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click1" />
                        <asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_click" />
                    </td>
                    <td>
                        <asp:Button ID="btnsubmit" runat="server" Text="Insert" OnClick="btnsubmit_Click1" />


                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:TextBox ID="txtsearch" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:Button ID="btnsearch" runat="server" Text="search" OnClick="btnsearch_click" />
                    </td>
                </tr>
            </table>

            <table align="center">
                <tr>
                    <td>
                        <asp:GridView ID="grdData" runat="server"
                            AllowPaging="true"
                            PageSize="5"
                            DataKeyNames="Uid"
                            AutoGenerateColumns="false"
                            OnPageIndexChanging="grdData_PageIndexChanging"
                            OnRowCancelingEdit="grdData_RowCancelingEdit"
                            OnRowEditing="grdData_RowEditing"
                            OnRowUpdating="grdData_RowUpdating"
                            OnRowDeleting="grdData_RowDeleting">
                            <Columns>

                                <asp:TemplateField HeaderText="Username">
                                    <ItemTemplate>
                                        <asp:Label ID="lblsUname" runat="server" Text='<%# Bind("Uname") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtsUname" runat="server" Text='<%# Bind("Uname") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Password">
                                    <ItemTemplate>
                                        <asp:Label ID="lblsPass" runat="server" Text='<%# Bind("UPassword") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtsPass" runat="server" Text='<%# Bind("UPassword") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Actions">
                                    <ItemTemplate>
                                        <asp:Button ID="btnsEdit" runat="server" Text="Edit" CommandName="Edit" />
                                        <asp:Button ID="btnsDelte" runat="server" Text="Delete" CommandName="Delete" />
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:Button ID="btnsUpdate" runat="server" Text="Update" CommandName="Update" />
                                        <asp:Button ID="btnsCancel" runat="server" Text="Cancel" CommandName="Cancel" />
                                    </EditItemTemplate>
                                </asp:TemplateField>

                            </Columns>
                        </asp:GridView>

                    </td>
                </tr>
            </table>



        </div>


    </form>
</body>
</html>
