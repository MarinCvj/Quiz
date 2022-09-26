<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Avengers1_quiz.aspx.cs" Inherits="Quiz_web.Avengers1_quiz" %>
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

        <div class="question1 w3-round-xlarge">
            <br /><br />
            <p> Who was the main villan in Avengers movie? </p><hr />
            <asp:RadioButtonList runat="server">
                <asp:ListItem runat="server" class="avengers1_q1_1guess" Text="  Loki" />
                <asp:ListItem runat="server" class="avengers1_q1_2guess" Text="  Ultron" />
                <asp:ListItem runat="server" class="avengers1_q1_3guess" Text="  Thanos" />
            </asp:RadioButtonList>

            <asp:LinkButton runat="server" CssClass="avengers1_q1_previous_button w3-button w3-right w3-green" Text="Next" OnClick="Next_Click" ></asp:LinkButton>
            <asp:LinkButton runat="server" CssClass="avengers1_q1_next_button w3-button w3-left w3-yellow" Text="Previous" OnClick="Previous_Click" ></asp:LinkButton>
        </div>
    </form>
</body>
</html>
