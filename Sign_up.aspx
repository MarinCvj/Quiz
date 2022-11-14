<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign_up.aspx.cs" Inherits="Quiz_web.Sign_up" %>
<%@ Register Src="~/Controls/Includes.ascx" TagPrefix="uc1" TagName="Includes" %>
<%@ Register Src="~/Controls/Navigation.ascx" TagPrefix="uc1" TagName="Navigation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <uc1:Includes runat="server" id="Includes" />
    <title>Sign up</title>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:Navigation runat="server" id="Navigation" />

        <div class="container_acc">
            <h1> Create your new account. </h1>

            <p> Email: </p>
            <asp:TextBox runat="server" id="email" TextMode="Email" CssClass="email_box" placeholder="email"></asp:TextBox>

            <p> Password: </p>
            <asp:TextBox runat="server" id="password" TextMode="Password" CssClass="password_box" placeholder="password"></asp:TextBox>

            <asp:Button runat="server" Text="Submit" CssClass="submit_acc_button" OnClick="Submit_Click"/>
        </div>
    </form>
</body>
</html>
