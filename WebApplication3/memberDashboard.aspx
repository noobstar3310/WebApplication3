<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="memberDashboard.aspx.cs" Inherits="WebApplication3.memberDashboard" %>

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
        <asp:Label ID="uname" runat="server" Text="[uname]"></asp:Label>
        <a href="javascript:__doPostBack('LinkButton1','')">Edit Profile</a> <a href="javascript:__doPostBack('LinkButton1','')">Sign Out</a></form>
</body>
</html>
