<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="Pharma.UI.Customer_UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
            <header style="text-align: center; background-color: #FFFFCC; color: #FF9900"><h3>REGISTER</h3></header>
        </div>
        <div>
            <table align="center" class="auto-style2">
                <tr>
                    <td style="font-size: medium; color: #FFFFFF;text-align: justify;">Customer ID*</td>
                    <td>
                        <asp:TextBox ID="txtcid" runat="server" TextMode="Number"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcid" ErrorMessage=" please enter id" ForeColor="White"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: medium; color: #FFFFFF;text-align: justify;">Customer Name*</td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Please enter name" ForeColor="White"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: medium; color: #FFFFFF;text-align: justify;">Age </td>
                    <td>
                        <asp:TextBox ID="txtcage" runat="server" TextMode="Number"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtcage" ErrorMessage="Enter Age" ForeColor="White"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style=" font-size: medium; color: #FFFFFF; text-align: justify;">Email*</td>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="Please enter email Id" ForeColor="White"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Please Enter valid email ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="White"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style=" font-size: medium; color: #FFFFFF; text-align: justify;">username*</td>
                    <td>
                        <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtuser" ErrorMessage="Please enter username" ForeColor="White"></asp:RequiredFieldValidator>
                    &nbsp;
                    </td>
                </tr>
                <tr>
                    <td style=" font-size: medium; color: #FFFFFF;text-align: justify;">password*</td>
                    <td>
                        <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpass" ErrorMessage="Please enter password" ForeColor="White"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtpass" ErrorMessage="Enter 6 letter password" MaximumValue="8" MinimumValue="6" ValidationGroup="p" ForeColor="White"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="AddUser" Text="Submit" BackColor="#00FF99" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" ForeColor="#003300" Height="36px" Width="136px" style="margin-left: 35" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblmsg" runat="server" ForeColor="#FFFF66" Font-Size="Medium"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" ForeColor="White" OnClick="LinkButton1_Click">&gt;&gt;Back to Login Page</asp:LinkButton>
                    </td>
                </tr>
            </table>
            <table align="center" class="auto-style1">
            </table>

            </div>
</asp:Content>
