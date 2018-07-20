<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="view_full_order.aspx.cs" Inherits="admin_view_full_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <asp:Label   ID="r2" runat="server"  Text="" ></asp:Label> 
 <asp:Label   ID="r3" runat="server"  Text="" ></asp:Label> 
 <asp:Label   ID="r4" runat="server"  Text="" ></asp:Label> 
 <asp:Label   ID="r5" runat="server"  Text="" ></asp:Label> 
 
     <asp:Repeater ID="r1" runat="server">
        
        <HeaderTemplate>
             
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
          <td><img src="<%#Eval("product_images") %>" height="100" width="100" /></td> 
                <td><a href="approveorder.aspx?id=<%#Eval("id") %>">Approved</a><br /><a href="view_full_order.aspx?id=<%#Eval("id") %>">Cancel</a></td>
           </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>

    </asp:Repeater>
    <asp:Label ID="tot3" runat="server"></asp:Label>
</asp:Content>

