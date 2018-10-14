<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
 
    
    <header>
        
        <script type="text/javascript" src="Scripts/bootstrap.js"></script>
         <script type="text/javascript" src="Scripts/jqueryboots.js"></script>
        <link rel="stylesheet" type="text/css" href="Content/w3school.css" />
    </header>
    
<div class=".jumbotron">

  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="Images/ing2.png" alt="Los Angeles" style="width:100%;height:600px;">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>

      <div class="item">
        <img src="Images/test.jpg" alt="Chicago" style="width:100%;height:600px">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>
    
      <div class="item">
        <img src="Images/img4.gif" alt="New York" style="width:100%;height:600px;">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    
  </div>
</div>  
      
</asp:Content>




<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    </asp:Content>

<asp:Content runat="server" ID="Content1" ContentPlaceHolderID="extra">
  
      <div class="container">    
    <br />
          <section class="feature-box">
        
    <!--Section heading-->
    <h1 class="py-5 font-bold text-success" style="font-family:Dosis,Arial,Tahoma,Verdana,serif;text-align:center;">Smart and efficient store, sale and inventory management Web Application
Perfectly designed for your local store.</h1>
    <!--Section description-->
    <p class="px-5 mb-5 pb-3 lead text-success"></p>

    <!--Grid row-->
    <div class="row features-small">

    <!--Grid column-->
    <div class="col-md-4 mb-r">
        <div class="col-1 col-md-2 float-left">
        <i></i>
        </div>
        <div class="col-10 col-md-9 col-lg-10 float-right">
        <h4 style="font-size:28px;" >Full Inventory Management</h4>
        <p style="font-size:18px">Easily add services or product lists. With Sleek Bill for India organizing and keeping track of your product stocks is as easy as A, B, C!</p>
        <a class="btn btn-primary btn-md ml-0" href="Pricing.aspx">View Plans</a>
        </div>
    </div>  
    <!--Grid column-->

    <!--Grid column-->
    <div class="col-md-4 mb-r">
        <div class="col-1 col-md-2 float-left">
        <i class="fa fa-cogs pink-text"></i>
        </div>
        <div class="col-10 col-md-9 col-lg-10 float-right">
        <h4 style="font-size:28px;">Quick and detailed reports</h4>
        <p style="font-size:17px">Where units of measurement are concerned, our inventory software comes with limitless options, use whatever measure you need.</p>
        <br /><a class="btn btn-success btn-md ml-0 " href="Account/Login.aspx">View Demo</a>
        </div>
    </div>
    <!--Grid column-->

    <!--Grid column-->
    <div class="col-md-4 mb-r">
        <div class="col-1 col-md-2 float-left">
        <i class="fa fa-dashboard purple-text"></i>
        </div>
        <div class="col-10 col-md-9 col-lg-10 float-right">
        <h4 style="font-size:28px;">Support</h4>
        <p style="font-size:17px">Confused about How and Where to start? Don't be! We have got you covered, Contact us for more information and free advice on shop improvements.</p>
        <br />  <a class="btn btn-info btn-md ml-0" href="Contact.aspx">Contact</a>
        </div>
    </div>
    <!--Grid column-->

    </div>
    <!--Grid row-->
</section>  

<br /><br />
<section>

    <!--Section heading-->
    <h1 class="py-5 font-bold text-center">Why Choose us?</h1>
    <!--Section description-->
    <p class="px-5 mb-5 pb-3 lead grey-text text-center">Why choose Shop Inventory over any other stock management application? Here is the answer..</p>

    <!--Grid row-->
    <div class="row pt-2">

    <!--Grid column-->
    <div class="col-lg-5 mb-r center-on-small-only">
        <img src="Images/imgside.jpg" alt="" class="img-fluid z-depth-0">
    </div>
    <!--Grid column-->

    <!--Grid column-->
    <div class="col-lg-7">

        <!--Grid row-->
        <div class="row pb-3">
        <div class="col-2 col-md-1">
            <i class="fa fa-mail-forward fa-lg indigo-text"></i>
        </div>
        <div class="col-10">
            <h5 class="font-bold text-left mb-3 text-success" style="font-size:22px;">Safety</h5>
            <p class="grey-text text-left text-info" style="font-size:18px;">Safety is the highest priority that our organization is focused on, All our application adn the database are secure with SSL and extra Authentication features.</p>
        </div>
        </div>
        <!--Grid row-->

        <!--Grid row-->
        <div class="row pb-3">
        <div class="col-2 col-md-1">
            <i class="fa fa-mail-forward fa-lg indigo-text"></i>
        </div>
        <div class="col-10">
            <h5 class="font-bold text-left mb-3 text-success" style="font-size:22px;">Technology</h5>
            <p class="grey-text text-left text-info" style="font-size:18px;">Technology behind an organization is what defines the safety and the security of that organization. We use the advance techonologies like, ASP .Net, PHP, Bootstrap etc, to build your application. </p>
        </div>
        </div>
        <!--Grid row-->

        <!--Grid row-->
        <div class="row pb-3">
        <div class="col-2 col-md-1">
            <i class="fa fa-mail-forward fa-lg indigo-text"></i>
        </div>
        <div class="col-10">
            <h5 class="font-bold text-left mb-3 text-success" style="font-size:22px;">Finance</h5>
            <p class="grey-text text-left text-info" style="font-size:18px;">We have a wider range of plans and services offered, you can choose the one that fits best for you shop needs.</p>
        </div>
        </div>
        <!--Grid row-->

    </div>
    <!--Grid column-->

    </div>
    <!--Grid row-->

</section>
</div>
    
     <h1 style="font-family: Sans MS;font-size:44px;text-align:center;"> Meet our Team</h1>

    <div class="container-fluid">
        <div class="container">
    <div class="row">
  <div class="column">
    <div class="card">
      <img src="Images/team11.jpg" alt="Roaib" style="width:100%">
      <div class="container">
        <h2>Roaib Hyder</h2>
        <p class="title">CEO &amp; Founder</p>
        <p>One of the key people behind Web Technologies</p>
        <p>roaib@shopinventory.in</p>

      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="Images/team2.jpg" alt="Mike" style="width:100%">
      <div class="container">
        <h2>Faizan Mohammed</h2>
        <p class="title">Financial Advisor</p>
        <p>Master in Finance, UK</p>
        <p>faizan@shopinventory.in</p>
        
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="Images/team3.jpg" alt="John" style="width:100%">
      <div class="container">
        <h2>Abdul Rahman</h2>
        <p class="title">Marketing Guru</p>
        <p>Social and Media Marketing, Hoston USA</p>
        <p>abdul@shopinventory</p>
       
      </div>
    </div>
  </div>
</div>
            </div>
</div>     <br /><br />   
</asp:Content>
