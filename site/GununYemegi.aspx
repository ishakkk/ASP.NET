<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="site.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
    <ItemTemplate>
        <table class="auto-style4" style="height: 25px">
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label10" runat="server" style="font-size: x-large; font-weight: 700" Text='<%# Eval("YemekAd") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <span class="auto-style7"><strong>Malzemeler</strong></span> :<asp:Label ID="Label11" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td><strong><span class="auto-style7">Yapılışı</span></strong> :<asp:Label ID="Label12" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Image ID="Image1" runat="server" Height="160px" Width="418px" ImageUrl='<%# Eval("YemekResim") %>' />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style4">
                        <tr>
                            <td><strong><span class="auto-style7">Puan </span></strong>:<asp:Label ID="Label13" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                &nbsp; </td>
                            <td style="text-align: right">&nbsp;</td>
                        </tr>
                        <tr>
                            <td><strong><span class="auto-style7">Eklenme Tarihi </span></strong>:<asp:Label ID="Label14" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                            </td>
                            <td style="text-align: right">&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
