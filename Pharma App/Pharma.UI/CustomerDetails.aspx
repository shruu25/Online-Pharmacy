<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerDetails.aspx.cs" Inherits="Pharma.UI.CustomerDetails_UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
            <header style="text-align: center; background-color: #FFFFCC; color: #FF9900"><h3>CUSTOMERS RECORD</h3></header>
        </div>
    <div>
        <table>
            <tr><td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="ObjectDataSource1" PageSize="3" Height="116px" Width="783px" AllowSorting="True">
                    <Columns>
                        <asp:BoundField DataField="Cust_Id" HeaderText="Cust_Id" SortExpression="Cust_Id" />
                        <asp:BoundField DataField="Customer_Name" HeaderText="Customer_Name" SortExpression="Customer_Name" />
                        <asp:BoundField DataField="Customer_Age" HeaderText="Customer_Age" SortExpression="Customer_Age" />
                        <asp:BoundField DataField="Email_id" HeaderText="Email_id" SortExpression="Email_id" />
                        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" BackColor="#66FF99" BorderStyle="Solid" Font-Bold="True" ForeColor="#003300" />
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="Pharmacy.Entities.CustomerDetails" InsertMethod="AddUser" SelectMethod="GetCustomers" TypeName="Pharmacy.BusinessLayer.CustomerDetailsService"></asp:ObjectDataSource>
                </td></tr>

    </table>

    </div>
</asp:Content>
