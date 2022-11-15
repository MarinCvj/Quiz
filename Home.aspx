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
        <div class="container_md">
            <div class="apear">
                <asp:Image ID="Image1" runat="server" ImageUrl="images/marvel/marvel_logo.png" CssClass="img1" />
                <p class="apear"> The Marvel Cinematic Universe (MCU) is an American media franchise and 
                    shared universe centered on a series of superhero films produced by Marvel Studios. 
                    The films are based on characters that appear in American comic books published by Marvel Comics.</p>
            </div>
            <div class="apear2">
                <asp:Image ID="Image2" runat="server" ImageUrl="images/DC/dc_logo.jpg" CssClass="img2" />
                <p class="apear2"> DC Comics, Inc. (or simply DC) is an American comic book publisher and 
                    the flagship unit of DC Entertainment, a subsidiary of Warner Bros. </p>
            </div>
        </div>
        
        <h1 class="welcome_text"> Welcome to Marvel and DC quiz! </h1>
        <b class="welcome_text"> Here you can see if you are a true fan of the MCU and DC. </b>

        <div class="apear">
            <asp:Image ID="Image9" runat="server" ImageUrl="~/images/marvel/stanlee.jpeg" CssClass="stan_lee" />
            <p class="apear">  Stan Lee (1922 - 2018) was an American comic book writer, editor, publisher, and producer.
                Founded Marvel Comics and made it the way it is. Thank you Stan! </p>
        </div>
        <div class="container_marvel">
            <!-- Marvel side -->
            <div class="col_marvel">
                <div class="apear">
                    <asp:Image ID="Image3" runat="server" ImageUrl="images/marvel/iron_man.jpg" CssClass="img_marvel" />
                    <p class="apear">Tony Stark. A wealthy American business magnate, playboy, philanthropist, inventor and ingenious scientist</p>
                </div>
                <div class="apear">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/images/marvel/Thor.jpg" CssClass="img_marvel" />
                    <p class="apear">Norse god of thunder. Lives in Asgard. Son of Odin. His hammer is called Myölnir.</p>
                </div>
                <div class="apear">
                    <asp:Image ID="Image5" runat="server" ImageUrl="~/images/marvel/cap.jpg" CssClass="img_marvel" />
                    <p class="apear">The first Avenger. He is a leader of the Avengers. Recipient of the Super Soldier serum</p>
                </div>
            </div>
            <div class="col_marvel">
                <div class="apear">
                    <asp:Image ID="Image6" runat="server" ImageUrl="~/images/marvel/Black_Widow.jpg" CssClass="img_marvel" />
                    <p class="apear">Black Widow (Natalia "Natasha" Romanova). Russian spy. Became an agent of the spy agency S.H.I.E.L.D.</p>
                </div>
                <div class="apear">
                    <asp:Image ID="Image7" runat="server" ImageUrl="~/images/marvel/hawkeye.jpg" CssClass="img_marvel" />
                    <p class="apear"> Hawkeye (Clint Barton). Adopted the Ronin alias after his death and resurrection.</p>
                </div>
                <div class="apear">
                    <asp:Image ID="Image8" runat="server" ImageUrl="~/images/marvel/hulk.jpg" CssClass="img_marvel" />
                    <p class="apear">  Dr. Robert Bruce Banner, has an alter ego Hulk, a green-skinned, 
                        muscular humanoid possessing a limitless degree of physical strength.</p>                    
                </div>
            </div>
        </div>
        <!-- DC side -->
        <div class="apear2">
            <asp:Image ID="Image10" runat="server" ImageUrl="~/images/DC/malcom.jpg" CssClass="malcom" />
            <p class="apear2">  Major Malcolm Wheeler-Nicholson (1890 – 1965) was an American pulp magazine writer
                and entrepreneur who pioneered the American comic book. He founded DC Comics. Thank you Malcom! </p>
        </div>
        <div class="container_dc">
            <div class="col_dc">
                <div class="apear2">
                    <asp:Image ID="Image12" runat="server" ImageUrl="~/images/DC/batman.jpg" CssClass="img_dc" />
                    <p class="apear2"> Batman is the alias of Bruce Wayne, a wealthy American philanthropist who resides in Gotham City.</p>
                </div>
                <div class="apear2">
                    <asp:Image ID="Image16" runat="server" ImageUrl="~/images/DC/cyborg.jpg" CssClass="img_dc" />
                    <p class="apear2"> Victor Stone is Cyborg, a high school student merged with a Mother Box when he was injured.</p>
                </div>
                <div class="apear2">
                    <asp:Image ID="Image14" runat="server" ImageUrl="~/images/DC/wonder_woman.jpg" CssClass="img_dc" />
                    <p class="apear2"> Wonder Woman lived as an Amazon, along with superhuman powers as gifts by the Greek gods.
                        Biological daughter of Zeus and Hippolyta.</p>
                </div>                
            </div>
            <div class="col_dc">
                <div class="apear2">
                    <asp:Image ID="Image11" runat="server" ImageUrl="~/images/DC/superman.jpg" CssClass="img_dc" />
                    <p class="apear2"> Superman was born on the planet Krypton and was named Kal-El. Earth name is Clark Kent.</p>
                </div>                
                <div class="apear2">
                    <asp:Image ID="Image13" runat="server" ImageUrl="~/images/DC/flash.jpg" CssClass="img_dc" />
                    <p class="apear2"> Barry Allan AKA The Flash got his powers from a lightning bolt after the particle accelerator explosion.</p>
                </div>
                <div class="apear2">
                    <asp:Image ID="Image15" runat="server" ImageUrl="~/images/DC/aquaman.jpg" CssClass="img_dc" />
                    <p class="apear2"> Arthur Curry is the King of Atlantis, the firstborn son of Queen Atlanna.
                        half-brother of Orm Marius, and a member of the Justice League.</p>
                </div>
            </div>
        </div>
        <!-- Versus -->
        <asp:Image ID="Image17" runat="server" ImageUrl="~/images/versus.png" CssClass="versus" />
    </form>
</body>
</html>