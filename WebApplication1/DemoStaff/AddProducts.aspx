<%@ Page Title="" Language="C#" MasterPageFile="~/DemoStaff/Staff.Master" EnableEventValidation="false"  AutoEventWireup="true" CodeBehind="AddProducts.aspx.cs" Inherits="WebApplication1.DemoStaff.ManageProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="StaffHead" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="extra2" runat="server">
<header>
        <link rel="stylesheet" type="text/css" href="makesale.css" />
        <link rel="stylesheet" type="text/css" href="alert.css" />
     
    </header>

 <div class="container">
	<div class="col-lg-7">
       <h1 style="font-family: 'Open Sans', sans-serif;margin-left:220px;">Add Products</h1><br />
	<div class="row">
				<form>  
					<div class="col-sm-12">
						<div class="form-group">
							<label>Product ID</label><br />
                              <asp:TextBox ID="pid" runat="server" CssClass="form-control" required="required" placeholder="Product ID"  Font-Size="Medium" Font-Bold="true"  ></asp:TextBox>                   
                        </div>	
                        
                        <div class="row">
							<div class="col-sm-6 form-group">
								<label>Product Name</label>
                                <asp:TextBox ID="pname" runat="server" CssClass="form-control" required="required" placeholder="Product Name" Font-Size="Medium" Font-Bold="true"  ></asp:TextBox>
                             </div>
							<div class="col-sm-6 form-group">
								<label>Price</label>
								<asp:TextBox ID="pprice" runat="server" CssClass="form-control" required="required" placeholder="Price" Font-Size="Medium" Font-Bold="true"  ></asp:TextBox>
							</div>
						</div>					
						<div class="form-group">
							<label>Brand</label>
							<asp:TextBox ID="pbrand" runat="server" CssClass="form-control" required="required" placeholder="Product Brand"  Font-Size="Medium" Font-Bold="true"  ></asp:TextBox>
  						</div>	
						
												
					<div class="form-group">
						<label>Expiry Date</label>
						<asp:TextBox ID="expdate" runat="server" CssClass="form-control" required="required" placeholder="Expiray Date"  Font-Size="Medium" Font-Bold="true" ></asp:TextBox>
					</div>	
                        
                        <div class="form-group">
						<label>Availability</label>
						<asp:TextBox ID="qty" runat="server" CssClass="form-control" required="required" placeholder="Qty Available"  Font-Size="Medium" Font-Bold="true" ></asp:TextBox>
					</div>		
						
                        <div class="form-group">
                            <asp:Button ID="btnadd" CssClass="btn btn-lg btn-success btn-block" runat="server" Text="Add Products" OnClick="btnsale_Click" />
					</div>	
					        
                        <br />               
                      <div class="form-group"> 
                          <div>
        <asp:Label ID="notice" runat="server" Font-Size="Medium" cssClass="alert alert-info"  Visible="false"></asp:Label>
    </div>
					</div>
                        
                            
					</div>
				</form> 
				</div>
	</div>

	</div>
    <br />
     


</asp:Content>
