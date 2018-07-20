<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="viewcart.aspx.cs" Inherits="viewcart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <div>
        <asp:DataList ID="d1" runat="server">
            <HeaderTemplate>
                <table>
                
            </HeaderTemplate>
            <ItemTemplate>
               
                <tr><td><img src="admin/<%#Eval("images") %>" alt="" height="200px" width="200px"/></td>
                   
                    <td><h3><%#Eval("productname") %></h3></td><br/>
                    <td><h3><%#Eval("category") %></h3></td><br />
                    <td><h3><%#Eval("price") %></h3></td><br />
                    <td><h4 style="color:red;"><%#Eval("qty") %> </h4></td> <br />
                  <td><p><%#Eval("desc") %></p></td><br />
                     
                      <td><a href="delete_cart.aspx?id=<%#Eval("id")%>"><h4>Delete Cart</h4></a></td>

                </tr>
            </ItemTemplate>
            <FooterTemplate>
               </table>
            </FooterTemplate>

        </asp:DataList> 
        <p align="center">
            <asp:Label ID="l1" runat="server"></asp:Label>
            <asp:Button ID="ch1" runat="server" Text="Checkout" OnClick="ch1_Click" />
        </p>
    </div>
    </asp:Content>