<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Bewertungen.Login" %>

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
                <h1>Login</h1>
            </div>
        </div>

        <div class="card w-50 mx-auto">
            <div class="card-body">
                <div class="form-group mb-1">
                    <label for="txtEMail">E-Mail Adresse</label>
                    <asp:TextBox ID="txtEMail" runat="server" type="email" class="form-control" aria-describedby="emailHelp" placeholder="Email"></asp:TextBox>
                    <small id="emailHelp" class="form-text text-muted">
                        <asp:Label runat="server" ID="lblEMailInfo"></asp:Label>
                    </small>
                </div>
                <div class="form-group mb-1">
                    <label for="txtPassword">Passwort</label>
                    <asp:TextBox ID="txtPassword" runat="server" type="text" class="form-control" aria-describedby="passwordHelp" placeholder="Passwort"></asp:TextBox>
                    <small id="passwordHelp" class="form-text text-muted">
                        <asp:Label runat="server" ID="lblPasswordInfo"></asp:Label></small>
                </div>

                <asp:Button ID="btnLogin" runat="server" type="submit" class="btn btn-dark text-center" OnClick="btnLogin_Click" Text="Login"></asp:Button>
            </div>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </form>
</body>
</html>
