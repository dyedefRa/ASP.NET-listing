<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Ustad.Master" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="REGSQL.MANUEL.giris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="onNav" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="onAside" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="onMain" runat="server">
    <table>
        <tr>
            <td> Kullanici Adi :</td>
            <td>
                
                <asp:TextBox ID="txtKullaniciAdi" runat="server"></asp:TextBox>
                
            </td>
        </tr>
         <tr>
            <td>Şifre : </td>
             <td>
                 <asp:TextBox ID="txtSifre" runat="server"></asp:TextBox>
             </td>
        </tr>
         <tr>
            <td></td>
             <td>
                 <asp:button ID="btnGiris" runat="server" text="Giriş" OnClick="btnGiris_Click" />
             </td>
        </tr>
    </table>
</asp:Content>
