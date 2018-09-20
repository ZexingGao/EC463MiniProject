<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="RealMini.login" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style type="text/css">
        .auto-style1 {
            font-size: 30pt;
        }
        .newStyle1 {
            font-family: "times New Roman", Times, serif;
        }
        .auto-style2 {
            font-size: 12pt;
        }
        .auto-style3 {
            font-size: 30pt;
            width: 847px;
            height: 376px;
        }
    </style>
</head>
<body class="newStyle1">


    <form id="form1" runat="server">


         <div style="background-color: powderblue; border-style: solid; border-width: thin; margin: auto; padding: 30px; " class="auto-style3">
             <strong>Welcome to Environmental Monitor<br class="auto-style1" />
        </strong>
        <br />
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [userinfo]"></asp:SqlDataSource>
        <br />
    
             <font size="3">User:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </font>
        <asp:TextBox ID="username" runat="server" CssClass="auto-style2"></asp:TextBox>
             <font size="3">
        <br />
        <br />
        Password :&nbsp;
        </font>
        <asp:TextBox ID="password" TextMode="Password" runat="server" CssClass="auto-style2"></asp:TextBox>
             <font size="3">
        <asp:CheckBox ID="Remember" runat="server" Text="Remember me" />
        <br />
        <asp:Label ID="error" runat="server"></asp:Label>
             </font>
        <br />
             <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" />
        <br />
        &nbsp;<br />
        <br />
        <span id="Msg"></span>

            
        </div>




   
    </form>
   
</body>
</html>
