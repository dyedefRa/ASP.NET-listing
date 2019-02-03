<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Ustad.Master" AutoEventWireup="true" CodeBehind="PsswordChange.aspx.cs" Inherits="DENEME_REGSQL.PsswordChange" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="onNav" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="onAside" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="onMain" runat="server">
    <asp:ChangePassword ID="ChangePassword1" runat="server" CancelDestinationPageUrl="~/default.aspx" EditProfileUrl="~/default.aspx" PasswordRecoveryUrl="~/GirisYap.aspx" SuccessPageUrl="~/GirisYap.aspx"></asp:ChangePassword>
</asp:Content>
