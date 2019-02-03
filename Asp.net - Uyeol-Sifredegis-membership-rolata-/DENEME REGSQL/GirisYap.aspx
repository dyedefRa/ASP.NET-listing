<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Ustad.Master" AutoEventWireup="true" CodeBehind="GirisYap.aspx.cs" Inherits="DENEME_REGSQL.GirisYap1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="onNav" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="onAside" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="onMain" runat="server">
    <asp:Login ID="Login1" runat="server" CreateUserText="Kaydol" CreateUserUrl="~/Kaydol.aspx" DestinationPageUrl="~/default.aspx" PasswordRecoveryText="Parola değiş" PasswordRecoveryUrl="~/ParolaYenile.aspx"></asp:Login>
</asp:Content>
