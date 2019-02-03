<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxOrnek.aspx.cs" Inherits="son.Hepsi.Ajax.AjaxOrnek" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../jquery-3.2.1.js"></script>
    <script>
        $.ajax({
            url: "~/SaatYazdir.aspx",
            type: "GET",
            success: function (saat) {
                $("#saat").html(saat);
            },
            error: alert("Hata");
            }

        });

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="saat"></div>
        <div>
           
            <asp:Button ID="btnSekron" Text="Sek" runat="server" OnClick="btnSekron_Click" />
            <asp:Button ID="btnAsekron" Text="Asek" runat="server" OnClick="btnAsekron_Click" />
        </div>
    </form>
</body>
</html>
