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
    <link href="Thor.css" rel="stylesheet" />
    <link href="cap.css" rel="stylesheet" />
    <link href="black_widow.css" rel="stylesheet" />
    <link href="Hawkeye.css" rel="stylesheet" />
    <link href="hulk.css" rel="stylesheet" />
    <link href="stanlee.css" rel="stylesheet" />
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
            <p class="iron_man">Tony Stark. A wealthy American business magnate, playboy, philanthropist,
                inventor and ingenious scientist</p>
        </div>
        <div class="thor">
            <asp:Image ID="Image4" runat="server" ImageUrl="~/images/Thor.jpg" CssClass="img4" />
            <p class="thor">Norse god of thunder. Lives in Asgard. Descendant of Odin. His hammer is called Myölnir.</p>
        </div>
        <div class="cap">
            <asp:Image ID="Image5" runat="server" ImageUrl="~/images/cap.jpg" CssClass="img5" />
            <p class="cap">The first Avenger. He is a leader of the Avengers. Recipient of the Super Soldier serum</p>
        </div>
        <div class="black_widow">
            <asp:Image ID="Image6" runat="server" ImageUrl="~/images/Black_Widow.jpg" CssClass="img6" />
            <p class="black_widow">Black Widow (Natalia Alianovna "Natasha" Romanova). Russian spy.
                Became an agent of the spy agency S.H.I.E.L.D.</p>
        </div>
        <div class="hawkeye">
            <asp:Image ID="Image7" runat="server" ImageUrl="~/images/hawkeye.jpg" CssClass="img7" />
            <p class="hawkeye"> Hawkeye (Clint Barton). Adopted the Ronin alias after his death and resurrection.</p>
        </div>
        <div class="hulk">
            <asp:Image ID="Image8" runat="server" ImageUrl="~/images/hulk.jpg" CssClass="img8" />
            <p class="hulk">  Dr. Robert Bruce Banner, is primarily represented by the alter ego Hulk, a green-skinned, 
                hulking and muscular humanoid possessing a limitless degree of physical strength.
            </p>
        </div>
        <div class="stanlee">
            <asp:Image ID="Image9" runat="server" ImageUrl="~/images/stanlee.jpeg" CssClass="img9" />
            <p class="stanlee">  Stan Lee (1922 - 2018) was an American comic book writer, editor, publisher, and producer.
                Founded Marvel Comics and made it the way it is. Thank you Stan!
            </p>
        </div>
    </form>
</body>
</html>