<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Ustad.Master" AutoEventWireup="true" CodeBehind="RolOlustur.aspx.cs" Inherits="DENEME_REGSQL.RolOlustur" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="onNav" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="onAside" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="onMain" runat="server">
    <table>
        <tr>
            <td>Rol ekle</td>
            <td> <asp:TextBox ID="txtRolEkle" runat="server" /></td>
        </tr>
        <tr>
            <td></td>
            <td> <asp:Button ID="btnRolEkle" runat="server" Text="ekle" OnClick="btnRolEkle_Click" /></td>
        </tr>
    </table>
</asp:Content>
