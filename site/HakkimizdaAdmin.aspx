<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="site.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            background-color: #CCCCCC;
        }
        .auto-style9 {
            width: 32px;
        }
        .auto-style10 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style13 {
            width: 30px;
        }
        .auto-style14 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style8">
        <table class="auto-style7">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style13"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style10" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                    </strong></td>
                <td>HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:TextBox ID="TextBox1" runat="server" Height="300px" TextMode="MultiLine" Width="440px"></asp:TextBox>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <asp:Button ID="Button3" runat="server" CssClass="auto-style10" Height="34px" OnClick="Button3_Click" Text="GÜNCELLE" Width="260px" />
    </asp:Panel>
</asp:Content>
