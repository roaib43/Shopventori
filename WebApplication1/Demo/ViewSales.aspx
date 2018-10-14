<%@ Page Title="" Language="C#" MasterPageFile="~/Demo/Site1.Master" AutoEventWireup="true" CodeBehind="ViewSales.aspx.cs" Inherits="WebApplication1.Demo.ViewSales" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="extra2" runat="server">
    <header>
       <link rel="stylesheet" type="text/css" href="../Content/bootstrap.css" />
   </header>
    <asp:Label ID="error" runat="server" Text="erroe" Visible="true"></asp:Label>
     <asp:Label ID="sum" runat="server" Text="sum" Visible="false"></asp:Label>
    <br />
    <div class="container">
   
</div>
   <div style="width:800px;">
     <div class="panel panel-primary">
      <div class="panel-heading">Sales and Products Sold</div>
      <div class="panel-body">
           <ajaxToolkit:BarChart ID="BarChart1" runat="server" ChartHeight="300" ChartWidth="400" ChartType="Column" ChartTitle="Sales and Products Sold" CategoriesAxis="Quarter1,Quarter2,Quarter3" ChartTitleColor="#0E426C" CategoryAxisLineColor="#D08AD9" ValueAxisLineColor="#D08AD9" BaseLineColor="#A156AB" BorderStyle="None">  
  
    <Series>  
        
        
    </Series>  
</ajaxToolkit:BarChart>

      </div>
    </div>
       </div>
</asp:Content>
