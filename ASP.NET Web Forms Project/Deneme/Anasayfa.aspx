<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="Deneme.Anasayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: Arial">
            <asp:HiddenField ID="HiddenField1" runat="server" />
            <table>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Galeri" runat="server" Text="CAR CENTER" Font-Bold="True" Font-Size="XX-Large"
                            Height="100px" Width="1200px" Style="text-align: center" Font-Italic="False" ForeColor="#000099"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="height: 50px">
                        <asp:Label ID="About" runat="server"  Text="2020 yılında hizmete geçen Car Center her marka,model ve yaşta alım satım hizmeti sunar."
                            ForeColor="Blue" Font-Bold="True"></asp:Label>
                    </td>

                    <td style="height: 50px">
                        <asp:Image ID="Image1" runat="server"  Height="150px" ImageUrl="~/images/logo.png" Width="550px" /></td>
                </tr>
                <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                    <HeaderTemplate>
                        <table border="1" style="width: 1200px" class="table">
                            <thead >
                                <th class="active">Marka</th>
                                <th class="active">Model</th>
                                <th class="active">Yıl</th>
                                <th class="active">Vites</th>
                                <th class="active">Plaka</th>
                                <th class="active">Düzenle</th>
                                <th class="active">Sil</th>
                            </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr class="warning">
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ModelAdı") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("MarkaAdı") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Yıl") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Vites") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Plaka") %>'></asp:Label></td>
                            
                       
                            <td>
                              
                                <asp:Button ID="Button1" runat="server" class="btn btn-info" Text="Düzenle" CommandArgument='<%# Eval("Id") %>' CommandName="Duzenle" BackColor="Orange" Font-Bold="True" /></td>
                            <td>
                                <asp:Button ID="Button2" runat="server" class="btn btn-danger" Text="Sil" CommandArgument='<%# Eval("Id") %>' CommandName="Sil" BackColor="Red" Font-Bold="True" /></td>
                               
                        </tr>

                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                         <asp:Button ID="Button3" runat="server" class="btn btn-info"  Text="Yeni Kayıt" Font-Bold="True" BackColor="#6666FF" />

                    </FooterTemplate>
                </asp:Repeater>

            </table>

        </div>

    </form>
</body>
</html>
