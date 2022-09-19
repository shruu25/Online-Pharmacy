<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GetMedicines.aspx.cs" Inherits="Pharma.UI.GetMedicines" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
            <header style="text-align: center; background-color: #FFFFCC; color: #FF9900"><h3>MEDICINES RECORD</h3></header>
        </div>
    <table align="center" style="width: 50%">
        <tr>
            <td>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" PageSize="3" Width="573px" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Med_code" HeaderText="Med_code" SortExpression="Med_code" />
                        <asp:BoundField DataField="Med_name" HeaderText="Med_name" SortExpression="Med_name" />
                        <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" SortExpression="Manufacturer" />
                        <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PharmacyDBConn %>" SelectCommand="SELECT * FROM [Med]">
                </asp:SqlDataSource>
                <asp:Button ID="Button1" runat="server" BackColor="#66FF99" BorderStyle="Solid" Font-Bold="True" ForeColor="#003300" OnClick="Button1_Click" Text="Back" />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
