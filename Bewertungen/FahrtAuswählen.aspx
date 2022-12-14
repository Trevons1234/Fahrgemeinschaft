<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FahrtAuswählen.aspx.cs" Inherits="Bewertungen.FahrtAuswählen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 450px;
        }
        .auto-style2 {
            width: 100%;
            height: 138px;
            margin-bottom: 0px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style8 {
            width: 127px;
        }
        .auto-style9 {
            height: 26px;
            width: 127px;
        }
        .auto-style10 {
            width: 76px;
        }
        .auto-style11 {
            height: 26px;
            width: 76px;
        }
        .auto-style14 {
            width: 171px;
            height: 29px;
        }
        .auto-style15 {
            width: 127px;
            height: 29px;
        }
        .auto-style16 {
            height: 29px;
        }
        .auto-style21 {
            height: 26px;
            width: 171px;
        }
        .auto-style22 {
            width: 171px;
        }
        .auto-style23 {
            height: 29px;
            width: 25px;
        }
        .auto-style24 {
            height: 26px;
            width: 25px;
        }
        .auto-style25 {
            width: 25px;
        }
        .auto-style29 {
            width: 76px;
            height: 27px;
        }
        .auto-style30 {
            height: 27px;
            width: 25px;
        }
        .auto-style31 {
            width: 171px;
            height: 27px;
        }
        .auto-style32 {
            width: 127px;
            height: 27px;
        }
        .auto-style33 {
            height: 27px;
        }
    </style>
</head>
<body style="height: 316px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style23">
                        <asp:Label ID="lblStartuhrzeit" runat="server" Text="Startuhrzeit"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="txt_StartZeit" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style15">
                        <asp:Label ID="idEnduhrzeit" runat="server" Text="Enduhrzeit"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="txt_EndZeit" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">
                        <asp:CheckBox ID="cb_Raucher" runat="server" />
                    </td>
                    <td class="auto-style21" id="lblRaucherauto" aria-expanded="true">
                        <asp:Label ID="lblRaucherAuto" runat="server" Text="kein Raucherauto"></asp:Label>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style11"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:CheckBox ID="cb_Preis" runat="server" />
                    </td>
                    <td class="auto-style22">
                        <asp:Label ID="lblPreis" runat="server" Text="MaxPreis"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtMaxPreis" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtBewertung" EnableClientScript="False" ErrorMessage="Der Preis muss positiv sein" MaximumValue="5" MinimumValue="1"></asp:RangeValidator>
                    </td>
                    <td>
                        <asp:Button ID="btn_suchen" runat="server" OnClick="btn_suchen_Click" Text="Suchen" Width="155px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:CheckBox ID="cb_Bewertung" runat="server" />
                    </td>
                    <td class="auto-style22">
                        <span>∅ </span>Bewertung größer als</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtBewertung" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtBewertung" EnableClientScript="False" ErrorMessage="Deine Bewertung muss zwischen 1 und 5 liegen" MaximumValue="5" MinimumValue="1"></asp:RangeValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style30">
                        <asp:CheckBox ID="cb_Sitzplätze" runat="server" />
                    </td>
                    <td class="auto-style31">
                        Sitzplätze</td>
                    <td class="auto-style32">
                        <asp:TextBox ID="txt_Sitzplätze" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style29">
                        <br />
                    </td>
                    <td class="auto-style33"></td>
                </tr>
            </table>
            <br />
            <asp:TextBox ID="txt_Ort" runat="server" Width="191px"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" Text=" Wohnort"></asp:Label>
        </div>
    </form>
</body>
</html>
