<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kayitdüzenle.aspx.cs" Inherits="Deneme.kayitdüzenle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID="HiddenField1" runat="server" />
            <table style="border: 1px solid black">
                <tr>
                    <td colspan="2">
                        <h2>Model Güncelle</h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Modelin Adı:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtModel" class="form-control" runat="server" Width="200px"> </asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <b>Marka Adı:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMarka" class="form-control" runat="server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <b>Yıl:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtYıl" class="form-control" runat="server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <b>Vites:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtVites" class="form-control" runat="server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <b>Plaka:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPlaka" class="form-control" runat="server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" class="btn btn-info" OnClick="Kaydet" Text="KAYDET" Width="200" Style="background-color: aqua" Font-Bold="True" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
