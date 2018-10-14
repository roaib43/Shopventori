<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" EnableEventValidation="false" Inherits="WebApplication1.Signup" %>

<asp:Content ID="Content4" ContentPlaceHolderID="extra" runat="server">
<header>
    <link rel="stylesheet" type="text/css" href="Content/signup.css" />
</header>
    <div class="container">
    <h1 class="well">Sign Up</h1>
	<div class="col-lg-12 well">
	<div class="row">
				<form>
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>First Name</label>
                                <asp:TextBox ID="txtfname" runat="server" CssClass="form-control" required="required" placeholder="Enter First Name" ></asp:TextBox>
                             </div>
							<div class="col-sm-6 form-group">
								<label>Last Name</label>
								<asp:TextBox ID="txtlname" runat="server" CssClass="form-control" required="required" placeholder="Enter Last Name" ></asp:TextBox>
							</div>
						</div>					
						<div class="form-group">
							<label>Address</label>
							<asp:TextBox ID="txtaddress" runat="server" CssClass="form-control" required="required" placeholder="Enter Address" ></asp:TextBox>
  						</div>	
						<div class="row">
							<div class="col-sm-4 form-group">
								<label>City</label>
								<asp:TextBox ID="txtcity" runat="server" CssClass="form-control" required="required" placeholder="Enter City" ></asp:TextBox>
							</div>	
							<div class="col-sm-4 form-group">
								<label>State</label>
								<asp:TextBox ID="txtstate" runat="server" CssClass="form-control" required="required" placeholder="Enter State" ></asp:TextBox>                       
							</div>	
							<div class="col-sm-4 form-group">
								<label>Zip</label>
								<asp:TextBox ID="txtzip" runat="server" CssClass="form-control" required="required" placeholder="Enter Zip Code" ></asp:TextBox>    
							</div>		
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Title</label>
								<asp:TextBox ID="txtdesignation" runat="server" CssClass="form-control" required="required" placeholder="Enter your Designation" ></asp:TextBox>
							</div>		
							<div class="col-sm-6 form-group">
								<label>Company</label>
							  <asp:TextBox ID="txtcompany" runat="server" CssClass="form-control" required="required" placeholder="Enter Company Name" ></asp:TextBox>
							</div>	
						</div>						
					<div class="form-group">
						<label>Phone Number</label>
						<asp:TextBox ID="txtphone" runat="server" CssClass="form-control" required="required" placeholder="Enter Phone Number" ></asp:TextBox>
					</div>		
					<div class="form-group">
						<label>Email Address</label>
						<asp:TextBox ID="txtemail" runat="server" CssClass="form-control" required="required" placeholder="Enter Email Address" ></asp:TextBox>
					</div>	
					<div class="form-group">
						<label>Choose your Plan</label>
						<asp:DropDownList ID="plan" runat="server" CssClass="form-control" requied="required" DataTextField="Choose Plan" >
                          <asp:ListItem>Basic Plan</asp:ListItem>
                          <asp:ListItem>Silver Plan</asp:ListItem>
                          <asp:ListItem>Gold Plan</asp:ListItem>
                          <asp:ListItem>Professional Plan</asp:ListItem>
                        </asp:DropDownList>
					</div>
                           <asp:Button runat="server" ID="signupbutton" CssClass="btn btn-primary btn-round-lg btn-lg" Text="Submit" OnClick="signupbutton_Click" />				
					</div>
				</form> 
				</div>
	</div>
	</div>

    <asp:Label ID="noticelabel" runat="server" ></asp:Label>
</asp:Content>



<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>