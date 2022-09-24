<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Quiz_web.Home" %>
<%@ Register Src="~/Controls/Includes.ascx" TagPrefix="uc1" TagName="Includes" %>
<%@ Register Src="~/Controls/Navigation.ascx" TagPrefix="uc1" TagName="Navigation" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <uc1:Includes runat="server" id="Includes" />
    <title>Home</title>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:Navigation runat="server" id="Navigation" />

        <h1 class="center"> Welcome to Marvel and DC quiz! </h1>
        <p class="center"> Here you can see if you are a true fan of the MCU and DC. </p>       

        
        <br />
        <div class="ex1">
            <asp:Image ID="Image1" runat="server" ImageUrl="images/marvel/marvel_logo.png" CssClass="img1" />
            <p class="marvel"> The Marvel Cinematic Universe (MCU) is an American media franchise and 
                shared universe centered on a series of superhero films produced by Marvel Studios. 
                The films are based on characters that appear in American comic books published by Marvel Comics.</p>
        </div>
        <div class="ex2">
            <asp:Image ID="Image2" runat="server" ImageUrl="images/DC/dc_logo.jpg" CssClass="img2" />
            <p class="dc">DC Comics, Inc. (or simply DC) is an American comic book publisher and 
                the flagship unit of DC Entertainment, a subsidiary of Warner Bros. 
                Entrepreneur Major Malcolm Wheeler-Nicholson founded Dc comics.</p>
        </div>

        <!-- Marvel side -->
        <div class="iron_man">
            <asp:Image ID="Image3" runat="server" ImageUrl="images/marvel/iron_man.jpg" CssClass="img3" />
            <p class="iron_man">Tony Stark. A wealthy American business magnate, playboy, philanthropist,
                inventor and ingenious scientist</p>
        </div>
        <div class="thor">
            <asp:Image ID="Image4" runat="server" ImageUrl="~/images/marvel/Thor.jpg" CssClass="img4" />
            <p class="thor">Norse god of thunder. Lives in Asgard. Descendant of Odin. His hammer is called Myölnir.</p>
        </div>
        <div class="cap">
            <asp:Image ID="Image5" runat="server" ImageUrl="~/images/marvel/cap.jpg" CssClass="img5" />
            <p class="cap">The first Avenger. He is a leader of the Avengers. Recipient of the Super Soldier serum</p>
        </div>
        <div class="black_widow">
            <asp:Image ID="Image6" runat="server" ImageUrl="~/images/marvel/Black_Widow.jpg" CssClass="img6" />
            <p class="black_widow">Black Widow (Natalia Alianovna "Natasha" Romanova). Russian spy.
                Became an agent of the spy agency S.H.I.E.L.D.</p>
        </div>
        <div class="hawkeye">
            <asp:Image ID="Image7" runat="server" ImageUrl="~/images/marvel/hawkeye.jpg" CssClass="img7" />
            <p class="hawkeye"> Hawkeye (Clint Barton). Adopted the Ronin alias after his death and resurrection.</p>
        </div>
        <div class="hulk">
            <asp:Image ID="Image8" runat="server" ImageUrl="~/images/marvel/hulk.jpg" CssClass="img8" />
            <p class="hulk">  Dr. Robert Bruce Banner, is primarily represented by the alter ego Hulk, a green-skinned, 
                hulking and muscular humanoid possessing a limitless degree of physical strength.
            </p>
        </div>
        <div class="stanlee">
            <asp:Image ID="Image9" runat="server" ImageUrl="~/images/marvel/stanlee.jpeg" CssClass="img9" />
            <p class="stanlee">  Stan Lee (1922 - 2018) was an American comic book writer, editor, publisher, and producer.
                Founded Marvel Comics and made it the way it is. Thank you Stan!
            </p>
        </div>

        <!-- DC side -->
        <div class="malcom">
            <asp:Image ID="Image10" runat="server" ImageUrl="~/images/DC/malcom.jpg" CssClass="img10" />
            <p class="malcom">  Major Malcolm Wheeler-Nicholson (1890 – 1965) was an American pulp magazine writer
                and entrepreneur who pioneered the American comic book. He founded DC Comics. Thank you Malcom!
            </p>
        </div>
        <div class="superman">
            <asp:Image ID="Image11" runat="server" ImageUrl="~/images/DC/superman.jpg" CssClass="img11" />
            <p class="superman">  Superman was born on the planet Krypton and was named Kal-El. Earth name is Clark Kent.
            </p>
        </div>
        <div class="batman">
            <asp:Image ID="Image12" runat="server" ImageUrl="~/images/DC/batman.jpg" CssClass="img12" />
            <p class="batman">  Batman is the alias of Bruce Wayne, a wealthy American playboy, philanthropist,
                and industrialist who resides in Gotham City.
            </p>
        </div>
        <div class="flash">
            <asp:Image ID="Image13" runat="server" ImageUrl="~/images/DC/flash.jpg" CssClass="img13" />
            <p class="flash">  Barry Allan AKA The Flash got his powers from a lightning bolt
                after the particle accelerator explosion.
            </p>
        </div>
        <div class="wonder_woman">
            <asp:Image ID="Image14" runat="server" ImageUrl="~/images/DC/wonder_woman.jpg" CssClass="img14" />
            <p class="wonder_woman">  Wonder Woman lived as an Amazon, along with superhuman powers as gifts by the Greek gods.
                Biological daughter of Zeus and Hippolyta.
            </p>
        </div>
        <div class="aquaman">
            <asp:Image ID="Image15" runat="server" ImageUrl="~/images/DC/aquaman.jpg" CssClass="img15" />
            <p class="aquaman"> Arthur Curry is the King of Atlantis, the firstborn son of Queen Atlanna.
                half-brother of Orm Marius, and a member of the Justice League.
            </p>
        </div>
        <div class="cyborg">
            <asp:Image ID="Image16" runat="server" ImageUrl="~/images/DC/cyborg.jpg" CssClass="img16" />
            <p class="cyborg"> Victor Stone is Cyborg, a high school student merged with a Mother Box when he was injured.
                He is a founding member of the Justice League.
        </div>

        <!-- Versus -->
        <asp:Image ID="Image17" runat="server" ImageUrl="~/images/versus.png" CssClass="img17" />
    </form>
</body>
</html>