<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content runat="server" ID="Content1" ContentPlaceHolderID="extra">
    <header>
        <link rel="stylesheet" type="text/css" href="Content/mycss.css" />
    </header>
  

    <br /><br />
    <h1>About</h1>   
       <div class="divcontainer">
          <h2 class="owner">Created by owners for owners</h2>
        <img src="Images/aboutimg1.jpg" style="width:650px;" alt="" class="rounded float-left">
        <h4 class="history">     Our History</h4>
           <p class="pbody text-justify"><i>Shopventory started as a scrappy solution for a small retail shop in San Diego. Built by a software engineer husband for his retail entrepreneur wife, Shopventory is quite literally built with love.</i> </p>
           <p class="pbody"><i>We know the challenges faced by small business owners because we've been there! We're all too familiar with the hassle and time drain of managing inventory.</i></p>
           <p class="pbody"><i>While using the early version of Shopventory, we gained a greater understanding of what business owners need from their inventory management software. We didn’t want to stop at just one shop. That’s why we are sharing our tools with other businesses.</i></p>
           <p class="pbody" style="text-decoration-style:wavy;text-align:center;"><i>Shopventory's customer-first approach to design sets us apart. User-friendliness is the cornerstone of our design philosophy and our world-class customer support makes Shopventory simple as well as powerful.</i></p>
    </div>
   
    <div class="divcontainer">
        <h2 class="history" style="text-align:center;">Our Clients</h2>
        <hr />
        <article class="clients">
	<span></span><img src="Images/brand1.jpg" style="width: 200px;height: 140px;" alt="logo" />
</article>

<article class="clients">
	<span></span><img src="Images/brand2.jpg" style="width: 200px;height: 140px;" alt="logo" />
</article>

<article class="clients">
	<span></span><img src="Images/brand3.jpg" style="width: 200px;height: 140px;" alt="logo" />
</article>

        <article class="clients">
	<span></span><img src="Images/brand4.jpg" style="width: 200px;height: 140px;" alt="logo" />
</article>

        <article class="clients">
	<span></span><img src="Images/brand5.png" style="width: 200px;height: 140px;" alt="logo" />
</article>

      
    </div>

    </asp:Content>



<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
</asp:Content>





