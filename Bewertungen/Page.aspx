<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page.aspx.cs" Inherits="Bewertungen.Mainpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 236px;
        }
        .auto-style1 {
            width: 124px;
        }
        .auto-style2 {
            width: 417px;
        }
        .auto-style3 {
            height: 116px;
        }
    </style>
</head>
<body style="height: 165px">
    <form id="form1" runat="server" class="auto-style3">
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">
                    <asp:ImageButton ID="ibnFahrtAnlegen" runat="server" Height="92px" ImageAlign="Left" ImageUrl="~/Screenshot 2022-11-28 095545.png" OnClick="ibnFahrtAnlegen_Click" Width="105px" />
                </td>
                <td class="auto-style2">
                    <asp:ImageButton ID="ibnFahrtBuchen" runat="server" Height="92px" ImageAlign="Left" ImageUrl="~/Screenshot 2022-11-28 095545.png" OnClick="ibnFahrtBuchen_Click" Width="105px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Fahrt anlegen</td>
                <td class="auto-style2">Fahrt buchen</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
