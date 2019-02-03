<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="gridview_calısmam.WebForm1" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView AutoGenerateColumns="false" ID="ggg" runat="server" DataKeyNames="KitapNo" OnRowCancelingEdit="ggg_RowCancelingEdit" OnRowDeleting="ggg_RowDeleting" OnRowEditing="ggg_RowEditing" OnRowUpdating="ggg_RowUpdating">
                <Columns>
                    <asp:BoundField HeaderText="KitapAdi" DataField="KitapAd" ControlStyle-BorderColor="Yellow" />
                    <asp:BoundField HeaderText="Yazari" DataField="KitapYazar" />
                    <asp:BoundField HeaderText="SayfaSayisi" DataField="KitapSayfa" />
                    <asp:BoundField HeaderText="Fiyati" DataField="KitapFiyat" />
                    <asp:CommandField ShowDeleteButton="true" DeleteText="sill"   ShowEditButton="true" EditText="DüzenleYavrum" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
