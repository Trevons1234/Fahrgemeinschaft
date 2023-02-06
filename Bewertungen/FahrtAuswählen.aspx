<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FahrtAuswählen.aspx.cs" Inherits="Bewertungen.FahrtAuswählen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
</head>
<body style="height: 316px">
    <form id="form1" runat="server">

        <div class="card text-white bg-dark w-50 h-15 mx-auto">
            <div class="card-body text-center">
                <h1>Fahrt buchen</h1>
            </div>
        </div>

        <div class="card w-50 mx-auto">

            <asp:Label ID="lblStartuhrzeit" runat="server" Text="Startuhrzeit"></asp:Label>
            <asp:TextBox ID="txt_StartZeit" runat="server"></asp:TextBox>

            <asp:Label ID="idEnduhrzeit" runat="server" Text="Enduhrzeit"></asp:Label>
            <asp:TextBox ID="txt_EndZeit" runat="server"></asp:TextBox>

            <label for="cb_Raucher">Raucherauto</label>
            <div>
                <asp:CheckBox ID="cb_Raucher" runat="server" /></div>

            <label for="cb_Preis">Max. Preis</label>
            <div>
                <asp:CheckBox ID="cb_Preis" runat="server" /></div>
            <asp:TextBox ID="txtMaxPreis" runat="server" TextMode="Number"></asp:TextBox>

            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtBewertung" EnableClientScript="False" ErrorMessage="Der Preis muss positiv sein" MaximumValue="5" MinimumValue="1"></asp:RangeValidator>
            <br />
            <label for="cb_Bewertung">&nbsp;Bewertung größer als</label>
            <div>
                <asp:CheckBox ID="cb_Bewertung" runat="server" /></div>
            <asp:TextBox ID="txtBewertung" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtBewertung" EnableClientScript="False" ErrorMessage="Deine Bewertung muss zwischen 1 und 5 liegen" MaximumValue="5" MinimumValue="1"></asp:RangeValidator>

            <br />

            <label for="cb_Sitzplätze">Sitzplätze</label>
            <div>
                <asp:CheckBox ID="cb_Sitzplätze" runat="server" /></div>
            <asp:TextBox ID="txt_Sitzplätze" runat="server"></asp:TextBox>

            <br />

            <label for="txt_Ort">Wohnort</label>
            <br />
            <asp:TextBox ID="txt_Ort" runat="server"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_Ort" EnableClientScript="False" ErrorMessage="Bitte Wohnort eingeben"></asp:RequiredFieldValidator>
            <br />

            <asp:Button ID="btn_suchen" runat="server" type="submit" class="btn btn-dark text-center" OnClick="btn_suchen_Click" Text="Suchen" Width="155px" />
            <br />
            <asp:GridView ID="gv_Data" runat="server">
            </asp:GridView>

    </form>
</body>
</html>
