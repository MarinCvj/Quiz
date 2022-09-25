<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign_up.aspx.cs" Inherits="Quiz_web.Sign_up" %>
<%@ Register Src="~/Controls/Includes.ascx" TagPrefix="uc1" TagName="Includes" %>
<%@ Register Src="~/Controls/Navigation.ascx" TagPrefix="uc1" TagName="Navigation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <uc1:Includes runat="server" id="Includes" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <title>Sign up</title>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:Navigation runat="server" id="Navigation" />

        <div class="w3-container">
            <h1> Create your new account. </h1>

            <p class="email"> Email: </p>
            <asp:TextBox runat="server" id="email" TextMode="Email" CssClass="email_box w3-hover-green" placeholder="email"></asp:TextBox>

            <p class="password"> Password: </p>
            <asp:TextBox runat="server" id="password" TextMode="Password" CssClass="password_box w3-hover-red" placeholder="password"></asp:TextBox>

            <asp:Button runat="server" Text="Submit" CssClass="button button1" OnClick="Submit_Click"/>
        </div>
    </form>
</body>
</html>
