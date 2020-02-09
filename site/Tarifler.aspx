<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="site.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 31px;
        }
        .auto-style9 {
            background-color: #CCCCCC;
        }
        .auto-style18 {
        text-align: right;
    }
        .auto-style19 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style20 {
            font-size: large;
        }
        .auto-style21 {
            width: 30px;
        }
        .auto-style22 {
            width: 33px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style9">
        <table class="auto-style7">
            <tr>
                <td class="auto-style8">
                    <strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style19" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                    </strong>
                </td>
                <td class="auto-style8">
                    <strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style19" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong>
                </td>
                <td>ONAYSIZ TARİFLER LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2"  runat="server">
        <asp:DataList ID="DataList3" runat="server" style="margin-top:20px" Width="444px" OnSelectedIndexChanged="DataList3_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style18">
                          <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid")%>">  <asp:Image ID="Image7" runat="server" Height="29px" ImageUrl="~/ikonlar/read.png" Width="34px" /></a>
                           </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style9">
        <table class="auto-style7">
            <tr>
                <td class="auto-style21">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style20" Height="30px" OnClick="Button3_Click" Text="+" Width="30px" />
                </td>
                <td class="auto-style22">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style20" Height="30px" OnClick="Button4_Click" Text="-" Width="30px" />
                </td>
                <td>ONAYLI TARİFLER LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList4" runat="server" Width="444px" OnSelectedIndexChanged="DataList4_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style18">
                        <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid")%>">    <asp:Image ID="Image8" runat="server" Height="29px" ImageUrl="~/ikonlar/read.png" Width="34px" /></a>
                            </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
