<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Log_in.aspx.cs" Inherits="Quiz_web.Log_in" %>
<%@ Register Src="~/Controls/Includes.ascx" TagPrefix="uc1" TagName="Includes" %>
<%@ Register Src="~/Controls/Navigation.ascx" TagPrefix="uc1" TagName="Navigation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <uc1:Includes runat="server" id="Includes" />
    <title>Log in</title>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:Navigation runat="server" id="Navigation" />

        <div class="w3-container">
            <h1 class="log_into_acc"> Log in into your account. </h1>

            <p class="email"> Email: </p>
            <asp:TextBox runat="server" id="email" TextMode="Email" CssClass="email_box w3-hover-green" placeholder="email"></asp:TextBox>

            <p class="password"> Password: </p>
            <asp:TextBox runat="server" id="password" TextMode="Password" CssClass="password_box w3-hover-red" placeholder="password"></asp:TextBox>

            <asp:Button runat="server" Text="Submit" CssClass="button button1" OnClick="Submit_Click"/>
        </div>
    </form>
</body>
</html>
