<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Ustad.Master" AutoEventWireup="true" CodeBehind="rolatama.aspx.cs" Inherits="REGSQL.ROLYONETIMI.rolatama" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="onNav" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="onAside" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="onMain" runat="server">
    <table>
        <tr>
            <td>Kullanıcı :</td>
            <td>
                <asp:DropDownList ID="drpKullanicilar" runat="server"></asp:DropDownList></td>
        </tr>
        <tr>
        <td>Roller :</td>
            <td>
                <asp:DropDownList ID="drpRoller" runat="server"></asp:DropDownList></td>
        </tr>
        <tr>
            <td></td>
            <td> <asp:Button ID="btnATA" Text="ATA" runat="server" OnClick="btnATA_Click" /></td>
        </tr>
    </table>
</asp:Content>
