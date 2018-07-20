<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <table>
<tr>
    <td>
        firstname:
      </td>
   <td>
     <asp:TextBox ID="t1" runat="server"></asp:TextBox>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="t1" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
   <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="t1" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[a-zA-Z]*$">Please Enter Text</asp:RegularExpressionValidator>

   </td>
        </tr>

<tr>
    <td>
        lastname:
      </td>
   <td>
     <asp:TextBox ID="t2" runat="server"></asp:TextBox>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="t2" ErrorMessage="Please Insert"></asp:RegularExpressionValidator>
   <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="t2" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[a-zA-Z]*$">Please Enter Text</asp:RegularExpressionValidator>

   </td>
        </tr>
<tr>
    <td>
        email:
      </td>
   <td>
     <asp:TextBox ID="t3" runat="server"></asp:TextBox><asp:Label ID="v1" runat="server" Text="" ForeColor="Red"></asp:Label>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="t3" ErrorMessage="Please Insert"></asp:RegularExpressionValidator>
       <asp:RegularExpressionValidator ID="emailvalidation" runat="server" ControlToValidate="t3" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Please enter Correct Format</asp:RegularExpressionValidator>
   </td>
        </tr>
<tr>
    <td>
        password:
      </td>
   <td>
     <asp:TextBox ID="t4" runat="server" TextMode="Password"></asp:TextBox>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="t4" ErrorMessage="Please Insert"></asp:RegularExpressionValidator>
   </td>
        </tr>
  <tr><td>
    Gender:<asp:DropDownList ID="t5" runat="server">
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
     <asp:TextBox ID="t6" runat="server" TextMode="MultiLine"></asp:TextBox>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="t6"  ErrorMessage="Please Insert"></asp:RegularExpressionValidator>
   </td>
        </tr>
<tr>
    <td>
        City
      </td>
   <td>
     <asp:TextBox ID="t7" runat="server"></asp:TextBox>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="t7" ErrorMessage="please Insert"></asp:RegularExpressionValidator>
   </td>
        </tr>
        <tr>
    <td>
        State:
      </td>
   <td>
     <asp:TextBox ID="t8" runat="server"></asp:TextBox>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="t8" ErrorMessage="Please Insert"></asp:RegularExpressionValidator>
   </td>
        </tr>
        <tr>
    <td>
        pincode:
      </td>
   <td>
     <asp:TextBox ID="t9" runat="server"></asp:TextBox>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="t9" ErrorMessage="Please Insert"></asp:RegularExpressionValidator>
   </td>
        </tr>
<tr>
    <td>
        phone:
      </td>
   <td>
     <asp:TextBox ID="t10" runat="server"></asp:TextBox>
       <asp:RegularExpressionValidator ID="Phonevalidation" runat="server" ControlToValidate="t10" ErrorMessage="RegularExpressionValidator" ValidationExpression="\d{10}">Enter 10 Digit number</asp:RegularExpressionValidator>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="t10" ErrorMessage="Please Insert"></asp:RegularExpressionValidator>
   </td>
        </tr>

             <tr>
     <td>
     <asp:Button ID="b1" runat="server" Text="Register" OnClick="b1_Click" />
   </td>
                 <td>
                     <asp:Label ID="l1" runat="server"></asp:Label>

                 </td>

        </tr>


    </table>


    

</asp:Content>

