<%@ Page Title="" Language="C#" MasterPageFile="~/DemoStaff/Staff.Master" AutoEventWireup="true" CodeBehind="StaffDashboard.aspx.cs" Inherits="WebApplication1.DemoStaff.StaffDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="StaffHead" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="extra2" runat="server">
   <header>
       <link rel="stylesheet" type="text/css" href="../Content/dashboard.css" /> 
         <link rel="stylesheet" type="text/css" href="Demo/head.css" />
   </header>
    <br />
    <asp:Label ID="noticelabel" Visible="false" runat="server" Text="Label"></asp:Label>
    <div class="row">
     <div class="col-md-4">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h4 class="text-center">
                        Today's Sales</h4>
                </div>
                <div class="panel-body text-center">
                    <p class="lead">
                        <strong style="align-content:center"><asp:Label ID="todaysale1"  runat="server" Text="No Sales" Font-Size="18pt"></asp:Label></strong></p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h4 class="text-center">
                        No of Products Sold</h4>
                </div>
                <div class="panel-body text-center">
                    <p class="lead">
                       <strong style="align-content:center"><asp:Label ID="productssold"  runat="server" Text="Nothing Sold" Font-Size="18pt"></asp:Label></strong></p>
                </div>
            </div>
        </div>

        </div>

    <div class="row">
       
         <div class="col-md-2">
    <a href="MakeSale.aspx" class="btn btn-lg btn-info"><span class="glyphicon glyphicon-hand-up"></span> Make Sale</a>
        </div>

         <div class="col-md-2">
    <a href="AddProducts.aspx" class="btn btn-lg btn-default"><span class="glyphicon glyphicon-shopping-cart"></span> Products</a>
        </div>

        <div class="col-md-2">
   <a href="ViewSales.aspx" class="btn btn-lg btn-warning"><span class="glyphicon glyphicon-tag"></span> View Sales</a>
        </div>

        <div class="col-md-1">
    <a href="ViewStock.aspx" class="btn btn-lg btn-success"><span class="glyphicon glyphicon-file"></span> Stock</a>
        </div>
        <br />
        </div>
    <br />
</asp:Content>
