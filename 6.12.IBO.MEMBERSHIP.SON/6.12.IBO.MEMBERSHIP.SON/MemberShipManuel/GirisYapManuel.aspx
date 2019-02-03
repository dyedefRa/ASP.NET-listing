<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GirisYapManuel.aspx.cs" Inherits="_6._12.IBO.MEMBERSHIP.SON.GirisYapManuel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table>
                <tr>
                    <td>KullanıcıAdi</td>
                    <td>
                        <asp:TextBox ID="txtKullaniciAdi" runat="server"></asp:TextBox> </td>
                </tr>
                 <tr>
                    <td>Parola</td>
                    <td>
                        <asp:TextBox ID="txtParola" TextMode="Password" runat="server"></asp:TextBox> </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnGiris" runat="server" Text="Giriş" OnClick="btnGiris_Click" /> </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
