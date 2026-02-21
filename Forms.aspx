<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Forms.aspx.cs" Inherits="EWTA_FinalProject.Forms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            height: 29px;
        }
        .auto-style4 {
            height: 24px;
            width: 919px;
        }
        .auto-style3 {
            height: 24px;
        }
        .auto-style5 {
            width: 919px;
        }
    </style>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="2"><strong>PMPT FORMLARI</strong></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" Text="Personel Veri Giriş Formu" Width="356px" OnClientClick="target='_blank'" PostBackUrl="~/PersonelGirisForm.aspx" />
            </td>
            <td class="auto-style3">
                <asp:Button ID="Button4" runat="server" Text="Maaş Veri Giriş Formu" Width="217px" OnClientClick="target='_blank'" PostBackUrl="~/WageEntryForm.aspx" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Button ID="Button2" runat="server" Text="Personel Veri Güncelleme Formu" Width="361px" PostBackUrl="~/EmployeeUpdateData.aspx" />
            </td>
            <td>
                <asp:Button ID="Button5" runat="server" Text="Departman Data Entry and Update Form" Width="326px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Button ID="Button3" runat="server" Text="Wage Data Update Form" Width="360px" PostBackUrl="~/WageDataUpdate.aspx" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
