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

        <asp:Repeater ID="rptQuiz" runat="server" OnItemDataBound="rptQuiz_ItemDataBound">
            <HeaderTemplate>
                <ul class="quizes-list">
            </HeaderTemplate>
            <ItemTemplate>
                <li class="quizes-list">
                    <asp:HyperLink runat="server" ID="quizLink" NavigateUrl="quiz.aspx">
                        <asp:Image ID="quizImage" runat="server" ImageUrl="~/images/marvel/avengers1.jpg" CssClass="w3-round-xlarge" />
                        <p class="w3-round-xlarge"><asp:Literal runat="server" ID="litName"></asp:Literal></p>
                    </asp:HyperLink>
                </li>
            </ItemTemplate>
            <FooterTemplate>
                </ul>
            </FooterTemplate>
        </asp:Repeater>

    </form>
</body>
</html>
