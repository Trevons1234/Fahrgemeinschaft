<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AutoHinzufügen.aspx.cs" Inherits="Bewertungen.AutoHinzufügen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 29%;
            height: 120px;
        }
        .auto-style3 {
            width: 368px;
        }
        .auto-style4 {
            width: 395px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style2">
                </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div style="margin-left: 35%" class="auto-style4">
            <h1><asp:Label ID="Label1" runat="server" Text="Was möchten Sie tun?"></asp:Label></h1>
            <asp:TextBox ID="txtEMail" runat="server" Text="Neues Auto hinzufügen" Width="143px">Neues Auto hinzufügen</asp:TextBox>
            
            &nbsp;<asp:TextBox ID="txtPassword" runat="server" style="margin-left: 10px;" Text="vorhandenes Auto verwenden" Width="167px"></asp:TextBox>
            
            <br />
            <asp:Button ID="btn_FahrtAnlegen" runat="server" style="margin-left: 2px; margin: 2px" Text="neues Auto hinzufügen" Height="30px" Width="143px" OnClick="btnNeuesAutoHinzufügen_Click" />
                        <asp:DropDownList ID="ddlHinzugefügteAutos" runat="server" Height="30px" Width="177px" style="margin-left: 15px">
                        </asp:DropDownList>
        </div>
        </div>
    </form>
</body>
</html>
