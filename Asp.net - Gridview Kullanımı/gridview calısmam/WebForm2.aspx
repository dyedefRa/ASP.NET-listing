<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="gridview_calısmam.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView DataKeyNames="KitapNo" ID="gg" AutoGenerateColumns="false" runat="server" OnRowCancelingEdit="gg_RowCancelingEdit" OnRowDeleting="gg_RowDeleting" OnRowEditing="gg_RowEditing" OnRowUpdating="gg_RowUpdating">
                <Columns>
                   
                    <asp:TemplateField HeaderText="KITAPAD">
                        <ItemTemplate  >
                            <%# Eval("KitapAd") %>
                        </ItemTemplate>

                        <EditItemTemplate>
                            <asp:TextBox  Text='<%# Eval("KitapAd") %>'  ID ="txtAd"   runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        
                    </asp:TemplateField >

                    <asp:TemplateField HeaderText="YAZAR">
                        <ItemTemplate>
                            <%# Eval("KitapYazar") %>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox Text='<%# Eval("KitapYazar") %>' ID="txtYazar" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="SAYFA">
                        <ItemTemplate>
                            <%# Eval("KitapSayfa") %>
                        </ItemTemplate>
                      <EditItemTemplate>
                          <asp:TextBox Text='<%# Eval("KitapSayfa") %>' ID="txtSayfa" runat="server"></asp:TextBox>
                      </EditItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField>
                       <ItemTemplate>
                            <asp:LinkButton CommandName="Edit"  runat="server">EDIT</asp:LinkButton>
                       </ItemTemplate>
                        <EditItemTemplate>
                            <asp:LinkButton CommandName="Update"  ID="LinkButton1" runat="server">GUNCELLE</asp:LinkButton>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton CommandName="Delete" runat="server">SIL</asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:LinkButton CommandName="Cancel" ID="LinkButton2" runat="server">IPTAL</asp:LinkButton>
                        </EditItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
