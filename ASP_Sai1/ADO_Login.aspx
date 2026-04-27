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
                        <%-- <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ForeColor="Red" ControlToValidate="txtUsername"
                            ErrorMessage="Please enter username"></asp:RequiredFieldValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassword" runat="server" Text="Password : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server"> </asp:TextBox>
                        <%--    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ForeColor="Red" ControlToValidate="txtPassword"
                            ErrorMessage="Please enter password"></asp:RequiredFieldValidator>--%>
                    </td>
                </tr>
               
                 <tr>

                    <td>
                        <asp:button id="btnsubmit" runat="server" text="insert" OnClick="btnsubmit_Click1"      />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:button id="btnupdate" runat="server" text="update" OnClick="btnupdate_Click1"   />
                    </td>
                    <td>
                        <asp:button id="btndelete" runat="server" text="delete" onclick="btndelete_click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:textbox id="txtsearch" runat="server"></asp:textbox></td>
                    <td>
                        <asp:button id="btnsearch" runat="server" text="search" onclick="btnsearch_click" />
                    </td>
                </tr>
            </table>

            
                   
                        <asp:GridView ID="grdData" runat="server" 
                                        AllowPaging="true" 
                                        PageSize="5" 
                                        DataKeyNames="Uid"
                                        AutoGenerateColumns="false" OnPageIndexChanging="grdData_PageIndexChanging" OnRowCancelingEdit="grdData_RowCancelingEdit" OnRowEditing="grdData_RowEditing" OnRowUpdating="grdData_RowUpdating" OnRowDeleting="grdData_RowDeleting"                  >
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
                                        <asp:Button ID="btnsEdit"  runat="server" Text="Edit" CommandName="Edit"/>
                                        <asp:Button ID="btnsDelte" runat="server" Text="Delete" CommandName="Delete" />
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:Button ID="btnsUpdate" runat="server" Text="Update" CommandName="Update"/>
                                        <asp:Button ID="btnsCancel" runat="server" Text="Cancel" CommandName="Cancel"/>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                            </Columns>
                        </asp:GridView>
               
             
        </div>


    </form>
</body>
</html>
