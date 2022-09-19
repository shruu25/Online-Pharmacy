<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Pharma.UI.AdminLogin" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
        <div class="container-fluid">
            <header style="text-align: center; background-color: #FFFFCC; color: #FF9900"><h3>ADMIN LOGIN</h3></header>
        </div>
        <div>
            <table align="center" class="auto-style1">
                    <tr>
                        <td style="color: #FFFFFF">Admin *</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtadmin" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtadmin" ErrorMessage="Enter admin name" ValidationGroup="S" ForeColor="White"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="color: #FFFFFF">Password *</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpwd" ErrorMessage="Enter password" ValidationGroup="S" ForeColor="White"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log In" ValidationGroup="S" BackColor="#FF99FF" />
                            &nbsp;&nbsp; <asp:Button ID="Button2" runat="server" OnClick="Reset" Text="Reset" CssClass="auto-style7" BackColor="#FFCC99" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>
                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" ForeColor="White">Forgot Password</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>
                            <asp:Label ID="lblmsg" runat="server" BackColor="#9900CC" ForeColor="Yellow"></asp:Label>
                        </td>
                    </tr>
                
                </table>
        </div>
   
</asp:Content>
