<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="myaccount.aspx.cs" Inherits="myaccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <asp:Repeater ID="r1" runat="server">
 
    <HeaderTemplate>
             <h3><a href="Viewrecievedorder.aspx">View Recieved Order</a></h3>
        <table border="2">
            <tr style="background:gray;color:white;border:thick;">
                <th>ID</th>
                <th>Order_id</th>
                <th>ProductName</th>
                <th>Category</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Images</th>
                <th>Action</th>
                
            </tr>
</HeaderTemplate>

        <ItemTemplate>
            <tr>
                <td><%#Eval("id") %></td>
                <td><%#Eval("order_id") %></td>
            <td><%#Eval("productname") %></td> 
          <td><%#Eval("category") %></td> 
          <td><%#Eval("productqty") %></td> 
          <td><%#Eval("productprice") %></td> 
          <td><img src="admin/<%#Eval("product_images") %>" height="100" width="100" /></td> 
                <td>Pending</td>
           </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>

    </asp:Repeater>
    <asp:Label ID="tot3" runat="server"></asp:Label>

</asp:Content>

