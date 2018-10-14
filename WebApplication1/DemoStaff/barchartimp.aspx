<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="barchartimp.aspx.cs" Inherits="WebApplication1.DemoStaff.barchartimp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <ajaxToolkit:BarChart ID="BarChart1" runat="server" ChartHeight="300" ChartWidth="600" ChartType="Column" ChartTitle="United States versus European Widget Production" CategoriesAxis="2007,2008,2009,2010,2011,2012" ChartTitleColor="#0E426C" CategoryAxisLineColor="#D08AD9" ValueAxisLineColor="#D08AD9" BaseLineColor="#A156AB">  
  
    <Series>  
        <ajaxToolkit:BarChartSeries Name="United States" BarColor="#6C1E83" Data="110, 189, 255, 95, 107, 140" />  
        <ajaxToolkit:BarChartSeries Name="Europe" BarColor="#D08AD9" Data="100, 77, 95, 68, 70, 79" />  
    </Series>  
</ajaxToolkit:BarChart>
    </div>
    </form>
</body>
</html>
