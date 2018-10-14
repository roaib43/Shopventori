<%@ Page Title="" Language="C#" MasterPageFile="~/DemoStaff/Staff.Master" AutoEventWireup="true" CodeBehind="ViewStock.aspx.cs" Inherits="WebApplication1.DemoStaff.ViewStock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="StaffHead" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="extra2" runat="server">
    <header>
        <link rel="stylesheet" href="datatable.css" type="text/css" />
        <link rel="stylesheet" href="../Content/bootstrap.css" type="text/css" />
    </header>
    <div class="datatab">
        <h1>Out of Stock</h1>
        
       <asp:GridView ID="gridoos" CssClass="table table-striped custab" runat="server" AutoGenerateColumns="False" CellPadding="4" BackColor="Red" ForeColor="#333333" GridLines="None" >  
        
        <AlternatingRowStyle BackColor="Red" />   
           <columns>  
        
         <asp:TemplateField HeaderText="Product ID">  
             <ItemTemplate>  
                 <asp:Label ID="ProductId" CssClass="danger" runat="server" Text='<%#Bind("id") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Name">  
             <ItemTemplate>  
                 <asp:Label ID="ProductName" runat="server" Text='<%#Bind("name") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Price">  
             <ItemTemplate>  
                 <asp:Label ID="ProductPrice" runat="server" Text='<%#Bind("price") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField> 
          <asp:TemplateField HeaderText="Brand">  
             <ItemTemplate>  
                 <asp:Label ID="ProductBrand" runat="server" Text='<%#Bind("brand") %>'></asp:Label>  
             </ItemTemplate>  
              
         </asp:TemplateField> 
          <asp:TemplateField HeaderText="Exp Date">  
             <ItemTemplate>  
                 <asp:Label ID="ProductExpDate" runat="server" Text='<%#Bind("expdate") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField> 
          <asp:TemplateField HeaderText="Availablity" ControlStyle-BackColor="Red">  
             <ItemTemplate>  
                 <asp:Label ID="ProductAvail" runat="server" Text='<%#Bind("qty") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField> 
     </columns>   
           </asp:GridView>
    </div>





    <div class="datatab">
        <h1>Compelete Stock</h1>
    <asp:GridView ID="grid1" CssClass="table table-striped custab" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" >  
        
        <AlternatingRowStyle BackColor="White" />  
     <columns>  
         
         <asp:TemplateField HeaderText="Product ID">  
             <ItemTemplate>  
                 <asp:Label ID="ProductId" runat="server" Text='<%#Bind("id") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Name">  
             <ItemTemplate>  
                 <asp:Label ID="ProductName" runat="server" Text='<%#Bind("name") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Price">  
             <ItemTemplate>  
                 <asp:Label ID="ProductPrice" runat="server" Text='<%#Bind("price") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField> 
          <asp:TemplateField HeaderText="Brand">  
             <ItemTemplate>  
                 <asp:Label ID="ProductBrand" runat="server" Text='<%#Bind("brand") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField> 
          <asp:TemplateField HeaderText="Exp Date">  
             <ItemTemplate>  
                 <asp:Label ID="ProductExpDate" runat="server" Text='<%#Bind("expdate") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField> 
          <asp:TemplateField HeaderText="Availablity">  
             <ItemTemplate>  
                 <asp:Label ID="ProductAvail" runat="server" Text='<%#Bind("qty") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField> 
     </columns>   
 </asp:GridView>
        </div>  


    
    
</asp:Content>
