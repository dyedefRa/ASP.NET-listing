<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Ustad.Master" AutoEventWireup="true" CodeBehind="kayitOl.aspx.cs" Inherits="REGSQL.MANUEL.kayitOl"   %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="onNav" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="onAside" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="onMain" runat="server">
    <table border="1">
        <tr>
            <td>Kullanici Adi</td>
            <td>
                <asp:TextBox ID="txtKullaniciAdi" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Kullanici Adi boş geçilemez.." ControlToValidate="txtKullaniciAdi">*</asp:RequiredFieldValidator>
            </td>
            
        </tr>
         <tr>
            <td>Parola :</td>
            <td>
                <asp:TextBox ID="txtParola" runat="server" TextMode="Password"></asp:TextBox>
             </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Parola boş geçilemez.." ControlToValidate="txtParola">*</asp:RequiredFieldValidator>
             </td>
          
        </tr>
         <tr>
            <td>Parola Tekrarı:</td>
            <td>
                <asp:TextBox ID="txtParola2" runat="server" TextMode="Password"></asp:TextBox>
             </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Parola Tekrari boş geçilemez." ControlToValidate="txtParola2">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Parolalar uyuşmalı" ControlToCompare="txtParola" ControlToValidate="txtParola2">$</asp:CompareValidator>
             </td>
          
        </tr>
        <tr>
            <td>Mail:</td>
            <td>
                <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Mail boş geçilemez.." ControlToValidate="txtMail">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Mail formatına uygun değil" ControlToValidate="txtMail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">#</asp:RegularExpressionValidator>
            </td>
          
        </tr>
        <tr>
            <td>Gizli Soru:</td>
            <td>
                <asp:TextBox ID="txtGS" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Gizli soru boş geçilemez.." ControlToValidate="txtGS">*</asp:RequiredFieldValidator>
            </td>
          
        </tr>
        <tr>
            <td>Gizli Cevap:</td>
            <td>
                <asp:TextBox ID="txtGC" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Gizli cevap boş geçilemez.." ControlToValidate="txtGC">*</asp:RequiredFieldValidator>
            </td>
          
        </tr>
        <tr>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
            <td colspan="2"> <asp:Button ID="btnKaydol" Text="Kaydol" runat="server" Width="98px" OnClick="btnKaydol_Click" /></td>
           
        </tr>
    </table>
    
</asp:Content>
