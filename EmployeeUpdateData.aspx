<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeUpdateData.aspx.cs" Inherits="EWTA_FinalProject.EmployeeUpdateData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style4 {
            width: 262px;
        }
        .auto-style5 {
            width: 33px;
        }
        .auto-style6 {
            width: 262px;
            height: 25px;
        }
        .auto-style7 {
            width: 33px;
            height: 25px;
        }
        .auto-style8 {
            height: 25px;
        }
        .auto-style9 {
            width: 262px;
            height: 31px;
        }
        .auto-style10 {
            width: 33px;
            height: 31px;
        }
        .auto-style11 {
            height: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="3">Personel Veri Güncelleme Formu</td>
            </tr>
            <tr>
                <td class="auto-style6">Personel Seçiniz:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Empl_FName" DataValueField="Empl_ID" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="386px">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <Fields>
                            <asp:BoundField DataField="Empl_FName" HeaderText="Empl_FName" SortExpression="Empl_FName" />
                            <asp:BoundField DataField="Empl_LName" HeaderText="Empl_LName" SortExpression="Empl_LName" />
                            <asp:BoundField DataField="Empl_BDate" HeaderText="Empl_BDate" SortExpression="Empl_BDate" />
                            <asp:BoundField DataField="Empl_Start_Date" HeaderText="Empl_Start_Date" SortExpression="Empl_Start_Date" />
                            <asp:BoundField DataField="Empl_City" HeaderText="Empl_City" SortExpression="Empl_City" />
                            <asp:BoundField DataField="Empl_Cell" HeaderText="Empl_Cell" SortExpression="Empl_Cell" />
                            <asp:BoundField DataField="Empl_Mail" HeaderText="Empl_Mail" SortExpression="Empl_Mail" />
                            <asp:BoundField DataField="Gender_ID" HeaderText="Gender_ID" SortExpression="Gender_ID" />
                            <asp:BoundField DataField="Dept_ID" HeaderText="Dept_ID" SortExpression="Dept_ID" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                    </asp:DetailsView>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Formu Kapat" PostBackUrl="~/Forms.aspx" />
                </td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EWTADb %>" SelectCommand="SELECT [Empl_ID], [Empl_FName], [Empl_LName] FROM [tbl_Employees]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EWTADb %>" DeleteCommand="DELETE FROM tbl_Employees" SelectCommand="SELECT [Empl_FName], [Empl_LName], [Empl_BDate], [Empl_Start_Date], [Empl_City], [Empl_Cell], [Empl_Mail], [Gender_ID], [Dept_ID] FROM [tbl_Employees] WHERE ([Empl_ID] = @Empl_ID)" UpdateCommand="UPDATE tbl_Employees SET Empl_FName = @Empl_FName, Empl_LName = @Empl_LName, Empl_BDate = @Empl_BDate, Empl_Start_Date = @Empl_Start_Date, Empl_Left_Date = @Empl_Left_Date, Empl_City = @Empl_City, Empl_Cell = @Empl_Cell, Dept_ID = @Dept_ID, Gender_ID = @Gender_ID, Title_ID = @Title_ID, Empl_Mail = @Empl_Mail WHERE (Empl_ID = @Empl_ID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Empl_ID" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Empl_FName" />
                            <asp:Parameter Name="Empl_LName" />
                            <asp:Parameter Name="Empl_BDate" />
                            <asp:Parameter Name="Empl_Start_Date" />
                            <asp:Parameter Name="Empl_Left_Date" />
                            <asp:Parameter Name="Empl_City" />
                            <asp:Parameter Name="Empl_Cell" />
                            <asp:Parameter Name="Dept_ID" />
                            <asp:Parameter Name="Gender_ID" />
                            <asp:Parameter Name="Title_ID" />
                            <asp:Parameter Name="Empl_Mail" />
                            <asp:Parameter Name="Empl_ID" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
