<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AutoHinzufügen.aspx.cs" Inherits="Bewertungen.AutoHinzufügen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<<<<<<< HEAD
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
=======
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
>>>>>>> 66aa57c (designs)
</head>
<body>
    <form id="form1" runat="server">
        <div>
<<<<<<< HEAD
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
=======

        <div class="card text-white bg-dark w-50 h-15 mx-auto">
            <div class="card-body text-center">
                <h1>Wählen Sie eine Option aus:</h1>
            </div>
        </div>
            <div class="card w-50 mx-auto">
                <div class="card-body text-center">
                    <div class="form-group mb-1">
                <br>
                    <bd>Neues Auto hinzufügen&nbsp;&nbsp; </bd>
                    <bd>vorhandenes Auto verwenden</bd>
                </br>
                <br>
                    <bd>
                        <asp:Button ID="btnNeuesAutoHinzufügen" runat="server" type="submit" class="btn btn-dark text-center" Text="Neues Auto" Width="184px" Height="29px" OnClick="btnNeuesAutoHinzufügen_Click" />
                    </bd>
                    <bd>
                        <asp:DropDownList ID="ddlHinzugefügteAutos" runat="server" Height="29px" Width="177px">
                        </asp:DropDownList>
                        <br />
                        <br />
                    </bd>
                </br>
                    <asp:Button ID="btn_FahrtAnlegen" runat="server" type="submit" class="btn btn-dark text-center" OnClick="btn_FahrtAnlegen_Click" style="margin-left: 0px" Text="Fahrt Anlegen" Width="342px" />
                    </div>
                </div>
            </div>            
>>>>>>> 66aa57c (designs)
        </div>
    </form>
</body>
</html>
