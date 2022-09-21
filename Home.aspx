<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Quiz_web.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="home.css" rel="stylesheet" />
    <link href="nav_bar.css" rel="stylesheet" />
    <link href="iron_man.css" rel="stylesheet" />
    <title>Home</title>
</head>
<body>
    <form id="form1" runat="server">
        <ul>
          <li><a class="active" href="#home">Home</a></li>
          <li><a href="#quizes">Quizes</a></li>
          <li><a href="#Sign up">Sign up</a></li>
          <li><a href="#Log in">Log in</a></li>
        </ul>

        <h1 class="center"> Welcome to Marvel and DC quiz! </h1>
        <p class="center"> Here you can see if you are a true fan of Marvel Comic Universe. </p>       

        
        <br />
        <div class="ex1">
            <asp:Image ID="Image1" runat="server" ImageUrl="images/marvel_logo.png" CssClass="img1" />
            <p class="marvel"> The Marvel Cinematic Universe (MCU) is an American media franchise and 
                shared universe centered on a series of superhero films produced by Marvel Studios. 
                The films are based on characters that appear in American comic books published by Marvel Comics.</p>
        </div>
        <div class="ex2">
            <asp:Image ID="Image2" runat="server" ImageUrl="images/dc_logo.jpg" CssClass="img2" />
            <p class="dc">DC Comics, Inc. (or simply DC) is an American comic book publisher and 
                the flagship unit of DC Entertainment, a subsidiary of Warner Bros. 
                Entrepreneur Major Malcolm Wheeler-Nicholson founded Dc comics.</p>
        </div>
        <div class="iron_man">
            <asp:Image ID="Image3" runat="server" ImageUrl="images/iron_man.jpg" CssClass="img3" />
            <p class="dc"></p>
        </div>

      
    </form>
</body>
</html>