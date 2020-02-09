<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="site.AnaSayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            font-size: x-large;
        }
        .auto-style10 {
            font-size: small;
        }
        .auto-style11 {
            font-size: small;
            color: #FFFFFF;
        }
        .auto-style12 {
            background-color: #CCCCCC;
        }
        .auto-style13 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style8">
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style9" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><span class="auto-style7">Malzemeler :</span><asp:Label ID="Label4" runat="server" CssClass="auto-style7" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><span class="auto-style7">Yemek Tarifi :</span><asp:Label ID="Label5" runat="server" CssClass="auto-style7" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13"><span class="auto-style10">Eklenme Tarihi :</span>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style11" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style10">Puan :</span><asp:Label ID="Label7" runat="server" CssClass="auto-style11" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
