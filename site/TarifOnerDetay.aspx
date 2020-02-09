<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="site.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style8" designer:mapid="100">
        <tr designer:mapid="101">
            <td designer:mapid="102">&nbsp;</td>
            <td designer:mapid="103">&nbsp;</td>
        </tr>
        <tr designer:mapid="104">
            <td class="auto-style9" __designer:mapid="105">TARİF AD:</td>
            <td __designer:mapid="106">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="108">
            <td class="auto-style9" __designer:mapid="109">TARİF MALZEMELER:</td>
            <td __designer:mapid="10a">
                <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="10c">
            <td class="auto-style9" __designer:mapid="10d">YAPILIŞ:</td>
            <td __designer:mapid="10e">
                <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr designer:mapid="110">
            <td designer:mapid="111" class="auto-style9">TARİF RESİM :</td>
            <td designer:mapid="112">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
            </td>
        </tr>
        <tr designer:mapid="110">
            <td designer:mapid="111" class="auto-style9">TARİF ÖNEREN :</td>
            <td designer:mapid="112">
                <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr designer:mapid="110">
            <td designer:mapid="111" class="auto-style9">ÖNEREN MAİL :</td>
            <td designer:mapid="112">
                <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr designer:mapid="110">
            <td designer:mapid="111" class="auto-style9">KATEGORİ</td>
            <td designer:mapid="112">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr designer:mapid="110">
            <td designer:mapid="111">&nbsp;</td>
            <td designer:mapid="112">
                <asp:Button ID="Button1" runat="server"  style="font-size: large; font-weight: 700" Text="ONAYLA" Width="200px" OnClick="Button1_Click1"/>
            </td>
        </tr>
    </table>
</asp:Content>
