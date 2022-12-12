<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bewertung.aspx.cs" Inherits="Bewertungen.Bewertung" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="rblPüntl" runat="server" Text="Ist der Fahrer Püntklich angekommen?"></asp:Label>
            <asp:RadioButtonList ID="rblPünktlichkeit" runat="server" Height="31px" RepeatDirection="Horizontal" Width="409px">
                <asp:ListItem Value="1 ">1 Stern</asp:ListItem>
                <asp:ListItem Value="2 ">2 Sterne</asp:ListItem>
                <asp:ListItem Value="3 ">3 Sterne</asp:ListItem>
                <asp:ListItem Value="4">4 Sterne</asp:ListItem>
                <asp:ListItem Value="5 ">5 Sterne</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Label ID="cbxFahrstil" runat="server" Text="Fahrstil"></asp:Label>
            <br />
            <asp:RadioButtonList ID="rblFahrstil" runat="server" Height="31px" RepeatDirection="Horizontal" Width="409px">
                <asp:ListItem Value="1 ">1 Stern</asp:ListItem>
                <asp:ListItem Value="2 ">2 Sterne</asp:ListItem>
                <asp:ListItem Value="3 ">3 Sterne</asp:ListItem>
                <asp:ListItem Value="4">4 Sterne</asp:ListItem>
                <asp:ListItem Value="5 ">5 Sterne</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Label runat="server" Text="Sauberkeit im Auto"></asp:Label>
            <br />
            <asp:RadioButtonList ID="rblSauberkeit" runat="server" Height="31px" RepeatDirection="Horizontal" Width="409px">
                <asp:ListItem Value="1 ">1 Stern</asp:ListItem>
                <asp:ListItem Value="2 ">2 Sterne</asp:ListItem>
                <asp:ListItem Value="3 ">3 Sterne</asp:ListItem>
                <asp:ListItem Value="4">4 Sterne</asp:ListItem>
                <asp:ListItem Value="5 ">5 Sterne</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Label runat="server" Text="Freundlichkeit des Fahrers"></asp:Label>
            <br />
            <asp:RadioButtonList ID="rblFreundlichkeit" runat="server" Height="31px" RepeatDirection="Horizontal" Width="409px">
                <asp:ListItem Value="1 ">1 Stern</asp:ListItem>
                <asp:ListItem Value="2 ">2 Sterne</asp:ListItem>
                <asp:ListItem Value="3 ">3 Sterne</asp:ListItem>
                <asp:ListItem Value="4">4 Sterne</asp:ListItem>
                <asp:ListItem Value="5 ">5 Sterne</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Label runat="server" Text="Preis"></asp:Label>
            <br />
            <asp:RadioButtonList ID="rblPreis" runat="server" Height="31px" RepeatDirection="Horizontal" Width="409px">
                <asp:ListItem Value="1 ">1 Stern</asp:ListItem>
                <asp:ListItem Value="2 ">2 Sterne</asp:ListItem>
                <asp:ListItem Value="3 ">3 Sterne</asp:ListItem>
                <asp:ListItem Value="4">4 Sterne</asp:ListItem>
                <asp:ListItem Value="5 ">5 Sterne</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="btnBewertungAbschicken" runat="server" OnClick="btnBewertungAbschicken_Click" Text="Bewertung abschicken" />
&nbsp;
            <asp:Label ID="lblErg" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
