<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="site.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            height: 23px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Tarif Ad :</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="TxtTarifAd" runat="server" OnTextChanged="TextBox1_TextChanged" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Malzemeler :</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" OnTextChanged="TextBox1_TextChanged" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Yapılış :</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="TxtYapilis" runat="server" Height="250px" OnTextChanged="TextBox1_TextChanged" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Resim :</strong></td>
            <td class="auto-style8">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Tarif Öneren :</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="TxtTarifOneren" runat="server" OnTextChanged="TextBox1_TextChanged" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Mail Adresi :</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="TxtMailAdresi" runat="server" OnTextChanged="TextBox1_TextChanged" TextMode="Email" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">
                <asp:Button ID="BtnTarifOner" runat="server" BackColor="#FFFFCC" style="font-weight: 700; font-style: italic; margin-left: 50px;" Text="Tarif Öner" Width="150px" Height="40px" OnClick="BtnTarifOner_Click" CssClass="fb8" />
            </td>
        </tr>
    </table>
</asp:Content>
