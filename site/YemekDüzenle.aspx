<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDüzenle.aspx.cs" Inherits="site.YemekDüzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: right;
            font-size: large;
        }
        .auto-style10 {
            font-weight: bold;
            font-size: large;
            margin-left: 0px;
            background-color: #0099FF;
        }
        .auto-style11 {
            font-weight: bold;
            font-size: large;
            background-color: #CCCCCC;
        }
        .auto-style12 {
            text-align: right;
        }
        .auto-style13 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>YEMEK AD :</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="275px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>MALZEMELER :</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="275px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>TARİF :</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="275px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>KATEGORİ :</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="275px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong><span class="auto-style13">YEMEK GÖRÜNTÜ </span>:</strong></td>
            <td class="auto-style6">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="280px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Height="43px" Text="GÜNCELLE" Width="274px" OnClick="Button1_Click" />
                </strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6"><strong>
                <asp:Button ID="Button2" runat="server" BackColor="#CCCCCC" CssClass="auto-style11" Height="43px" OnClick="Button2_Click" Text="Günün Yemeği Seç" Width="274px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
