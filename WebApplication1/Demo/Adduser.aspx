<%@ Page Title="" Language="C#" MasterPageFile="~/Demo/Site1.Master" AutoEventWireup="true"  EnableEventValidation="false" CodeBehind="Adduser.aspx.cs" Inherits="WebApplication1.Demo.Adduser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="extra2" runat="server">
    <div class="container">
    
	<div class="col-lg-7">
       <h1 style="font-family: 'Open Sans', sans-serif;margin-left:220px;">Add Users</h1><br />
	<div class="row">
        
				<form>  
					<div class="col-sm-12">
						<div class="form-group">
							<label>User Name</label><br />
                            <asp:TextBox ID="uname" runat="server" CssClass="form-control" required="required" placeholder="Enter your shop Name"  Font-Size="Medium" Font-Bold="true"  ></asp:TextBox>                                             
                        </div>	
                        
                        <div class="row">
							<div class="col-sm-6 form-group">
								<label>Password</label>
                                <asp:TextBox ID="pass" runat="server" CssClass="form-control" required="required" placeholder="Owner Name" Font-Size="Medium" Font-Bold="true" TextMode="Password"  ></asp:TextBox>
                             </div>
							<div class="col-sm-6 form-group">
								<label>Role</label>
                                <asp:DropDownList ID="role" CssClass="form-control" runat="server">
                                    <asp:ListItem>owner</asp:ListItem>
                                    <asp:ListItem>staff</asp:ListItem>
                                </asp:DropDownList>                   
							</div>
						</div>					
						
                          
                        <div class="form-group">
                            <asp:Button ID="btnsale" CssClass="btn btn-lg btn-success btn-block" runat="server" Text="Add User" OnClick="btnsale_Click" />
					</div>	
					        
                        <br />               
                      <div class="form-group"> 
                          <strong><asp:Label ID="noticelabel" cssClass="alert alert-success" runat="server" Visible="False"></asp:Label></strong><br /><br />
					</div>
                        <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
                        
                            
					</div>
				</form> 
				</div>
	</div>
	</div>
</asp:Content>
