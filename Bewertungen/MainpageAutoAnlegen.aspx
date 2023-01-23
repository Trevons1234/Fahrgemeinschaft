<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainpageAutoAnlegen.aspx.cs" Inherits="Bewertungen.Mainpage1" %>

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
                <h1>Auto anlegen</h1>
            </div>
        </div>

        <div class="card w-50 mx-auto">
                <div class="card-body">
                    <div class="form-group mb-1">

                    <label for="txtAnzSitzpläze">Anzahl der Sitzplätze:</label>
                    <asp:TextBox ID="txtAnzSitzpläze" runat="server" TextMode="Number">1</asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAnzSitzpläze" EnableClientScript="False" ErrorMessage="Du musst die Anzahl deine Sitzplätze angeben"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAnzSitzpläze" EnableClientScript="False" ErrorMessage="Keine negative Zahl möglich" MaximumValue="9999999" MinimumValue="1"></asp:RangeValidator>

                        <br />
                        <br />

                    <label for="rblRaucherauto">Ist das Auto ein Raucherauto?</label>
                    <asp:RadioButtonList ID="rblRaucherauto" runat="server" RepeatDirection="Vertical">
                        <asp:ListItem Value="0">Ja</asp:ListItem>
                        <asp:ListItem Value="1">Nein</asp:ListItem>
                    </asp:RadioButtonList>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="rblRaucherauto" EnableClientScript="False" ErrorMessage="Ist dein Auto ein Raucherauto?"></asp:RequiredFieldValidator>

                        <br />

                    <label for="ddlAutomarke">Marke:</label>
                    <asp:DropDownList ID="ddlAutomarke" runat="server">
                    </asp:DropDownList>

                        <br />

                        <br />

                    <label for="txtKennzeichen">Kennzeichen:</label>
                    <asp:TextBox ID="txtKennzeichen" runat="server"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtKennzeichen" EnableClientScript="False" ErrorMessage="Gib dein Kennzeichen ein"></asp:RequiredFieldValidator>

                        <br />
                        <br />

                    <asp:Button ID="btnAutoanlegen" runat="server" type="submit" class="btn btn-dark text-center" OnClick="btnFahrtAnlegen_Click" Text="Auto anlegen" Width="128px" />
                    <asp:Label ID="lblInfo" runat="server"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
