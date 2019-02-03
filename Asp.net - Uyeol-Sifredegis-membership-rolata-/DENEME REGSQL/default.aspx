<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Ustad.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="DENEME_REGSQL._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="onNav" runat="server">
      Hoşgeldin  <asp:LoginName ID="LoginName1" runat="server" /> <br />
    <asp:LoginStatus ID="LoginStatus1" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="onAside" runat="server">
 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="onMain" runat="server">
    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>
            Hoşgeldin izyaa
        </AnonymousTemplate>
        <LoggedInTemplate>
            hşgeldin  <asp:LoginName ID="LoginName2" runat="server" />
        </LoggedInTemplate>
        <RoleGroups>
            <asp:RoleGroup Roles="admin">
                <ContentTemplate>
                    <a href="~/admin.aspx">Panele Git reis</a>
                </ContentTemplate>
            </asp:RoleGroup>
            <asp:RoleGroup Roles="Uye">
                <ContentTemplate>
                    <a href="~/Uye.aspx">content</a>
                </ContentTemplate>
            </asp:RoleGroup>
        </RoleGroups>

    </asp:LoginView>

</asp:Content>
