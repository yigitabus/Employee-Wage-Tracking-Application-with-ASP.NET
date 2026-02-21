<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="EWTA_FinalProject.Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            height: 36px;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
    <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="6"><strong>EWTA REPORTS</strong></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="Bölümlere Göre Personel Listesi" PostBackUrl="~/EmployeeDeptListForm.aspx" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button4" runat="server" Text="Personele Göre Maaş Listesi" PostBackUrl="~/EmployeeWageList.aspx" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button2" runat="server" OnClientClick="target='_blank'" PostBackUrl="~/EmployeeWageGraph.aspx" Text="Personel Maaş Grafiği" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button5" runat="server" Text="İletişim Raporu" PostBackUrl="~/EmployeeComList.aspx" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button3" runat="server" Text="Button" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button6" runat="server" Text="Button" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
