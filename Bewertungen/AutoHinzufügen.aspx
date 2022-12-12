<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AutoHinzufügen.aspx.cs" Inherits="Bewertungen.AutoHinzufügen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 225px;
        }
        .auto-style2 {
            width: 29%;
            height: 120px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style1">Neues Auto hinzufügen&nbsp;&nbsp; </td>
                    <td>vorhandenes Auto verwenden</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btnNeuesAutoHinzufügen" runat="server" Text="Button" Width="184px" Height="29px" OnClick="btnNeuesAutoHinzufügen_Click" />
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlHinzugefügteAutos" runat="server" Height="29px" Width="177px">
                        </asp:DropDownList>
                    </td>
                </tr>
                </table>
&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btn_FahrtAnlegen" runat="server" OnClick="btn_FahrtAnlegen_Click" style="margin-left: 0px" Text="Fahrt Anlegen" Width="342px" />
            &nbsp;&nbsp;&nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
