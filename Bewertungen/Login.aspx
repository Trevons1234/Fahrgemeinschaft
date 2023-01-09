<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Bewertungen.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 680px">
            <h1 style="margin-left: 40px">&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="Login"></asp:Label></h1>
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="E-Mail:"></asp:Label>
&nbsp;<asp:TextBox ID="txtEMail" runat="server"></asp:TextBox>
            <asp:Label ID="lblEMailInfo" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Passwort: "></asp:Label>
            &nbsp;<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:Label ID="lblPasswordInfo" runat="server"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLogin" runat="server" Text="Login" Height="40px" Width="110px" OnClick="btnLogin_Click" />
        </div>
    </form>
</body>
</html>
