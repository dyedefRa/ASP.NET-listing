<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GirisYap.aspx.cs" Inherits="_6._12.IBO.MEMBERSHIP.SON.GirisYap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/MemberShipOTOMATIK/UjGeldin.aspx" PasswordRecoveryText="Parolamı unutum" PasswordRecoveryUrl="~/MemberShipOTOMATIK/ParolaSifirla.aspx" CreateUserText="Kullanıcı oluştur" CreateUserUrl="~/MemberShipOTOMATIK/KayitOl.aspx" HelpPageText="Yardim mi gerek?"></asp:Login>
        </div>
    </form>
</body>
</html>
