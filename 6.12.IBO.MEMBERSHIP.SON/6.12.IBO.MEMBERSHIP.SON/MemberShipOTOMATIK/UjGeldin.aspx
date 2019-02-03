<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UjGeldin.aspx.cs" Inherits="_6._12.IBO.MEMBERSHIP.SON.Dosyalar.UjGeldin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table border="1">
           <tr >
               <td colspan="3" style="height:200px;  width:500px;">

               </td>
           </tr>
            <tr >
                <td style="height:100px; "></td>
                <td> <asp:LoginName ID="LoginName1" runat="server" /></td>
                <td> 
           
                    <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutPageUrl="~/MemberShipOTOMATIK/UjGeldin.aspx" />
    </td>
            </tr>
            <tr >
                <td colspan="3" style="height:600px;  width:500px;"></td>
               
            </tr>
            <tr>
                <td>
                    <asp:LoginView ID="LoginView1" runat="server">
                        <AnonymousTemplate> Hosgeldin yabanci</AnonymousTemplate>
                        <LoggedInTemplate>
                            hosgeldın yavrum <asp:LoginName ID="LoginName2" runat="server" />
                        </LoggedInTemplate>
                       <RoleGroups>
                           <asp:RoleGroup Roles="admin">
                               <ContentTemplate>
                                   BURANERE AMK
                               </ContentTemplate>
                           </asp:RoleGroup>
                       </RoleGroups>
                    </asp:LoginView>
                </td>
                <td></td>
            </tr>
        </table>
    </form>
</body>
</html>

