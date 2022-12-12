<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FahrtAnlegen.aspx.cs" Inherits="Bewertungen.Fahrt_anlegen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Strecke:
            <asp:TextBox ID="txt_Strecke" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txt_Strecke" EnableClientScript="False" ErrorMessage="Bitte alle größeren Ortschaften angeben" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            <br />
            Startzeit:<asp:TextBox ID="txt_Startzeit" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="cv_Startzeit" runat="server" ControlToValidate="txt_Startzeit" EnableClientScript="False" ErrorMessage="Bitte Zeit mit &quot;:&quot; getrennnt angeben" OnServerValidate="cv_Startzeit_ServerValidate"></asp:CustomValidator>
            <br />
            Preis:
            <asp:TextBox ID="txt_Preis" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="btn_FahrtAnlegen" runat="server" OnClick="btn_FahrtAnlegen_Click" Text="Fahrt anlegen" />
        <br />
        <asp:Label ID="lbl_info" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
