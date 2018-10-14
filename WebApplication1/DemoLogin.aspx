<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DemoLogin.aspx.cs" EnableEventValidation="false" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
     <meta charset="utf-8" />
    <title><%: Page.Title %> - My ASP.NET Application</title>
  
    <webopt:BundleReference runat="server" Path="~/Content/css" /> 
    <webopt:BundleReference runat="server" Path="~/Content/bootstrap" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="Content/fontawesome.css" /> 
     <link rel="stylesheet" type="text/css" href="content/head.css" /> 
    <link rel="stylesheet" type="text/css" href="content/demofooter.css" /> 
    
    <meta name="viewport" content="width=device-width" />
   
     <script type="text/javascript" src="bootstrap.js"></script>
    <script type="text/javascript"" src="bootstrap.min.js"> </script>
</head>
<body>
     <form id="form1" runat="server">
    <asp:ScriptManager runat="server">
        <Scripts>
            <%--To learn more about bundling scripts in ScriptManager see http://go.microsoft.com/fwlink/?LinkID=272931&clcid=0x409 --%>
            <%--Framework Scripts--%>
            
            <asp:ScriptReference Name="MsAjaxBundle" />
            <asp:ScriptReference Name="jquery" />
            <asp:ScriptReference Name="jquery.ui.combined" />
            <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
            <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
            <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
            <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
            <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
            <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
            <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
            <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
            <asp:ScriptReference Name="WebFormsBundle" />
            
            <%--Site Scripts--%>

        </Scripts>
    </asp:ScriptManager>
      
         <h1 class="text-center">Login to your Store</h1>
<p class="text-center lead">
  Explore your shop
</p>

<nav class="navbar navbar-inverse navbar-static-top example-8">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar8">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand text-hide" href="#">Brand Text dd
        </a>
      </div>
      <div id="navbar8" class="navbar-collapse collapse">
        <ul class="nav navbar-nav navbar-right">
          <li class="active"><a href="#">Login</a></li>
         
        </ul>
      </div>
      <!--/.nav-collapse -->
    </div>
    <!--/.container-fluid -->
  </nav>

        <div class="container">    
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title" style="font-size:28px;">Sign In</div>
                       
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                    
                                    
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                   <asp:TextBox ID="txtid" runat="server" CssClass="form-control" placeholder="User Name" required="required"></asp:TextBox>                                        
                                    </div>
                                
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <asp:TextBox ID="txtpass" runat="server" CssClass="form-control" placeholder="Password"  required="required" TextMode="Password"></asp:TextBox>
                                    </div>

                  
                        <div style="margin-bottom: 25px" class="input-group">
                             <span class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
                        <asp:DropDownList ID="txtrole1" runat="server" CssClass="form-control" requied="required" DataTextField="role">    
                                   <asp:ListItem>Owner</asp:ListItem>
                                   <asp:ListItem>Staff</asp:ListItem>
                                  </asp:DropDownList>
                            </div>
                      

                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->

                                    <div class="col-sm-12 controls">
                                     <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btn btn-info btn-lg" OnClick="btnlogin_Click" />
                                     <asp:Label ID="notice" runat="server" Text=""></asp:Label>
                                    </div>
                                </div>  
                    
 </div>                     
 </div>  
 </div>
 </div>
         <br />
         
        
         <div class="footer-bottom">

	<div class="container">

		<div class="row">

			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">

				<div class="copyright">

					© 2018, DisputeBills, All rights reserved

				</div>

			</div>

			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">

				<div class="design">

					 <a href="#">Powered By </a> |  <a target="_blank" href="Default.aspx">Shopventory</a>

				</div>

			</div>

		</div>

	</div>

</div>
</form>                       
                                
                           
                      
                    

               
               
 </body>
 </html>
