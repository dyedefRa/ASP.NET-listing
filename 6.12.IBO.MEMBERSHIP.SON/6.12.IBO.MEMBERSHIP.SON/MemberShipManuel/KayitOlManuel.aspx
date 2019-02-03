<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KayitOlManuel.aspx.cs" Inherits="_6._12.IBO.MEMBERSHIP.SON.KayitOlManuel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 132%;
        }
        .auto-style4 {
            width: 92%;
        }
        .auto-style6 {
            width: 547px;
            height: 306px;
        }
        .auto-style7 {
            margin-left: 8px;
        }
        .auto-style9 {
            width: 524px;
            height: 302px;
            margin-right: 112px;
        }
        .auto-style10 {
            width: 21px;
            height: 56px;
        }
        .auto-style11 {
            height: 56px;
        }
        .auto-style12 {
            width: 132%;
            height: 31px;
        }
        .auto-style13 {
            height: 31px;
            width: 24px;
        }
        .auto-style14 {
            width: 92%;
            height: 31px;
        }
        .auto-style15 {
            width: 132%;
            height: 27px;
        }
        .auto-style16 {
            height: 27px;
            width: 24px;
        }
        .auto-style17 {
            width: 92%;
            height: 27px;
        }
        .auto-style18 {
            width: 103%;
            height: 31px;
        }
        .auto-style19 {
            width: 24px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style9" >
            <table  border="1" class="auto-style6">
                <tr >
                    <td class="auto-style1">k Adi</td>
                    <td colspan="2" class="auto-style19">
                        <asp:TextBox ID="txtKullaniciAdi" runat="server" Width="207px" minRequired="8"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtKullaniciAdi" ErrorMessage="Kullaınıcı adi boş geçilemez">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style1"> Parola</td>
                    <td colspan="2" class="auto-style19">
                        <asp:TextBox ID="txtParola" runat="server" Width="207px" TextMode="Password"></asp:TextBox>
                     </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtParola" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style15">Parola tekrar</td>
                    <td colspan="2" class="auto-style16">
                        <asp:TextBox ID="txtParola2" runat="server" Width="210px" TextMode="Password"></asp:TextBox>
                     </td>
                    <td class="auto-style17">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtParola2" ErrorMessage="Parola boş geçilemez">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtParola2" ControlToValidate="txtParola" ErrorMessage="Parolalar uyuşmad,">*-*</asp:CompareValidator>
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style12"> E mail</td>
                    <td colspan="2" class="auto-style13">
                        <asp:TextBox ID="txtEmail" runat="server" Width="354px"></asp:TextBox>
                     </td>
                    <td class="auto-style18">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email boş geçilemez">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email için uyumsuz giriş yapıldı." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style1">Gizli soru:</td>
                    <td colspan="2" class="auto-style19">
                        <asp:TextBox ID="txtGS" runat="server" Width="207px"></asp:TextBox>
                     </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtGS" ErrorMessage="Gizli soru boş geçilemez">*</asp:RequiredFieldValidator>
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style12">Gizli cevap:</td>
                    <td colspan="2" class="auto-style13">
                        <asp:TextBox ID="txtGC" runat="server" Width="205px"></asp:TextBox>
                     </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtGC" ErrorMessage="Gizli cevap boş geçilemez">*</asp:RequiredFieldValidator>
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style10" colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="50px" Width="255px" />
                     </td>
                    <td class="auto-style11" colspan="2"></td>
                </tr>
                 <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td colspan="2" class="auto-style19">
                        <asp:Button ID="btnKaydet" runat="server" Text="KAYIT YAP" CssClass="auto-style7" Width="101px" OnClick="btnKaydet_Click" />
                     </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
            </table>
        </div>
     
    </form>
</body>
</html>
