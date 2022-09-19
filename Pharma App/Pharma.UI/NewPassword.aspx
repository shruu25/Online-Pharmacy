<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewPassword.aspx.cs" Inherits="Pharma.UI.NewPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td style="color: #FFFFFF">Username*</td>
                    <td>
                        <asp:TextBox ID="Txtus" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtus" ErrorMessage="Pls enter username"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="color: #FFFFFF">New Password*</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Pls enter New password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="color: #FFFFFF">Confirm new password*</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="password not matched"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" BackColor="Aqua" OnClick="Button1_Click" Text="Set" />
                    </td>
                </tr>
            </table>
        </div>
</asp:Content>
