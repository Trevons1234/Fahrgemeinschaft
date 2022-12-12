<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainpageAutoAnlegen.aspx.cs" Inherits="Bewertungen.Mainpage1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height: 45px;
        }
        .auto-style3 {
            width: 126px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 126px;
            height: 30px;
        }
        .auto-style6 {
            height: 30px;
        }
        .auto-style7 {
            height: 30px;
            width: 166px;
        }
        .auto-style8 {
            height: 23px;
            width: 166px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style5">Anz. Sitzplätze:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtAnzSitzpläze" runat="server" TextMode="Number">1</asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAnzSitzpläze" EnableClientScript="False" ErrorMessage="Du musst die Anzahl deine Sitzplätze angeben"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAnzSitzpläze" EnableClientScript="False" ErrorMessage="Keine negative Zahl möglich" MaximumValue="9999999" MinimumValue="1"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Raucherauto:</td>
                <td class="auto-style8">
                    <asp:RadioButtonList ID="rblRaucherauto" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="0">Ja</asp:ListItem>
                        <asp:ListItem Value="1">Nein</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="rblRaucherauto" EnableClientScript="False" ErrorMessage="Ist dein Auto ein Raucherauto?"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Automarke:</td>
                <td class="auto-style8">
                    <asp:DropDownList ID="ddlAutomarke" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Kennzeichen:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtKennzeichen" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtKennzeichen" EnableClientScript="False" ErrorMessage="Gib dein Kennzeichen ein"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="btnAutoanlegen" runat="server" OnClick="btnFahrtAnlegen_Click" Text="Auto anlegen" Width="128px" />
                </td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="lblInfo" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
