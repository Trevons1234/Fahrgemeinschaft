<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bewertung.aspx.cs" Inherits="Bewertungen.Bewertung" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>

        <div class="card text-white bg-dark w-50 h-15 mx-auto">
            <div class="card-body text-center">
                <h1>Bewertung</h1>
            </div>
        </div>

        <div class="card w-50 mx-auto">
            <div class="card-body">
                <div class="form-group mb-1">

                <br />
                <br />
                      <label for="rblPünktlichkeit">War der Fahrer pünktlich?</label>
                &nbsp;<asp:RadioButtonList ID="rblPünktlichkeit" runat="server" Height="31px" RepeatDirection="Horizontal" Width="409px">
                    <asp:ListItem Value="1 "> 1 Stern</asp:ListItem>
                    <asp:ListItem Value="2 "> 2 Sterne</asp:ListItem>
                    <asp:ListItem Value="3 "> 3 Sterne</asp:ListItem>
                    <asp:ListItem Value="4"> 4 Sterne</asp:ListItem>
                    <asp:ListItem Value="5 "> 5 Sterne</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <br />
                    <label for="rblFahrstil">Wie war der Fahrstil?</label>
                <asp:RadioButtonList ID="rblFahrstil" runat="server" Height="31px" RepeatDirection="Horizontal" Width="409px">
                    <asp:ListItem Value="1 "> 1 Stern</asp:ListItem>
                    <asp:ListItem Value="2 "> 2 Sterne</asp:ListItem>
                    <asp:ListItem Value="3 "> 3 Sterne</asp:ListItem>
                    <asp:ListItem Value="4"> 4 Sterne</asp:ListItem>
                    <asp:ListItem Value="5 "> 5 Sterne</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <br />
                    <label for="rblSauberkeit">Wie sauber war das Auto?</label>
                <asp:RadioButtonList ID="rblSauberkeit" runat="server" Height="31px" RepeatDirection="Horizontal" Width="409px">
                    <asp:ListItem Value="1 "> 1 Stern</asp:ListItem>
                    <asp:ListItem Value="2 "> 2 Sterne</asp:ListItem>
                    <asp:ListItem Value="3 "> 3 Sterne</asp:ListItem>
                    <asp:ListItem Value="4"> 4 Sterne</asp:ListItem>
                    <asp:ListItem Value="5 "> 5 Sterne</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <br />
                    <label for="rblFreundlichkeit">War der Fahrer freundlich?</label>
                <asp:RadioButtonList ID="rblFreundlichkeit" runat="server" Height="31px" RepeatDirection="Horizontal" Width="409px">
                    <asp:ListItem Value="1 "> 1 Stern</asp:ListItem>
                    <asp:ListItem Value="2 "> 2 Sterne</asp:ListItem>
                    <asp:ListItem Value="3 "> 3 Sterne</asp:ListItem>
                    <asp:ListItem Value="4"> 4 Sterne</asp:ListItem>
                    <asp:ListItem Value="5 "> 5 Sterne</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <br />
                    <label for="rblPreis">War der Preis passend?</label>
                <asp:RadioButtonList ID="rblPreis" runat="server" Height="31px" RepeatDirection="Horizontal" Width="409px">
                    <asp:ListItem Value="1 "> 1 Stern</asp:ListItem>
                    <asp:ListItem Value="2 "> 2 Sterne</asp:ListItem>
                    <asp:ListItem Value="3 "> 3 Sterne</asp:ListItem>
                    <asp:ListItem Value="4"> 4 Sterne</asp:ListItem>
                    <asp:ListItem Value="5 "> 5 Sterne</asp:ListItem>
                </asp:RadioButtonList>
                <br />

                </div>

            </div>
            <div class="card-body">  
            <asp:Button ID="btnBewertungAbschicken" runat="server" type="submit" class="btn btn-dark text-center" OnClick="btnBewertungAbschicken_Click" Text="Bewertung abschicken" />
&nbsp;
            </div>

            <asp:Label ID="lblErg" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
