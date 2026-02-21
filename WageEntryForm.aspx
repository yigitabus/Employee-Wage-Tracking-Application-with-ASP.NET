<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WageEntryForm.aspx.cs" Inherits="EWTA_FinalProject.WageEntryForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-right: 0px;
        }
        .auto-style2 {
            height: 5px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            height: 25px;
        }
        .auto-style5 {
            height: 25px;
            width: 211px;
        }
        .auto-style6 {
            width: 211px;
        }
        .auto-style7 {
            height: 5px;
            width: 211px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" colspan="2">Maaş Veri Giriş Formu</td>
            </tr>
            <tr>
                <td class="auto-style5">Personel Adı:</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Empl_FName" DataValueField="Empl_ID" Width="146px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Ödeme Tarihi:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Ödeme Tutarı:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Komisyon Tutarı:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Ay Adı:</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Month" DataValueField="LK_ID" Width="119px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EWTADb %>" SelectCommand="SELECT [LK_ID], [Month] FROM [tbl_Lookups]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EWTADb %>" SelectCommand="SELECT [Empl_ID], [Empl_FName] FROM [tbl_Employees]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kaydet" />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClientClick="window.close()" PostBackUrl="~/Forms.aspx" Text="Formu Kapat" />
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:EWTADb %>" InsertCommand="INSERT INTO tbl_EmployeeWages(Empl_ID, Wage_Paid_Date, Wage_Amount, Wage_Comm, Month_ID) VALUES (@Empl_ID, @Wage_Paid_Date, @Wage_Amount, @Wage_Comm, @Month_ID)" SelectCommand="SELECT [Empl_ID], [Wage_Paid_Date], [Wage_Amount], [Wage_Comm], [Month_ID] FROM [tbl_EmployeeWages]">
                        <InsertParameters>
                            <asp:Parameter Name="Empl_ID" />
                            <asp:Parameter Name="Wage_Paid_Date" />
                            <asp:Parameter Name="Wage_Amount" />
                            <asp:Parameter Name="Wage_Comm" />
                            <asp:Parameter Name="Month_ID" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
