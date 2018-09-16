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
            font-size: 12pt;
        }
        .auto-style3 {
            font-size: 30pt;
            width: 847px;
            height: 544px;
        }
    </style>
</head>
<body class="newStyle1">


    <form id="form1" runat="server">


         <div style="background-color: powderblue; border-style: solid; border-width: thin; margin: auto; padding: 30px; " class="auto-style3">
             <strong>Welcome to Environmental Monitor<br class="auto-style1" />
        </strong>
        <br />
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO userinfo(userid, password) VALUES (@newUser,@newPass)" SelectCommand="SELECT * FROM [userinfo]">
                 <InsertParameters>
                     <asp:ControlParameter ControlID="username" Name="newUser" PropertyName="Text" />
                     <asp:ControlParameter ControlID="password" Name="newPass" PropertyName="Text" />
                 </InsertParameters>
             </asp:SqlDataSource>
        <br />
    
             <font size="3">Username:&nbsp;&nbsp;&nbsp;</font><asp:TextBox ID="username" runat="server" CssClass="auto-style2" OnTextChanged="username_TextChanged"></asp:TextBox>
             <font size="3">
        <br />
        <br />
        Password :&nbsp;
        </font>
        <asp:TextBox ID="password" TextMode="Password" runat="server" CssClass="auto-style2"></asp:TextBox>
             <font size="3">
        <br />
        <asp:Label ID="error" runat="server"></asp:Label>
             </font>
        <br />
             <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm" />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <br />
        &nbsp;<br />
        <br />
        <span id="Msg"></span>

            
        </div>




   
    </form>
   
</body>
</html>