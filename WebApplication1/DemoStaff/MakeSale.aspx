<%@ Page Title="" Language="C#" MasterPageFile="~/DemoStaff/Staff.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="MakeSale.aspx.cs" Inherits="WebApplication1.DemoStaff.MakeSale" %>

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
       <h1 style="font-family: 'Open Sans', sans-serif;margin-left:220px;">  Make Sale</h1><br />
	<div class="row">
				<form>  
					<div class="col-sm-12">
						<div class="form-group">
							<label>Product ID</label><br />
                            <ajaxToolkit:ComboBox ID="pidbox" AutoCompleteMode="SuggestAppend"  runat="server" autopostback="True" OnSelectedIndexChanged="pidbox_SelectedIndexChanged" DropDownStyle="DropDownList"></ajaxToolkit:ComboBox>                       
                        </div>	
                        
                        <div class="row">
							<div class="col-sm-6 form-group">
								<label>Product Name</label>
                                <asp:TextBox ID="pname" runat="server" CssClass="form-control" required="required" placeholder="Product Name" ReadOnly="True" Font-Size="Medium" Font-Bold="true"  ></asp:TextBox>
                             </div>
							<div class="col-sm-6 form-group">
								<label>Price</label>
								<asp:TextBox ID="pprice" runat="server" CssClass="form-control" required="required" placeholder="Price" ReadOnly="True" Font-Size="Medium" Font-Bold="true"  ></asp:TextBox>
							</div>
						</div>					
						<div class="form-group">
							<label>Brand</label>
							<asp:TextBox ID="pbrand" runat="server" CssClass="form-control" required="required" placeholder="Product Brand" ReadOnly="True" Font-Size="Medium" Font-Bold="true"  ></asp:TextBox>
  						</div>	
						
												
					<div class="form-group">
						<label>Expiry Date</label>
						<asp:TextBox ID="expdate" runat="server" CssClass="form-control" required="required" placeholder="Expiray Date" ReadOnly="True" Font-Size="Medium" Font-Bold="true" ></asp:TextBox>
					</div>	
                        
                        <div class="form-group">
						<label>Availability</label>
						<asp:TextBox ID="qtyavail" runat="server" CssClass="form-control" required="required" placeholder="Qty Available" ReadOnly="True" Font-Size="Medium" Font-Bold="true" ></asp:TextBox>
					</div>		
						
                        <div class="form-group">
                            <asp:Button ID="btnsale" CssClass="btn btn-lg btn-success btn-block" runat="server" Text="Make Sale" OnClick="btnsale_Click" />
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
