<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminDashboard.aspx.cs" Inherits="WebApplication3.adminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>My Dashboard</h1>
        </div>
        <asp:Label ID="Label1" runat="server" Text="[uname]"></asp:Label>
        <asp:LinkButton ID="LinkButton1" runat="server">Manage User</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server">Edit Profile</asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server">Sign Out</asp:LinkButton>
    </form>
</body>
</html>
