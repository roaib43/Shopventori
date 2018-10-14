<%@ Page Title="" Language="C#" MasterPageFile="~/Demo/Site1.Master" AutoEventWireup="true" CodeBehind="Registershop.aspx.cs" EnableEventValidation="false" Inherits="WebApplication1.Demo.Registershop" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="extra2" runat="server">
      <header>
        <link rel="stylesheet" type="text/css" href="makesale.css" />
        <link rel="stylesheet" type="text/css" href="alert.css" />
           <link rel="stylesheet" href="datatable.css" type="text/css" />
        <link rel="stylesheet" href="../Content/bootstrap.css" type="text/css" />
    </header>

 <div class="container">
    
	<div class="col-lg-7">
       <h1 style="font-family: 'Open Sans', sans-serif;margin-left:220px;">Register Shop</h1><br />
	<div class="row">
        
				<form>  
					<div class="col-sm-12">
						<div class="form-group">
							<label>Shop Name</label><br />
                            <asp:TextBox ID="sname" runat="server" CssClass="form-control" required="required" placeholder="Enter your shop Name"  Font-Size="Medium" Font-Bold="true"  ></asp:TextBox>                                             
                        </div>	
                        
                        <div class="row">
							<div class="col-sm-6 form-group">
								<label>Owner</label>
                                <asp:TextBox ID="sowner" runat="server" CssClass="form-control" required="required" placeholder="Owner Name" Font-Size="Medium" Font-Bold="true"  ></asp:TextBox>
                             </div>
							<div class="col-sm-6 form-group">
								<label>Phone</label>
								<asp:TextBox ID="sphone" runat="server" CssClass="form-control" required="required" placeholder="Phone" Font-Size="Medium" Font-Bold="true" TextMode="Number"  ></asp:TextBox>
							    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="sphone" ErrorMessage="Please Enter only numbers"></asp:CustomValidator> <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="sowner" ErrorMessage="Only Characters allowed"></asp:CustomValidator>
                               
							</div>
						</div>					
						<div class="form-group">
							<label>Address</label>
							<asp:TextBox ID="sadd" runat="server" CssClass="form-control" required="required" placeholder="Shop Address" Font-Size="Medium" Font-Bold="true"  ></asp:TextBox>
  						</div>	
                          
                        <div class="form-group">
                            <asp:Button ID="btnsale" CssClass="btn btn-lg btn-success btn-block" runat="server" Text="Register Shop" OnClick="btnsale_Click" />
					</div>	
					        
                        <br />               
                      <div class="form-group"> 
                          <strong><asp:Label ID="noticelabel" cssClass="alert alert-success" runat="server" Visible="False"></asp:Label></strong><br /><br />
					</div>
                        
                            
					</div>
				</form> 
				</div>
	</div>
	</div>
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label><asp:Label ID="labelpid"  runat="server" visible="false" Text="Label"></asp:Label>
    <br />

    <div class="datatab">
        <h1>Shops Registered</h1>
    <asp:GridView ID="grid1" CssClass="table table-striped custab" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" >  
        
        <AlternatingRowStyle BackColor="White" />  
     <columns>  
         
         <asp:TemplateField HeaderText="Shop Name">  
             <ItemTemplate>  
                 <asp:Label ID="Shopname" runat="server" Text='<%#Bind("shopname") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Owner">  
             <ItemTemplate>  
                 <asp:Label ID="Shopowner" runat="server" Text='<%#Bind("shopowner") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Phone">  
             <ItemTemplate>  
                 <asp:Label ID="Phone" runat="server" Text='<%#Bind("phone") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField> 
          <asp:TemplateField HeaderText="Address">  
             <ItemTemplate>  
                 <asp:Label ID="Shopadd" runat="server" Text='<%#Bind("shopadd") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField> 
          
           
     </columns>   
 </asp:GridView>
        </div>  

</asp:Content>
