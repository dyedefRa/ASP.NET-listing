<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="repeater.aspx.cs" Inherits="BU_SON.repeater" %>

<!DOCTYPE html>

<%--TABLO VERI CEKCEGIMIZ ICIN EF BAGLADIK.
    F7 BASIP ICERI GIR 
    REPEATER IN ID SINI ARKADA  YAKALADIM.
    EVAL FONK@@@@@--%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="rpt1" runat="server" OnItemDataBound="rpt1_ItemDataBound" OnItemCommand="rpt1_ItemCommand">
                <HeaderTemplate>
                    <table border="1" >
                        <thead style="background-color:cornflowerblue;">
                            <th> UrunAdı</th>
                            <th> Fiyati</th>
                        </thead>
                    
                </HeaderTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
               <ItemTemplate>
                   <tr id="satir" runat="server" style="background-color:antiquewhite;">
                       <td> <%# Eval("ProductName") %></td>
                       <td> <%# Eval("UnitPrice") %></td>
                       <td>
                           <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("ProductID")%>' CommandName="sil">Sil</asp:LinkButton></td>
                       <td>
                           <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("ProductID") %>' CommandName="duzenle">Duzenle</asp:LinkButton>
                       </td>
                   </tr>
               </ItemTemplate>
                <AlternatingItemTemplate>
                   <tr id="satir" runat="server"                      style="background-color:aquamarine;">
                       <td> <%# Eval("ProductName") %></td>
                       <td> <%# Eval("UnitPrice") %></td>
                       <td>
                           <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("ProductID")%>' CommandName="sil">Sil</asp:LinkButton></td>
                        <td>
                           <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("ProductID") %>' CommandName="duzenle">Duzenle</asp:LinkButton>
                       </td>
                   </tr>
                </AlternatingItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
