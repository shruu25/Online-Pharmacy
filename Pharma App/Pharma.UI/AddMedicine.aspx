<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddMedicine.aspx.cs" Inherits="Pharma.UI.AddMedicine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div>
            <header style="text-align: center; background-color: #FFFFCC; color: #FF9900"><h3>ADD MEDICINE</h3></header>
        </div>
        <div>
            <table align="center" class="auto-style1" >
                <tr>
                    <td style="color: #FFFFFF">Medicine Code</td>
                    <td>
                        <asp:TextBox ID="txtcode" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="color: #FFFFFF">Medicine name</td>
                    <td>
                        <asp:TextBox ID="txtmedname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="color: #FFFFFF">Manufacturer</td>
                    <td>
                        <asp:TextBox ID="txtmanf" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="color: #FFFFFF">Amount</td>
                    <td>
                        <asp:TextBox ID="txtamt" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
               
                <tr>
                    <td style="color: #FFFFFF">Price</td>
                    <td>
                        <asp:TextBox ID="txtprice" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Add_Medicine" Text="Add " />
&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblmsg" runat="server" OnDataBinding="Add_Medicine"></asp:Label>
                    </td>
                </tr>
               <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ForeColor="#FFFF99">Check Medicine details</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
    
</asp:Content>
