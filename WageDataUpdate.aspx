<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WageDataUpdate.aspx.cs" Inherits="EWTA_FinalProject.WageDataUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 25px;
            width: 1046px;
        }
        .auto-style4 {
            height: 25px;
            width: 818px;
        }
        .auto-style6 {
            height: 3px;
            text-align: center;
        }
        .auto-style11 {
            height: 25px;
            width: 585px;
        }
        .auto-style15 {
            height: 32px;
            width: 818px;
        }
        .auto-style16 {
            height: 32px;
            width: 585px;
        }
        .auto-style17 {
            height: 32px;
            width: 1046px;
        }
        .auto-style18 {
            height: 26px;
            width: 818px;
        }
        .auto-style19 {
            height: 26px;
            width: 585px;
        }
        .auto-style20 {
            height: 26px;
            width: 1046px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6" colspan="5">Update Employee Wages</td>
                </tr>
                <tr>
                    <td class="auto-style4">Choose An Employee:</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Empl_FName" DataValueField="Empl_ID">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style4"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoPostBack="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Wage_ID" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="296px">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                            <EditRowStyle BackColor="#999999" />
                            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                            <Fields>
                                <asp:BoundField DataField="Wage_Paid_Date" HeaderText="Wage_Paid_Date" SortExpression="Wage_Paid_Date" />
                                <asp:BoundField DataField="Wage_Amount" HeaderText="Wage_Amount" SortExpression="Wage_Amount" />
                                <asp:BoundField DataField="Wage_Comm" HeaderText="Wage_Comm" SortExpression="Wage_Comm" />
                                <asp:BoundField DataField="Month_ID" HeaderText="Month_ID" SortExpression="Month_ID" />
                                <asp:BoundField DataField="Wage_ID" HeaderText="Wage_ID" InsertVisible="False" ReadOnly="True" SortExpression="Wage_ID" />
                                <asp:CommandField ShowEditButton="True" />
                                <asp:BoundField DataField="Wage_Paid_Date" SortExpression="Wage_Paid_Date" />
                            </Fields>
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        </asp:DetailsView>
                    </td>
                    <td class="auto-style15"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style17"></td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EWTADb %>" SelectCommand="SELECT [Empl_ID], [Empl_FName] FROM [tbl_Employees]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EWTADb %>" SelectCommand="SELECT [Empl_ID], [Wage_ID], [Month_ID], [Wage_Comm], [Wage_Amount], [Wage_Paid_Date] FROM [tbl_EmployeeWages] WHERE ([Empl_ID] = @Empl_ID)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Empl_ID" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:EWTADb %>" OnSelecting="SqlDataSource3_Selecting" SelectCommand="SELECT Wage_Paid_Date, Wage_Amount, Wage_Comm, Month_ID, Wage_ID FROM tbl_EmployeeWages" UpdateCommand="UPDATE    tbl_EmployeeWages
SET             Wage_Paid_Date = @Wage_Paid_Date, Wage_Amount = @Wage_Amount, Wage_Comm = @Wage_Comm, Month_ID = @Month_ID
WHERE     (Wage_ID = @Wage_ID)">
                            <UpdateParameters>
                                <asp:Parameter Name="Wage_Paid_Date" Type="DateTime" />
    <asp:Parameter Name="Wage_Amount" Type="Decimal" />
    <asp:Parameter Name="Wage_Comm" Type="Decimal" />
    <asp:Parameter Name="Month_ID" Type="Int32" />
    <asp:Parameter Name="Wage_ID" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style18"></td>
                    <td class="auto-style18"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style20"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
