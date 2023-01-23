<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FahrtAnlegen.aspx.cs" Inherits="Bewertungen.Fahrt_anlegen" %>

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
                <h1>Fahrt Anlegen</h1>
            </div>
        </div>

        <div class="card w-50 mx-auto">
                <div class="card-body text-center">
                    <div class="form-group mb-1">

                        <div>
                            Strecke:
                            <asp:TextBox ID="txt_Strecke" runat="server" type="strecke" class="form-control"></asp:TextBox>
                            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txt_Strecke" EnableClientScript="False" ErrorMessage="Bitte alle größeren Ortschaften angeben" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                            <br />
                            Startzeit:
                            <asp:TextBox ID="txt_Startzeit" runat="server" type="startzeit" class="form-control"></asp:TextBox>
                            <asp:CustomValidator ID="cv_Startzeit" runat="server" ControlToValidate="txt_Startzeit" EnableClientScript="False" ErrorMessage="Bitte Zeit mit &quot;:&quot; getrennnt angeben" OnServerValidate="cv_Startzeit_ServerValidate"></asp:CustomValidator>
                            <br />
                            Ankunft:
                            <asp:TextBox ID="txt_Ankunft" runat="server" type="ankunft" class="form-control"></asp:TextBox>
                            <asp:CustomValidator ID="cv_Ankunftszeit" runat="server" ErrorMessage="Bitte Zeit mit &quot;:&quot; getrennt eingeben" OnServerValidate="cv_Ankunftszeit_ServerValidate"></asp:CustomValidator>
                            <br />
                            Preis:
                            <asp:TextBox ID="txt_Preis" runat="server" type="preis" class="form-control"></asp:TextBox>
                            <br />
                        </div>
                        <br />
                        <asp:Button ID="btn_FahrtAnlegen" runat="server" type="submit" class="btn btn-dark text-center" OnClick="btn_FahrtAnlegen_Click" Text="Fahrt anlegen" />
                        <br />
                        <asp:Label ID="lbl_info" runat="server" Text="Label"></asp:Label>
                     </div>
                </div>
            </div>       
    </form>
</body>
</html>
