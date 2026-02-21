<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDeptListForm.aspx.cs" Inherits="EWTA_FinalProject.EmployeeDeptListForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 479px;
        }
    </style>
</head>
<body>
   <form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td colspan="2">Bölümlere Göre Çalışan Formu</td>
        </tr>
        <tr>
            <td class="auto-style2">Bölüm Adı Seçiniz:</td>
            <td>
                <asp:DropDownList 
                    ID="DropDownList1" 
                    runat="server" 
                    DataSourceID="SqlDataSource1" 
                    DataTextField="Dept_Name" 
                    DataValueField="Dept_ID" 
                    AutoPostBack="True">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:GridView 
                    ID="GridView1" 
                    runat="server" 
                    AllowSorting="True" 
                    AutoGenerateColumns="False" 
                    DataKeyNames="Empl_ID" 
                    DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="Empl_ID" HeaderText="Empl_ID" InsertVisible="False" ReadOnly="True" SortExpression="Empl_ID" />
                        <asp:BoundField DataField="Empl_FName" HeaderText="Empl_FName" SortExpression="Empl_FName" />
                        <asp:BoundField DataField="Empl_Cell" HeaderText="Empl_Cell" SortExpression="Empl_Cell" />
                        <asp:BoundField DataField="Empl_Mail" HeaderText="Empl_Mail" SortExpression="Empl_Mail" />
                        <asp:BoundField DataField="Dept_ID" HeaderText="Dept_ID" SortExpression="Dept_ID" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:SqlDataSource 
                    ID="SqlDataSource1" 
                    runat="server" 
                    ConnectionString="<%$ ConnectionStrings:EWTADb %>" 
                    SelectCommand="SELECT [Dept_ID], [Dept_Name] FROM [tbl_Departments]">
                </asp:SqlDataSource>
                <asp:SqlDataSource 
                    ID="SqlDataSource2" 
                    runat="server" 
                    ConnectionString="<%$ ConnectionStrings:EWTADb %>" 
                    SelectCommand="SELECT [Empl_ID], [Empl_FName], [Empl_Cell], [Empl_Mail], [Dept_ID] FROM [tbl_Employees] WHERE [Dept_ID] = @Dept_ID">
                    <SelectParameters>
                        <asp:ControlParameter 
                            Name="Dept_ID" 
                            ControlID="DropDownList1" 
                            PropertyName="SelectedValue" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</form>

</body>
</html>
