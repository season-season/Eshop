<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="displayorder.aspx.cs" Inherits="admin_displayorder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">

       <asp:Repeater ID="r1" runat="server">
        
        <HeaderTemplate>
  
        <table border="2">
            <tr style="background:gray;color:white;border:thick;">
                <th>ID</th>
                <th>Firstname</th>
                <th>Lastname</th>
                <th>Email</th>
                <th>Gender</th>
                <th>adress</th>
                <th>pincode</th>
                <th>Contact no</th>
                <th>View Full Detail</th>
                
            </tr>
</HeaderTemplate>

        <ItemTemplate>
            <tr>
                <td><%#Eval("id") %></td>
            <td><%#Eval("firstname") %></td> 
          <td><%#Eval("lastname") %></td> 
          <td><%#Eval("email") %></td> 
          <td><%#Eval("gender") %></td> 
          <td><%#Eval("adress") %></td> 
          <td><%#Eval("pincode") %></td> 
          <td><%#Eval("mobile") %></td> 
                <td><a href="view_full_order.aspx?id=<%#Eval("id") %>">View Full Order</a></td>
           </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>

    </asp:Repeater>

</asp:Content>

