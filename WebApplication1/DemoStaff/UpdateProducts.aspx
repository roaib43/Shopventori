<%@ Page Title="" Language="C#" MasterPageFile="~/DemoStaff/Staff.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="UpdateProducts.aspx.cs" Inherits="WebApplication1.DemoStaff.UpdateProducts" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
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
       <h1 style="font-family: 'Open Sans', sans-serif;margin-left:180px;">  Update/Remove Products</h1><br />
	<div class="row">
				<form>  
					<div class="col-sm-12">
						<div class="form-group">
							<label>Product ID</label><br />
                            <ajaxToolkit:ComboBox ID="updatepid" DropDownStyle="DropDownList"  AutoCompleteMode="SuggestAppend" autopostback="True" runat="server" OnSelectedIndexChanged="updatepid_SelectedIndexChanged"></ajaxToolkit:ComboBox>
                        </div>	
                        
                        <div class="row">
							<div class="col-sm-6 form-group">
								<label>Product Name</label>
                                <asp:TextBox ID="pname" runat="server" CssClass="form-control" required="required" placeholder="Product Name" Font-Size="Medium" Font-Bold="true"  ></asp:TextBox>
                             </div>
							<div class="col-sm-6 form-group">
								<label>Price</label>
								<asp:TextBox ID="pprice" runat="server" CssClass="form-control" required="required" placeholder="Price"  Font-Size="Medium" Font-Bold="true"  ></asp:TextBox>
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
						<asp:TextBox ID="qtyavail" runat="server" CssClass="form-control" required="required" placeholder="Qty Available" Font-Size="Medium" Font-Bold="true" ></asp:TextBox>
					</div>		
						
                        <div class="form-group">
                            
					</div>	
					        
                        <div class="row">
							<div class="col-sm-6 form-group">
								<asp:Button ID="btnupdate" CssClass="btn btn-lg btn-success btn-block" runat="server" Text="Update Product" OnClick="btnupdate_Click"  />
                             </div>
							<div class="col-sm-6 form-group">
								<asp:Button ID="btndelete" CssClass="btn btn-lg btn-success btn-block" runat="server" Text="Delete Product" OnClick="btndelete_Click" />
							</div>
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

</asp:Content>
