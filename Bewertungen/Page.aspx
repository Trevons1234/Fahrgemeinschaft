<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page.aspx.cs" Inherits="Bewertungen.Mainpage" %>

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
                <h1>Wählen Sie eine Option aus:</h1>
            </div>
        </div>

        <div class="card w-50 mx-auto">
            <div class="card-body text-center">
                <div class="form-group mb-1">

                    <asp:ImageButton ID="ibnFahrtAnlegen" runat="server" type="submit" ImageUrl="~/Screenshot 2022-11-28 095545v1.png" OnClick="ibnFahrtAnlegen_Click" Width = "400px"></asp:ImageButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ibnFahrtBuchen" runat="server" type="submit" ImageUrl="~/Screenshot 2022-11-28 095545v2.png" OnClick="ibnFahrtBuchen_Click" Width = "400px"></asp:ImageButton>

                </div>

            </div>
        </div>
    </form>
</body>
</html>
