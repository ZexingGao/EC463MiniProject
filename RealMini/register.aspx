<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="RealMini.register" %>

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
        font-size: xx-large;
    }
        .auto-style3 {
            font-size: 30pt;
            width: 1308px;
            height: 702px;
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
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO userinfo(userid, password) VALUES (@newUser,@newPass)" SelectCommand="SELECT * FROM [userinfo]">
                 <InsertParameters>
                     <asp:ControlParameter ControlID="username" Name="newUser" PropertyName="Text" />
                     <asp:ControlParameter ControlID="password" Name="newPass" PropertyName="Text" />
                 </InsertParameters>
             </asp:SqlDataSource>
             <span class="newStyle2">
        <br />
    
             <span class="auto-style4">Username:&nbsp;&nbsp;&nbsp;</span></span><asp:TextBox ID="username" runat="server" CssClass="auto-style4" OnTextChanged="username_TextChanged"></asp:TextBox>
             <span class="newStyle2"><span class="auto-style4">
        <br />
        <br />
        Password :&nbsp;
        </span></span>
        <asp:TextBox ID="password" TextMode="Password" runat="server" CssClass="auto-style4"></asp:TextBox>
             <font size="3">
             <span class="newStyle2">
        <br />
             </span>
        <asp:Label ID="error" runat="server"></asp:Label>
             </font>
             <span class="newStyle2">
        <br />
             </span>
             <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm" />
             <span class="newStyle2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" />
             <span class="newStyle2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <br />
             </span>&nbsp;<br />
        <br />
        <span id="Msg"></span>

            
        </div>




   
    </form>
   
</body>
</html>