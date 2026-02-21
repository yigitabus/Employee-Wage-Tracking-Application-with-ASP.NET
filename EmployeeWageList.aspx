<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeWageList.aspx.cs" Inherits="EWTA_FinalProject.EmployeeWageList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Çalışana Göre Maaş Raporu</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
            text-align: center;
        }
        .auto-style3 {
            width: 576px;
        }
        .auto-style4 {
            width: 576px;
            height: 25px;
        }
        .auto-style5 {
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>Çalışana Göre Maaş Raporu</strong></td>
            </tr>
            <tr>
                <td class="auto-style4">Çalışan Seçiniz:</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Empl_FName" DataValueField="Empl_ID" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Wage_ID" DataSourceID="SqlDataSource2" Width="424px">
                        <Columns>
                            <asp:BoundField DataField="Wage_ID" HeaderText="Wage_ID" InsertVisible="False" ReadOnly="True" SortExpression="Wage_ID" />
                            <asp:BoundField DataField="Wage_Amount" HeaderText="Wage_Amount" SortExpression="Wage_Amount" />
                            <asp:BoundField DataField="Wage_Paid_Date" HeaderText="Wage_Paid_Date" SortExpression="Wage_Paid_Date" />
                            <asp:BoundField DataField="Wage_Comm" HeaderText="Wage_Comm" SortExpression="Wage_Comm" />
                            <asp:BoundField DataField="Wage_Total" HeaderText="Wage_Total" ReadOnly="True" SortExpression="Wage_Total" />
                            <asp:BoundField DataField="Wage_Year" HeaderText="Wage_Year" ReadOnly="True" SortExpression="Wage_Year" />
                            <asp:BoundField DataField="Month" HeaderText="Month" SortExpression="Month" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource 
                        ID="SqlDataSource2" 
                        runat="server" 
                        ConnectionString="<%$ ConnectionStrings:EWTADb %>" 
                        SelectCommand="SELECT tbl_EmployeeWages.Wage_ID, tbl_EmployeeWages.Wage_Amount, tbl_EmployeeWages.Wage_Paid_Date, tbl_EmployeeWages.Wage_Comm, tbl_EmployeeWages.Wage_Total, tbl_EmployeeWages.Wage_Year, tbl_Lookups.Month FROM tbl_EmployeeWages INNER JOIN tbl_Lookups ON tbl_EmployeeWages.Month_ID = tbl_Lookups.LK_ID WHERE tbl_EmployeeWages.Empl_ID = @Empl_ID">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Empl_ID" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource 
                        ID="SqlDataSource1" 
                        runat="server" 
                        ConnectionString="<%$ ConnectionStrings:EWTADb %>" 
                        SelectCommand="SELECT [Empl_FName], [Empl_ID] FROM [tbl_Employees]">
                    </asp:SqlDataSource>
                    <asp:Button ID="Button1" runat="server" PostBackUrl="~/Reports.aspx" Text="Formu Kapat" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
