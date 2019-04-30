<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="inventory.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style10 {
            width: 49%;
            height: 135px;
        }
        .auto-style11 {
            font-size: large;
            width: 1116px;
            text-align: right;
        }
        .auto-style12 {
            width: 1116px;
            text-align: right;
        }
        .auto-style13 {
            width: 491px;
            text-align: right;
        }
        .auto-style14 {
            margin-left: 0px;
        }
        .auto-style15 {
            width: 491px;
            text-align: left;
        }
        .auto-style16 {
            width: 100%;
        }
        .auto-style17 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>INVENTORY<br />
            </strong>
        </div>
        <table align="center" class="auto-style10">
            <tr>
                <td class="auto-style11"><strong>DISH NAME:</strong></td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtName" runat="server" CssClass="auto-style14" Width="172px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>DISH PRICE:</strong></td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtPrice" runat="server" Width="174px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style15">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="129px" />
                </td>
            </tr>
        </table>
        <table class="auto-style16">
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Comic Sans MS" ForeColor="#00CC00" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <div class="auto-style17">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MenuID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="MenuID" HeaderText="MenuID" InsertVisible="False" ReadOnly="True" SortExpression="MenuID" />
                    <asp:BoundField DataField="DishName" HeaderText="DishName" SortExpression="DishName" />
                    <asp:BoundField DataField="DishCost" HeaderText="DishCost" SortExpression="DishCost" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RestaurantDetailsConnectionString %>" SelectCommand="SELECT * FROM [tblRestaurantMenu]"></asp:SqlDataSource>
    </form>
</body>
</html>
