<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeComList.aspx.cs" Inherits="EWTA_FinalProject.EmployeeComList" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">Personel İletişim Raporu</td>
            </tr>
            <tr>
                <td>
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <HeaderTemplate>
                            <tr style="background-color:lavender;">
                                <td>ID</td>
                                <td>İsim</td>
                                
                                <td>Cep</td>
                                <td>Email</td>
                                <td>Bölüm</td>
                                <td>Ünvan</td>
                            </tr>
                            <tr></tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr style="background-color:aqua;">
                                <td><%# Eval("Empl_ID") %></td>
                                <td><%# Eval("Empl_FName") %></td>
                                <td><%# Eval("Empl_Cell") %></td>
                                <td><%# Eval("Empl_Mail") %></td>
                                <td><%# Eval("Dept_Name") %></td>
                                <td><%# Eval("Title") %></td>
                            </tr>
                        </ItemTemplate>
                        <AlternatingItemTemplate>
                           <tr style="background-color:burlywood;">
                                <td><%# Eval("Empl_ID") %></td>
                                <td><%# Eval("Empl_FName") %></td>
                                <td><%# Eval("Empl_Cell") %></td>
                                <td><%# Eval("Empl_Mail") %></td>
                                <td><%# Eval("Dept_Name") %></td>
                                <td><%# Eval("Title") %></td>
                            </tr> 
                        </AlternatingItemTemplate>
                    </asp:Repeater>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EWTADb %>" SelectCommand="SELECT tbl_Employees.Empl_ID, tbl_Employees.Empl_FName, tbl_Employees.Empl_Cell, tbl_Employees.Empl_Mail, tbl_Lookups.LK_ID, tbl_Lookups.Title, tbl_Departments.Dept_Name FROM tbl_Employees INNER JOIN tbl_Departments ON tbl_Employees.Dept_ID = tbl_Departments.Dept_ID CROSS JOIN tbl_Lookups"></asp:SqlDataSource>
            <asp:Button ID="Button2" runat="server" OnClientClick="window.close(" PostBackUrl="~/Reports.aspx" Text="Raporu Kapat" />
&nbsp;</div>
    </form>
</body>
</html>
