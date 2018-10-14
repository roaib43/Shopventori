<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getimgfrmdatabase.aspx.cs" Inherits="WebApplication1.getimgfrmdatabase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 103px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Test Success</h1>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" RepeatDirection="Horizontal">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("pass") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("pics") %>' height="400px" Width="200px" />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:Button ID="Button1" runat="server" Height="27px" Text="Button" Width="218px" CommandArgument='<%# Eval("id") %>' />' />
<br />
            </ItemTemplate>


        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:aspnet-WebApplication1-20171223232403ConnectionString %>" SelectCommand="SELECT * FROM [test]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
