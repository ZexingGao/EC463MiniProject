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
            width: 999px;
            height: 544px;
        }
    .auto-style4 {
        margin-left: 40px;
    }
    </style>
</head>
<body class="newStyle1">

    <meta http-equiv="REFRESH" content="10">
    <form id="form1" runat="server">


         <div style="background-color: powderblue; border-style: solid; border-width: thin; margin: auto; padding: 30px; " class="auto-style3">
             <p class="auto-style4">
             <strong>Welcome to Environmental Monitor<br class="auto-style1" />
             </p>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [dataplot]"></asp:SqlDataSource>
             

            
       <!--><asp:ScriptManager ID="ScriptManager2" runat="server">
  </asp:ScriptManager>
  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
  <ContentTemplate>&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Exit" />
<asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Height="361px" Width="642px">

                 <Series>
                     <asp:Series ChartType="Line" Name="Humidity" XValueMember="time" YValueMembers="humidity" Legend="Humidity" IsValueShownAsLabel="True">
                     </asp:Series>
                     <asp:Series ChartArea="ChartArea1" ChartType="Line" Legend="temperature" Name="temperature" XValueMember="time" YValueMembers="temperature" IsValueShownAsLabel="True" YAxisType="Secondary">
                     </asp:Series>
                 </Series>
                 <ChartAreas>
                     <asp:ChartArea Name="ChartArea1">
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






 <!--> 
  <asp:Timer ID="Timer1" runat="server" Interval="5000" OnTick="Timer1_Tick">
  </asp:Timer>
  </ContentTemplate>
  <Triggers>
  <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick"></asp:AsyncPostBackTrigger>
  </Triggers>
  </asp:UpdatePanel>
          
             &nbsp;</strong></div>




   
    </form>
   
</body>
</html>