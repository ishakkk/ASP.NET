<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="site.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            background-color: #CCCCCC;
        }
        .auto-style9 {
            text-align: right;
        }
        .auto-style11 {
            width: 33px;
        }
        .auto-style12 {
            width: 314px;
        }
        .auto-style13 {
            text-align: right;
            width: 285px;
        }
        .auto-style14 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style15 {
            width: 35px;
        }
        .auto-style17 {
            width: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style8">
        <table class="auto-style7">
            <tr>
                <td class="auto-style17">
                    <strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                    </strong>
                </td>
                <td class="auto-style15">
                    <strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style14" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                    </strong>
                </td>
                <td>ONAYLANAN YORUMLAR</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList3" runat="server" Width="444px" OnSelectedIndexChanged="DataList3_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style13">
                            <asp:Image ID="Image6" runat="server" Height="30px" ImageUrl="~/ikonlar/delete.png" Width="37px" />
                        </td>
                        <td class="auto-style9">
                            <asp:Image ID="Image7" runat="server" Height="29px" ImageUrl="~/ikonlar/update.png" Width="34px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <asp:Panel ID="Panel4" runat="server" style="margin-top:15px;" CssClass="auto-style8">
            <table class="auto-style7">
                <tr>
                    <td class="auto-style11">
                        <strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style14" Height="30px" OnClick="Button3_Click" Text="+" Width="30px" />
                        </strong>
                    </td>
                    <td>
                        <strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style14" Height="30px" OnClick="Button4_Click" Text="-" Width="30px" />
                        </strong>
                    </td>
                    <td>ONAYLANMAYAN YORUMLAR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel5" runat="server">
            <asp:DataList ID="DataList5" runat="server" Width="445px">
                <ItemTemplate>
                    <table class="auto-style7">
                        <tr>
                            <td class="auto-style12">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style9">
                                <asp:Image ID="Image10" runat="server" Height="26px" ImageUrl="~/ikonlar/delete.png" Width="31px" />
                            </td>
                            <td class="auto-style9">
                              <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>">  <asp:Image ID="Image11" runat="server" Height="22px" ImageUrl="~/ikonlar/update.png" Width="25px" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
