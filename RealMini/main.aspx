<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="RealMini.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="refresh"content="1"; url= "main.aspx">
<style type="text/css">
        .auto-style1 {
            font-size: 30pt;
        }
        .newStyle1 {
            font-family: "times New Roman", Times, serif;
        }
        .auto-style3 {
            font-size: 30pt;
            width: 1411px;
            height: 719px;
        margin-left: 275px;
    }
    .auto-style5 {
        font-size: large;
    }
    cc {
        font-family: "comic Sans MS";
    }
    .newStyle2 {
        font-family: "comic Sans MS";
    }
    .auto-style6 {
        font-size: x-large;
    }
    .auto-style7 {
        font-family: "comic Sans MS";
        font-size: x-large;
    }
    .newStyle3 {
        font-family: "comic Sans MS";
    }
    .newStyle4 {
        font-family: "comic Sans MS";
    }
    .newStyle5 {
        font-family: "comic Sans MS";
    }
    .newStyle6 {
        font-family: "comic Sans MS";
        font-weight: 700;
        font-size: x-large;
    }
    </style>
</head>
<body class="newStyle1">

    <meta http-equiv="REFRESH" content="10">
    <form id="form1" runat="server">


             <strong>
             <asp:Label ID="avg_counter" runat="server" Text="1" Visible="False"></asp:Label>




</strong>


         <div style="background-color: powderblue; border-style: solid; border-width: thin; padding: 30px; margin-right: auto; margin-top: auto; margin-bottom: auto;" class="auto-style3">
             <p class="newStyle2">
             <strong>Welcome to Environmental Monitor<br class="auto-style1" />
             </p>
             <span class="auto-style7">User name: </span><span class="auto-style6">
             <asp:Label ID="name" runat="server" Text="Label"></asp:Label>
             </span>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [dataplot]"></asp:SqlDataSource>
             

            
             <span class="newStyle2">
             <br class="auto-style6" />
             </span>




</strong>
             <asp:Label ID="Label1" runat="server" Text="Average temperature is: " style="font-size: x-large; newstyle4: ; font-weight: 700;" CssClass="newStyle5"></asp:Label>
             <strong><span class="newStyle4">&nbsp;</span><span class="auto-style6"><asp:Label ID="avg_temp" runat="server" Text="Label"></asp:Label>
             </span><span class="newStyle4">&nbsp;<br class="auto-style6" />
             </span>




</strong>
             <asp:Label ID="Label2" runat="server" Text="Average humidity is: " CssClass="newStyle6"></asp:Label>
             <strong>
             <asp:Label ID="avg_humi" runat="server" Text="Label" CssClass="auto-style6"></asp:Label>
             <span class="auto-style5">
             <br />
             </span><asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Exit" CssClass="auto-style5" />
             <br />
<asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Height="361px" Width="1409px" CssClass="auto-style6" style="margin-bottom: 0px">

                 <Series>
                     <asp:Series ChartType="Line" Name="Humidity" XValueMember="time" YValueMembers="humidity" Legend="Humidity" IsValueShownAsLabel="True" Font="Comic Sans MS, 7.8pt">
                         <SmartLabelStyle CalloutLineAnchorCapStyle="None" />
                     </asp:Series>
                     <asp:Series ChartArea="ChartArea1" ChartType="Line" Legend="temperature" Name="temperature" XValueMember="time" YValueMembers="temperature" IsValueShownAsLabel="True" YAxisType="Secondary" Font="Comic Sans MS, 7.8pt">
                     </asp:Series>
                 </Series>
                 <ChartAreas>
                     <asp:ChartArea Name="ChartArea1">
                         <AxisY Title="Temperature">
                         </AxisY>
                         <AxisX Title="Time">
                         </AxisX>
                         <AxisY2 Title="Humidity">
                         </AxisY2>
                     </asp:ChartArea>
                 </ChartAreas>
                 <Legends>
                     <asp:Legend BackColor="White" Name="Humidity" Title="Humidity" TitleBackColor="Transparent">
                     </asp:Legend>
                     <asp:Legend BorderDashStyle="Dash" Name="temperature" Title="temperature">
                     </asp:Legend>
                 </Legends>
                 <Titles>
                     <asp:Title Name="Title1123">
                     </asp:Title>
                 </Titles>
             </asp:Chart>




             <br />




</strong></div>




   
    </form>
   
</body>
</html>