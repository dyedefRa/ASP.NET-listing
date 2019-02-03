<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RolEkleme.aspx.cs" Inherits="_6._12.IBO.MEMBERSHIP.SON.RolAtama" %>

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
                    <td>Rol Adi:</td>
                    <td>
                        <asp:TextBox ID="txtRol" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnRolekle" runat="server" Text="Button" OnClick="btnRolekle_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
