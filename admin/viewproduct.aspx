<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="viewproduct.aspx.cs" Inherits="admin_viewproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
  
     <asp:Repeater ID="d1" runat="server">
        
        <HeaderTemplate>
             
        <table border="2">
         
    
     <table border="2">
            <tr style="background:gray;color:white;border:thick;">
                <th>ID</th>
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
                <td><%#Eval("ID") %></td>
          <td><%#Eval("productname") %></td> 
          <td><%#Eval("category") %></td> 
          <td><%#Eval("qty") %></td> 
          <td><%#Eval("price") %></td> 
          <td><img src="<%#Eval("product_images") %>" height="100" width="100" /></td> 
                <td><a href="deleteproduct.aspx?id=<%#Eval("ID")%>">Delete</a><br /><a href="productedit.aspx?id=<%#Eval("ID") %>">Edit</a></td>
           </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>

    </asp:Repeater>
 </asp:Content>

