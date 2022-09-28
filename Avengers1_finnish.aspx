<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Avengers1_finnish.aspx.cs" Inherits="Quiz_web.Avengers1_finnish" %>
<%@ Register Src="~/Controls/Includes.ascx" TagPrefix="uc1" TagName="Includes" %>
<%@ Register Src="~/Controls/Navigation.ascx" TagPrefix="uc1" TagName="Navigation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <uc1:Includes runat="server" id="Includes" />
    <title> Avengers 1 quiz </title>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:Navigation runat="server" id="Navigation" />
        
        <div class="question w3-round-xlarge">
            <h1 class="score1"> Your score is: <br /><br /> <asp:Label runat="server" ID="lbl_score"></asp:Label> / 5 </h1>            
            <asp:LinkButton runat="server" CssClass="avengers1_quit_button w3-button w3-right w3-blue" Text="Home" OnClick="Home_Click"></asp:LinkButton>
        </div>
    </form>
</body>
</html>
