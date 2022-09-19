<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerLogin.aspx.cs" Inherits="Pharma.UI.CustomerLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div>
            <header style="text-align: center; background-color: #FFFFCC; color: #FF9900"><h3>CUSTOMER LOGIN</h3></header>
        </div>
        <div>
            <table align="center" class="auto-style1">
                    <tr>
                        <td style="color: #FFFFFF; height: 42px;">Username *</td>
                        <td class="auto-style9" style="height: 42px">
                            &nbsp;<asp:TextBox ID="txtuser" runat="server" OnTextChanged="Page_Load" Width="120px" OnDataBinding="Page_Load" ValidationGroup="k"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuser" ErrorMessage="Enter valid name" ValidationGroup="k" ForeColor="White" OnDataBinding="Page_Load"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="color: #FFFFFF; height: 36px;">Password *</td>
                        <td class="auto-style9" style="height: 36px">
                            <br />
                            &nbsp;<asp:TextBox ID="txtpass" runat="server" TextMode="Password" Width="120px" OnDataBinding="Page_Load" ValidationGroup="k"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpass" ErrorMessage="Enter password" ValidationGroup="k" ForeColor="White"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="height: 43px"></td>
                        <td style="height: 43px">
                            &nbsp;
                            <asp:Button ID="Button1" runat="server" OnClick="Check_SignIn" Text="Log In" ValidationGroup="S" BackColor="Lime" ForeColor="#003300" OnDataBinding="Check_SignIn" />
                            &nbsp;&nbsp; <asp:Button ID="Button2" runat="server" OnClick="Reset" Text="Reset" CssClass="auto-style7" BackColor="#FF6600" ForeColor="Maroon" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="height: 36px"></td>
                        <td style="height: 36px">
                            &nbsp;&nbsp;
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ForeColor="#CCFFFF">Create a new account</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="height: 36px"></td>
                        <td style="height: 36px">
                            &nbsp;&nbsp;
                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" ForeColor="#CCFFFF">Forgot Password</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="height: 33px"></td>
                        <td style="height: 33px">
                            &nbsp;&nbsp;
                            <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                        </td>
                    </tr>
                
                </table>
        </div>
   
</asp:Content>
