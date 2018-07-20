<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
   <center> <h2><u>Online Arts and Crafts Shop</u></h2><br />
		<p>Online Arts and Crafts Shop is Nepals pioneer handicraft manufacturer and exporter. We use environment friendly process on manufacturing all of our products and we are also committed towards providing fair wages and good working condition to our workers and crafters.Our company is registered company under the company act of Nepal.We are dedicated towards customer satisfaction, all of our products are carefully chosen and passed in our quality control examination. </p><br />
        <hr/><br />
    <h3><u> Our Main Missions</u></h3><br />
		<p>Promote Fair Trade products of Nepal.<br />
Devlope skill of women and make them self depended and skillful.<br />
Improve the living standard of rural and urban low income families.<br />
Promote traditional Nepali handicrafts products internationally.<br />
Discourage child labour practices in Nepal. </p></center>
      
	
      <asp:Repeater ID="d1" runat="server">
        
        
        <FooterTemplate>
      
        </FooterTemplate>

    </asp:Repeater>
</asp:Content>

