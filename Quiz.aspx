<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quiz.aspx.cs" Inherits="Quiz_web.Quiz" %>
<%@ Register Src="~/Controls/Includes.ascx" TagPrefix="uc1" TagName="Includes" %>
<%@ Register Src="~/Controls/Navigation.ascx" TagPrefix="uc1" TagName="Navigation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <uc1:Includes runat="server" id="Includes" />
    <title>Quiz</title>
</head>
<body>
    <form id="form1" runat="server">
       <uc1:Navigation runat="server" id="Navigation" />       

       <div class="question w3-round-xlarge">

        <asp:Repeater ID="rptQuizQuestion" runat="server" OnItemDataBound="RptQuizQuestion_ItemDataBound">
            <ItemTemplate>                        
                <p class="w3-round-xlarge"><asp:Literal runat="server" ID="litName"></asp:Literal></p>
            </ItemTemplate>
        </asp:Repeater>

        <asp:RadioButtonList runat="server" ID="RadioListAnswers" RepeatLayout="UnorderedList"></asp:RadioButtonList>

        <asp:LinkButton runat="server" CssClass="w3-button w3-right w3-yellow" Text="Previous" OnClick="Previous_Click"></asp:LinkButton>
        <asp:LinkButton runat="server" CssClass="w3-button w3-right w3-blue" Text="Next" OnClick="Next_Click"></asp:LinkButton>
       </div>

    </form>
</body>
</html>
