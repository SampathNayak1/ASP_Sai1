<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADO_RegistrationForm.aspx.cs" Inherits="ASP_Sai1.ADO_RegistrationForm" %>

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
                        <h1>Registration From</h1>
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>First Name: </td>
                    <td>
                        <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                        <%-- <asp:RequiredFieldValidator ID="rfvFname" runat="server" ControlToValidate="txtFname" ForeColor="Red"
                            ErrorMessage="Please enter First name"></asp:RequiredFieldValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td>Last Name : 
                    </td>
                    <td>
                        <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                        <%--          <asp:RequiredFieldValidator ID="rfvLname" runat="server" ControlToValidate="txtLname" ForeColor="Red"
                            ErrorMessage="Please enter Last name"></asp:RequiredFieldValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td>User Name :
                    </td>
                    <td>
                        <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
                        <%-- <asp:RequiredFieldValidator ID="rfvUname" runat="server" ControlToValidate="txtUname" ForeColor="Red"
                            ErrorMessage="Please enter Username"></asp:RequiredFieldValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td>Gender :
                    </td>
                    <td>
                        <asp:RadioButton ID="rbnMale" runat="server" GroupName="gender" Text="Male" AutoPostBack="true"   />
                        <asp:RadioButton ID="rbnFemale" runat="server" GroupName="gender" Text="Female" AutoPostBack="true"  />
                    </td>
                </tr>
                <tr>
                    <td>Hobbies :</td>
                    <td>
                        <asp:CheckBoxList ID="cblHobbies" runat="server">
                            <asp:ListItem Text="Reading" />
                            <asp:ListItem Text="Gaming" />
                            <asp:ListItem Text="Traveling" />
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td>Select Language :
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlLanguages" runat="server" AutoPostBack="true">
                            <asp:ListItem Text="---Choose---"></asp:ListItem>
                            <asp:ListItem Text="CSharp" Value="CSharp"></asp:ListItem>
                            <asp:ListItem Text="SQLServer" Value="SQLServer"></asp:ListItem>
                            <asp:ListItem Text="ADO.Net" Value="ADO.Net"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Email Id :
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <%-- <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ForeColor="Red" ControlToValidate="txtEmail"
                            ErrorMessage="Please enter Email"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revemail" runat="server" ForeColor="red"
                            ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]*\w+)*\.\w+([-.]\+)*"></asp:RegularExpressionValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td>Mobile Number :
                    </td>
                    <td>
                        <asp:TextBox ID="txtMoboileNo" runat="server"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="rfvMobileno" runat="server" ForeColor="Red" ControlToValidate="txtMoboileNo"
                            ErrorMessage="Please enter Mobile number"> </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revMobileno" runat="server" ControlToValidate="txtMoboileNo" ForeColor="Red"
                            ValidationExpression="\d{10}" ErrorMessage="Validate your Phno"></asp:RegularExpressionValidator>--%>
                    </td>

                </tr>
                <tr>
                    <td>Password :
                    </td>
                    <td>
                        <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                        <%--      <asp:RequiredFieldValidator ID="rfvPass" runat="server" ForeColor="Red" ControlToValidate="txtPass"
                            ErrorMessage="Please enter Password"></asp:RequiredFieldValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td>Confirm Password :
                    </td>
                    <td>
                        <asp:TextBox ID="txtCPass" runat="server"></asp:TextBox>
                        <%--        <asp:RequiredFieldValidator ID="rfvCPass" runat="server" ForeColor="Red"
                             ControlToValidate="txtCPass" ErrorMessage="Please enter confirm password"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvtxtCPass" runat="server" ForeColor="Red" ErrorMessage="Enter Valid Confirm Password"
                             ControlToCompare="txtCPass" ControlToValidate="txtPass"  ></asp:CompareValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                        <%--<asp:Button ID="btnGender" runat="server" Text="Radio" OnClick="btnGender_Click" />--%>
                        <asp:Label ID="lblMsg" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <table align="center">
                <tr>
                    <td>
                        <asp:GridView
                            ID="grdData" runat="server"
                            OnPageIndexChanging="grdData_PageIndexChanging"
                            AllowPaging="true"
                            AutoGenerateColumns="false"
                            PageSize="6"
                            DataKeyNames="Rid"
                            OnRowCancelingEdit="grdData_RowCancelingEdit"
                            OnRowDeleting="grdData_RowDeleting"
                            OnRowEditing="grdData_RowEditing"
                            OnRowUpdating="grdData_RowUpdating">
                            <Columns>
                                <asp:TemplateField HeaderText="FirstName">
                                    <ItemTemplate>
                                        <asp:Label ID="lblsFirstname" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtsFirstname" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="LastName">
                                    <ItemTemplate>
                                        <asp:Label ID="lblsLname" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtsLname" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="UserName">
                                    <ItemTemplate>
                                        <asp:Label ID="lblsUname" runat="server" Text='<%# Bind("Username") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtsUname" runat="server" Text='<%# Bind("Username")  %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Gender">
                                    <ItemTemplate>
                                        <asp:Label ID="lblsGender" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="btnGender" runat="server" Text='<%#Bind("Gender") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Hobbies">
                                    <ItemTemplate>
                                        <asp:Label ID="lblHobbies" runat="server" Text='<%# Bind("Hobbies") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtsHobbies" runat="server" Text='<%# Bind("Hobbies") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Languages">
                                    <ItemTemplate>
                                        <asp:Label ID="lblsLanguage" runat="server" Text='<%# Bind("Languages") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtsLanguages" runat="server" Text='<%# Bind("Languages") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Email">
                                    <ItemTemplate>
                                        <asp:Label ID="lblEmail" runat="server" Text='<%# Bind("Email") %>'>
                                        </asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtsEmail" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="PhoneNo">
                                    <ItemTemplate>
                                        <asp:Label ID="lblsPhno" runat="server" Text='<%# Bind("PhoneNo") %>'>
                                        </asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtsPhno" runat="server" Text='<%# Bind("PhoneNo") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Password" >
                                    <ItemTemplate>
                                        <asp:Label ID="lblsPassword" runat="server" Text='<%# Bind("Password") %>'>
                                        </asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtsPassword" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="ConfirmPassword">
                                    <ItemTemplate>
                                        <asp:Label ID="lblsConfirmPassword" runat="server" Text='<%# Bind("ConfirmPassword") %>'>
                                        </asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtsConfirmPassword" runat="server" Text='<%# Bind("ConfirmPassword") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Actins">
                                    <ItemTemplate>
                                        <asp:Button ID="btnsEdit" Text="Edit" runat="server" CommandName="Edit" />
                                        <asp:Button ID="btnsDelete" Text="Delete" runat="server" CommandName="Delete" />
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
