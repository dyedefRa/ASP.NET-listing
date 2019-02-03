<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="son._default" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <a href="sepetim.aspx">Sepete Git</a>
            <asp:DataList ID="dataa" runat="server" OnDeleteCommand="dataa_DeleteCommand" OnCancelCommand="dataa_CancelCommand" OnEditCommand="dataa_EditCommand" OnUpdateCommand="dataa_UpdateCommand" OnItemCommand="dataa_ItemCommand">
                <HeaderTemplate>
                    <table border="1">
                        <thead>
                            <th> Urun adı</th>
                              <th>Fiyati</th>
                             <th>Stok</th>
                             <th>Güncelle</th>
                             <th>Sil</th>
                        </thead>
                   
                </HeaderTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
                <ItemTemplate>
                    <tr style="color:maroon;">
                        <td> <%# Eval("ProductName") %>   </td>
                        <td> <%# Eval("UnitPrice") %>   </td>
                        <td>  <%# Eval("UnitsInStock") %>  </td>
                        <td> <asp:LinkButton  CommandName="Edit"  ID="LinkButton1" CommandArgument='<%# Eval("ProductId") %>' runat="server">Güncelle</asp:LinkButton>   </td>
                          <td> <asp:LinkButton CommandName="Delete" CommandArgument='<%# Eval("ProductId") %>' ID="LinkButton2" runat="server">Sil</asp:LinkButton>   </td>
                        <td> <asp:LinkButton Text="Sepete At" CommandName="SepeteAt" CommandArgument='<%# Eval("ProductId") %>' runat="server" /></td>

                    </tr>
                </ItemTemplate>
                <EditItemTemplate>

                    <tr>
                        <td> <asp:TextBox  Text='<%# Eval("ProductName") %>'  ID="txtPro" runat="server"></asp:TextBox></td>
                         <td> <asp:TextBox Text='<%# Eval("UnitPrice") %>' ID="txtFiyat" runat="server"></asp:TextBox></td>
                         <td> <asp:TextBox Text='<%# Eval("UnitsInStock") %>' ID="txtStok" runat="server"></asp:TextBox></td>
                        <td> <asp:LinkButton ID="LinkButton3" CommandArgument='<%#Eval("ProductId") %>' CommandName="Update" runat="server">Güncelle</asp:LinkButton></td>
                        <td> <asp:LinkButton ID="LinkButton4"  CommandName="Cancel" runat="server">Iptal</asp:LinkButton></td>
                    </tr>
                </EditItemTemplate>

            </asp:DataList>
        </div>
    </form>
</body>
</html>
