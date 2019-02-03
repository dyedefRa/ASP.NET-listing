<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RolAtama.aspx.cs" Inherits="_6._12.IBO.MEMBERSHIP.SON.RolAtama1" %>

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
                    <td>Kullanici:</td>
                    <td>
                        <asp:DropDownList   runat="server" ID="drpKullanicilar">
                           
                        </asp:DropDownList> </td>
                </tr>
                <tr>
                    <td>Rol:</td>
                    <td>
                        <asp:DropDownList ID="drpRoller" runat="server"></asp:DropDownList> </td>
                </tr>

                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnAta" runat="server" Text="Role Ata" OnClick="btnAta_Click" />

                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
