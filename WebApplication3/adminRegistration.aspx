<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminRegistration.aspx.cs" Inherits="WebApplication3.adminRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Admin Registration Page"></asp:Label>
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
            <asp:TextBox ID="fname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fname" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
            <asp:TextBox ID="lname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lname" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
            <asp:DropDownList ID="gender" runat="server">
                <asp:ListItem>M</asp:ListItem>
                <asp:ListItem>F</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="gender" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Label ID="Label5" runat="server" Text="Country"></asp:Label>
            <asp:TextBox ID="country" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="country" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="email" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Label ID="Label7" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="username" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="username" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Label ID="Label8" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="pwd" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="pwd" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        </div>
        
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Button" style="margin-top: 0px" />
        
        <asp:Label ID="errMsg" runat="server" Text="errMsg"></asp:Label>
        <asp:Label ID="usertype" runat="server" Text="Admin"></asp:Label>
    </form>
</body>
</html>
