<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmployeeWageGraph.aspx.cs" Inherits="EWTA_FinalProject.EmployeeWageGraph" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td><strong>Personel Maaşları Grafik Raporu</strong></td>
            </tr>
            <tr>
                <td>
                    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Height="286px" Width="241px">
                        <series>
                            <asp:Series ChartArea="ChartArea1" Name="Series1" XValueMember="Personel" YValueMembers="Toplam" YValuesPerPoint="2">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClientClick="window.close()" PostBackUrl="~/Reports.aspx" Text="Raporu Kapat" />
                </td>
            </tr>
        </table>
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EWTADb %>" SelectCommand="SELECT tbl_Employees.Empl_FName AS Personel, tbl_EmployeeWages.Wage_Year AS Yıl, SUM(tbl_EmployeeWages.Wage_Total) AS Toplam FROM tbl_EmployeeWages INNER JOIN tbl_Employees ON tbl_EmployeeWages.Empl_ID = tbl_Employees.Empl_ID GROUP BY tbl_EmployeeWages.Wage_Year, tbl_Employees.Empl_FName"></asp:SqlDataSource>
    </form>
</body>
</html>
