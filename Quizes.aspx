<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quizes.aspx.cs" Inherits="Quiz_web.Quizes" %>
<%@ Register Src="~/Controls/Includes.ascx" TagPrefix="uc1" TagName="Includes" %>
<%@ Register Src="~/Controls/Navigation.ascx" TagPrefix="uc1" TagName="Navigation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <uc1:Includes runat="server" id="Includes" />
    <title>Quizes</title>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:Navigation runat="server" id="Navigation" />       

        <h1> Pick the quiz that you would want to solve. </h1>
        <h2> Can you pass the whole quiz without one mistake? </h2>
        <h3> Go and try it. </h3>

        <div class="avengers1">
            <a href="Avengers1_quiz1.aspx">
                <asp:Image runat="server" ImageUrl="~/images/marvel/avengers1.jpg" CssClass="avengers1 w3-round-xlarge" />
                <p class="avengers1 w3-round-xlarge"> The Avengers quiz. </p>
            </a>
        </div>

        <div class="avengers2">
            <a href="Home.aspx">
                <asp:Image runat="server" ImageUrl="~/images/marvel/avengers2.jpg" CssClass="avengers2 w3-round-xlarge" />
                <p class="avengers2 w3-round-xlarge"> The Avengers age of Ultron quiz. </p>
            </a>
        </div>

        <div class="avengers3">
            <a href="Home.aspx">
                <asp:Image runat="server" ImageUrl="~/images/marvel/avengers3.jpg" CssClass="avengers3 w3-round-xlarge" />
                <p class="avengers3 w3-round-xlarge"> The Avengers Infinity war quiz. </p>
            </a>
        </div>

        <div class="avengers4">
            <a href="Home.aspx">
                <asp:Image runat="server" ImageUrl="~/images/marvel/avengers4.jpg" CssClass="avengers4 w3-round-xlarge" />
                <p class="avengers4 w3-round-xlarge"> The Avengers Endgame quiz. </p>
            </a>
        </div>

        <div class="justice_league">
            <a href="Home.aspx">
                <asp:Image runat="server" ImageUrl="~/images/DC/justice_league.jpg" CssClass="justice_league w3-round-xlarge" />
                <p class="justice_league w3-round-xlarge"> Justice league quiz. </p>
            </a>
        </div>

        <div class="shazam">
            <a href="Home.aspx">
                <asp:Image runat="server" ImageUrl="~/images/DC/shazam.jpg" CssClass="shazam w3-round-xlarge" />
                <p class="shazam w3-round-xlarge"> Shazam quiz. </p>
            </a>
        </div>

        <div class="bat_vs_sup">
            <a href="Home.aspx">
                <asp:Image runat="server" ImageUrl="~/images/DC/bat_vs_sup.jpg" CssClass="bat_vs_sup w3-round-xlarge" />
                <p class="bat_vs_sup w3-round-xlarge"> Batman vs superman quiz. </p>
            </a>
        </div>

        <div class="green_lantern">
            <a href="Home.aspx">
                <asp:Image runat="server" ImageUrl="~/images/DC/green_lantern.jpeg" CssClass="green_lantern w3-round-xlarge" />
                <p class="green_lantern w3-round-xlarge"> Green lantern quiz. </p>
            </a>
        </div>
    </form>
</body>
</html>
