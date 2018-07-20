<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="update_order_detils.aspx.cs" Inherits="update_order_detils" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <table>
<tr>
    <td>
        firstname:
      </td>
   <td>
     <asp:TextBox ID="t1" runat="server"></asp:TextBox>
   </td>
        </tr>

<tr>
    <td>
        lastname:
      </td>
   <td>
     <asp:TextBox ID="t2" runat="server"></asp:TextBox>
   </td>
        </tr>
    <tr><td>
    Gender:<asp:DropDownList ID="t3" runat="server">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
    </asp:DropDownList>
    <br />
    </td></tr>
<tr>
    <td>
       Address
      </td>
   <td>
     <asp:TextBox ID="t4" runat="server" TextMode="MultiLine"></asp:TextBox>
   </td>
        </tr>
<tr>
    <td>
        City
      </td>
   <td>
     <asp:TextBox ID="t5" runat="server"></asp:TextBox>
   </td>
        </tr>
        <tr>
    <td>
        State:
      </td>
   <td>
     <asp:TextBox ID="t6" runat="server"></asp:TextBox>
   </td>
        </tr>
        <tr>
    <td>
        pincode:
      </td>
   <td>
     <asp:TextBox ID="t7" runat="server"></asp:TextBox>
   </td>
        </tr>
<tr>
    <td>
        phone:
      </td>
   <td>
     <asp:TextBox ID="t8" runat="server"></asp:TextBox>
       <asp:RegularExpressionValidator ID="Phonevalidation" runat="server" ControlToValidate="t8" ErrorMessage="RegularExpressionValidator" ValidationExpression="\d{10}">Enter 10 Digit number</asp:RegularExpressionValidator>
   </td>
        </tr>
      <tr>
     <td>
     <asp:Button ID="b1" runat="server" Text="Update and Continue" OnClick="b1_Click" />
   </td>

  
    </table>    
</asp:Content>

