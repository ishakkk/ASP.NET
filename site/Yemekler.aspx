<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="site.Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            background-color: #CCCCCC;
        }
        .auto-style9 {
            width: 331px;
        }
        .auto-style10 {
            width: 32px;
        }
        .auto-style12 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style13 {
            width: 69px;
        }
        .auto-style14 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style15 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style8">
        <table class="auto-style7">
            <tr>
                <td class="auto-style10"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style14" Height="30px"  Text="+" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style14" Height="30px"  Text="-" Width="30px" OnClick="Button3_Click"  />
                    </strong></td>
                <td>YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="447px" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td>
                          <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid")%>&islem=sil">  <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/ikonlar/delete.png" Width="30px" /></a>
                        </td>
                        <td>
                      <a href="YemekDüzenle.aspx?Yemekid=<%#Eval("Yemekid")%>"> <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/ikonlar/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" style="background-color:#CCCCCC;margin-top:15px" CssClass="auto-style8">
        <table class="auto-style7">
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="Button7" runat="server" CssClass="auto-style14" Height="30px"  Text="+" Width="30px" OnClick="Button7_Click"/>
                </td>
                <td class="auto-style13">
                    <asp:Button ID="Button8" runat="server" CssClass="auto-style14" Height="30px"  Text="-" Width="30px" OnClick="Button8_Click" />
                </td>
                <td>YEMEK&nbsp; EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style7">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>YEMEK&nbsp; AD :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>MALZEMELER :</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="300px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>YEMEK TARİFİ</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="300px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ :</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button6" runat="server" CssClass="auto-style12" Height="30px" OnClick="Button6_Click1" Text="EKLE" Width="100px" />
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
