<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Ustad.Master" AutoEventWireup="true" CodeBehind="GirisYap.aspx.cs" Inherits="REGSQL._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="onNav" runat="server">
     GIRIS YAP 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="onAside" runat="server">
    <asp:Login ID="Login1" runat="server" CreateUserUrl="~/KayitOl.aspx" DestinationPageUrl="~/default.aspx" CreateUserText="Kaydol" PasswordRecoveryText="Şifremi unuttum" PasswordRecoveryUrl="~/ParolaRec.aspx"></asp:Login>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="onMain" runat="server">
    ZIYARETCI
</asp:Content>
