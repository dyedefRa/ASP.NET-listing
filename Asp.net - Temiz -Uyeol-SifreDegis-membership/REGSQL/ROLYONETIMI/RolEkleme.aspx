<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Ustad.Master" AutoEventWireup="true" CodeBehind="RolEkleme.aspx.cs" Inherits="REGSQL.ROLYONETIMI.RolEkleme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="onNav" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="onAside" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="onMain" runat="server">
    <table>
        <tr>
            <td> Rol Adı:</td>
            <td> <asp:TextBox ID="txtRol" runat="server" /></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnRolEkle" runat="server" Text="Rol Ekle" OnClick="btnRolEkle_Click" /></td>
        </tr>
    </table>
</asp:Content>
