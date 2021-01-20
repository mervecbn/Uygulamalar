<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kayitsil.aspx.cs" Inherits="Deneme.kayitsil" %>

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
            <table>
                <tr>
                    <td colspan="2" class="auto-style1">
                        <h2>Model Sil</h2>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" class="form-control" runat="server" Font-Bold="True" ForeColor="Black"></asp:Label></td>
                </tr>

                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="Button1" runat="server" class="btn btn-info"  Text="VAZGEÇ" OnClick="Button1_Click" Width="150px" BackColor="#99CCFF" Font-Bold="True" />


                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" class="btn btn-info"  Text="SİL" OnClick="Button2_Click" Width="150px" BackColor="Red" Font-Bold="True" />
                    </td>
                </tr>


            </table>
        </div>
    </form>
</body>
</html>
