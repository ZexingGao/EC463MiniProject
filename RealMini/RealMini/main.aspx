<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="RealMini.main" %>

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
            width: 999px;
            height: 544px;
        }
    </style>
</head>
<body class="newStyle1">


    <form id="form1" runat="server">


         <div style="background-color: powderblue; border-style: solid; border-width: thin; margin: auto; padding: 30px; " class="auto-style3">
             <strong>Welcome to Environmental Monitor<br class="auto-style1" />
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [dataplot]"></asp:SqlDataSource>
             <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text=" Start to Simulate" />
             <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Exit" />
        </strong>

            
        </div>




   
    </form>
   
</body>
</html>