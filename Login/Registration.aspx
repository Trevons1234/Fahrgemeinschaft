<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Fahrgemeinschaft.Registration" Theme="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="margin-left: 147px">
    <form id="form1" runat="server">
        <div id="TextBox" style="height: 307px; margin-left: 481px; margin-bottom: 0px">
            <h1 style="margin-left: 120px">&nbsp;<asp:Label ID="Label2" runat="server" Text="Registration"></asp:Label></h1>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Vorname: "></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox>
            <asp:Label ID="lblFirstnameInfo" runat="server"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Nachname: "></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtLastname" runat="server"></asp:TextBox>
            <asp:Label ID="lblLastnameInfo" runat="server"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="E-Mail: "></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="txtEMail" runat="server"></asp:TextBox>
            <asp:Label ID="lblEMailInfo" runat="server"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Passwort:"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:Label ID="lblPasswordInfo" runat="server"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Text="Tel-Nummer: "></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            <asp:Label ID="lblPhoneInfo" runat="server"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Text="Geburtsdatum: "></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="txtBirthday" runat="server"></asp:TextBox>
            <asp:Label ID="lblBirthdayInfo" runat="server"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnRegister" runat="server" Height="39px" Text="Registrieren" Width="93px" OnClick="btnRegister_Click" />
        &nbsp;</div>
    </form>
</body>
</html>
