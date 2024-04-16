<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication3.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Login Page</h1>
            <a href="memberRegistration.aspx">Not yet Register?</a>
        </div>
        <div>

            Username:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        </div>
        Password:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Sign In" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="fill up textbox"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2" runat="server" ErrorMessage="fill up textbox"></asp:RequiredFieldValidator>
        </p>
    </form>
</body>
</html>
