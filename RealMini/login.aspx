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
        .auto-style3 {
            font-size: 30pt;
            width: 1312px;
            height: 698px;
        }
    .newStyle2 {
        font-family: "comic Sans MS";
    }
    .auto-style4 {
        font-size: x-large;
    }
    </style>
</head>
<body class="newStyle1">


    <form id="form1" runat="server">


         <div style="background-color: powderblue; border-style: solid; border-width: thin; margin: auto; padding: 30px; " class="auto-style3">
             <strong><span class="newStyle2">Welcome to Environmental Monitor<br class="auto-style1" />
             </span>
        </strong>
             <span class="newStyle2">
        <br />
             </span>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [userinfo]"></asp:SqlDataSource>
             <span class="newStyle2">
        <br />
    
             <span class="auto-style4">User:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></span>
        <asp:TextBox ID="username" runat="server" CssClass="auto-style4"></asp:TextBox>
             <span class="newStyle2"><span class="auto-style4">
        <br />
        <br />
        Password :&nbsp;
        </span></span>
        <asp:TextBox ID="password" TextMode="Password" runat="server" CssClass="auto-style4"></asp:TextBox>
             <font size="3" class="auto-style4">
             <span class="newStyle2">
        <br />
             </span>
        <asp:Label ID="error" runat="server"></asp:Label>
             </font>
             <span class="newStyle2">
        <br />
             </span>
             <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
             <span class="newStyle2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             </span>
             <asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" />
        <br />
        &nbsp;<br />
        <br />
        <span id="Msg"></span>

            
        </div>




   
    </form>
   
</body>
</html>
