<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Ustad.Master" AutoEventWireup="true" CodeBehind="rolAta.aspx.cs" Inherits="DENEME_REGSQL.rolAta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="onNav" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="onAside" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="onMain" runat="server">
    <table>
        <tr>
            <td>Roller :</td>
            <td> <asp:DropDownList ID="drpRoller" runat="server"></asp:DropDownList></td>
        </tr>
        <tr>
            <td>Kullanıcılar :</td>
            <td>
                <asp:DropDownList ID="drpKullanicilar" runat="server"></asp:DropDownList></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSonuc" runat="server" Text=""></asp:Label>
            </td>
            <td>  <asp:Button ID="btnAta" Text="ATA" runat="server" Height="28px" OnClick="btnAta_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
