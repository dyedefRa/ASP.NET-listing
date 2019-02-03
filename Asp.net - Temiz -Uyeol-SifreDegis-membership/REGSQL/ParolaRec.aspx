<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Ustad.Master" AutoEventWireup="true" CodeBehind="ParolaRec.aspx.cs" Inherits="REGSQL.ParolaDegistir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="onNav" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="onAside" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="onMain" runat="server">
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" SuccessPageUrl="~/GirisYap.aspx"></asp:PasswordRecovery>
</asp:Content>
