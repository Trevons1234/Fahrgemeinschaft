<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AutoHinzufügen.aspx.cs" Inherits="Bewertungen.AutoHinzufügen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server">

        <div class="card text-white bg-dark w-50 h-15 mx-auto">
            <div class="card-body text-center">
                <h1>Wählen Sie eine Option aus:</h1>
            </div>
        </div>
            <div class="card w-50 mx-auto">
                <div class="card-body text-center">
                    <div class="form-group mb-1">

                    <bd>
                        <asp:Button ID="btnNeuesAutoHinzufügen" runat="server" type="submit" class="btn btn-dark text-center" Text="Neues Auto anlegen" Width="184px" Height="29px" OnClick="btnNeuesAutoHinzufügen_Click" />
                    </bd>
                    <bd> oder vorhandenes Auto auswählen:</bd>
                    <bd>
                        <asp:DropDownList ID="ddlHinzugefügteAutos" runat="server" Height="29px" Width="177px">
                        </asp:DropDownList>
                        <br />
                        <br />
                    </bd>
                    <asp:Button ID="btn_FahrtAnlegen" runat="server" type="submit" class="btn btn-dark text-center" OnClick="btn_FahrtAnlegen_Click" style="margin-left: 0px" Text="Fahrt Anlegen" Width="342px" />
                    </div>
                </div>
            </div>            
    </form>
</body>
</html>
