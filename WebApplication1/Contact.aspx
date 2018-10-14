<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" EnableEventValidation="false" Inherits="WebApplication1.Contact" %>



<asp:Content runat="server" ID="Content1" ContentPlaceHolderID="extra">
  <header>
      <script type="text/javascript" src="Scripts/bootstrap.js"></script>
         <script type="text/javascript" src="Scripts/jqueryboots.js"></script>
      <link rel="stylesheet" type="text/css" href="Content/contact.css" />
  </header>

    <div class="jumbotron jumbotron-sm">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h1 class="h1">
                    Contact us <small>Feel free to contact us</small></h1>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
         
     <div class="col-md-8">
            <div class="well well-sm">
                <form>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Name</label>
								 <asp:TextBox ID="txtname" runat="server" CssClass="form-control" required="required" placeholder="Enter name" ></asp:TextBox>
                          </div>
                       
                         <div class="form-group">
                            <label for="email">
                                Email Address</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                </span>
								<asp:TextBox ID="txtemail" runat="server" CssClass="form-control" required="required" placeholder="Enter Email" ></asp:TextBox>
                            </div>
                        </div>

                         <div class="form-group">
                            <label for="phone">
                                Phone</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="fa fa-phone"></span>
                                </span>
								<asp:TextBox ID="txtphone" runat="server" CssClass="form-control" required="required" placeholder="Enter Phone Number" ></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="plan">
                                Plan</label>
								<asp:DropDownList ID="plan" runat="server" CssClass="form-control" requied="required" DataTextField="Choose Plan" >    
                                   <asp:ListItem>Basic Plan</asp:ListItem>
                                   <asp:ListItem>Silver Plan</asp:ListItem>
                                   <asp:ListItem>Gold Plan</asp:ListItem>
                                   <asp:ListItem>Professional Plan</asp:ListItem>
                                  </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Message</label>
                            <asp:TextBox ID="txtmsg" runat="server" CssClass="form-control" required="required" placeholder="Your Message" Height="200px" ></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <asp:Button ID="Button1" runat="server" Text="Send Message" OnClick="Button1_Click" CssClass="btn btn-primary pull-right" />
                   </div>
                    
                </div>
                </form>
            </div>
        </div>

        <div class="col-md-4">
            <form>
            <legend><span class="glyphicon glyphicon-globe"></span> Our office</legend>
            <address>
                <strong>Shopventory Pvt Ltd</strong><br>
                795 2main, 3rd Stage,  JP Nagar<br>
                Bangalore, KA 560041<br>
                <abbr title="Phone">
                    P:</abbr>
                +91-819-759-8286
               
            </address>
            <address>
                <strong>E-mail</strong><br>
                <a href="mailto:#">contact@shopventory.in</a>
            </address>
            </form>
        </div>
       
    </div>
</div>    
      <asp:Label runat="server" ID="noticelabel" CssClass="notice" ></asp:Label>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
</asp:Content>











