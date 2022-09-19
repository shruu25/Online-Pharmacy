<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SetAdminPassword.aspx.cs" Inherits="Pharma.UI.SetAdminPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
            <header style="text-align: center; background-color: #FFFFCC; color: #FF9900"><h3>ADMIN</h3></header>
        </div>
    <div style="justify-content">
            <table align="center" class="auto-style1">
                <tr>
                    <td style="color: #FFFFFF">Admin*</td>
                    <td>
                        <asp:TextBox ID="txtadminn" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtadminn" ErrorMessage="Pls enter username"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="color: #FFFFFF">New Password*</td>
                    <td>
                        <asp:TextBox ID="txtnew" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnew" ErrorMessage="Pls enter New password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="color: #FFFFFF">Confirm new password*</td>
                    <td>
                        <asp:TextBox ID="txtc" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnew" ControlToValidate="txtc" ErrorMessage="password not matched"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" BackColor="Fuchsia" OnClick="Button1_Click" Text="Set" ForeColor="White" />
                    </td>
                </tr>
            </table>
        </div>
</asp:Content>
