<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Avengers1_quiz5.aspx.cs" Inherits="Quiz_web.Avengers1_quiz5" %>
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
            <br /><br />
            <p> In a post-credit scene, what food do the Avengers eat after the Battle of New York? </p><hr />
            <asp:RadioButtonList runat="server">
                <asp:ListItem runat="server" id="radioButton1" class="avengers1_1guess" Text="  Chinese" />
                <asp:ListItem runat="server" id="radioButton2" class="avengers1_2guess" Text="  Shawarma" />
                <asp:ListItem runat="server" id="radioButton3" class="avengers1_3guess" Text="  Sushi" />
            </asp:RadioButtonList>

            <asp:LinkButton runat="server" CssClass="avengers1_next_button w3-button w3-right w3-green" Text="Finnish" OnClick="Finnish_Click" ></asp:LinkButton>
            <asp:LinkButton runat="server" CssClass="avengers1_previous_button w3-button w3-left w3-yellow" Text="Previous" OnClick="Previous_Click" ></asp:LinkButton>
        </div>
    </form>
</body>
</html>
