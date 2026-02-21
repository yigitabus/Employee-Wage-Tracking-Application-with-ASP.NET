<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonelGirisForm.aspx.cs" Inherits="EWTA_FinalProject.PersonelGirisForm" MasterPageFile="" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 76%;
        }
        .auto-style2 {
            text-align: center;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
            width: 216px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
            width: 200px;
        }
        .auto-style8 {
            width: 200px;
        }
        .auto-style9 {
            width: 216px;
        }
        .auto-style10 {
            width: 200px;
            height: 24px;
        }
        .auto-style11 {
            width: 216px;
            height: 24px;
        }
        .auto-style12 {
            height: 24px;
        }
        .auto-style13 {
            width: 200px;
            height: 29px;
        }
        .auto-style14 {
            width: 216px;
            height: 29px;
        }
        .auto-style15 {
            height: 29px;
        }
        .auto-style16 {
            height: 26px;
            width: 194px;
        }
        .auto-style17 {
            width: 194px;
            height: 24px;
        }
        .auto-style18 {
            width: 194px;
        }
        .auto-style19 {
            width: 194px;
            height: 29px;
        }
        .auto-style20 {
            width: 200px;
            height: 28px;
        }
        .auto-style21 {
            width: 216px;
            height: 28px;
        }
        .auto-style22 {
            width: 194px;
            height: 28px;
        }
        .auto-style23 {
            height: 28px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="4"><strong>Personel Veri Giriş Formu</strong></td>
                </tr>
                <tr>
                    <td class="auto-style7">Adı</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style16">Soyadı</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Doğum Tarihi</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style17">Cinsiyet</td>
                    <td class="auto-style12">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="1">Erkek</asp:ListItem>
                            <asp:ListItem Value="2">Kadın</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Giriş Tarihi</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style16">Çıkış Tarihi</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">Cep Tel</td>
                    <td class="auto-style21">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style22">Email</td>
                    <td class="auto-style23">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Ünvan</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Title" DataValueField="LK_ID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style18">Bölümü</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Dept_Name" DataValueField="Dept_ID" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Adres</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style16">Aktif mi</td>
                    <td class="auto-style6">
                        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">İlçesi</td>
                    <td class="auto-style14">
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="City" DataValueField="City" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style19">İli</td>
                    <td class="auto-style15">
                        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4" DataTextField="Province" DataValueField="Province" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EWTADb %>" SelectCommand="SELECT [LK_ID], [Title] FROM [tbl_Lookups]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style9">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EWTADb %>" SelectCommand="SELECT [Dept_ID], [Dept_Name] FROM [tbl_Departments]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style18">
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:EWTADb %>" SelectCommand="SELECT [City] FROM [tbl_Lookups]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:EWTADb %>" SelectCommand="SELECT [Province] FROM [tbl_Lookups]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kaydet" />
                    </td>
                    <td class="auto-style9">
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:EWTADb %>" InsertCommand="INSERT INTO tbl_Employees(Empl_FName, Empl_LName, Empl_BDate, Empl_Start_Date, Empl_Left_Date, Empl_Address, Empl_City, Empl_Province, Empl_Phone, Gender_ID, Title_ID, Dept_ID, Empl_Cell, Empl_Mail, Is_Empl_Active) VALUES (@Empl_FName, @Empl_LName, @Empl_BDate, @Empl_Start_Date, @Empl_Left_Date, @Empl_Address, @Empl_City, @Empl_Province, @Empl_Phone, @Gender_ID, @Title_ID, @Dept_ID, @Empl_Cell, @Empl_Mail, @Is_Empl_Active)" SelectCommand="SELECT [Empl_FName], [Empl_LName], [Empl_BDate], [Empl_Start_Date], [Empl_Left_Date], [Empl_Address], [Empl_City], [Empl_Province], [Empl_Phone], [Empl_Cell], [Dept_ID], [Title_ID], [Gender_ID],[Empl_Mail],[Is_Empl_Active],[Empl_ID] FROM [tbl_Employees]" OnSelecting="SqlDataSource5_Selecting">
                            <InsertParameters>
                                
                                <asp:Parameter Name="Empl_FName" />
                                <asp:Parameter Name="Empl_LName" />
                                <asp:Parameter Name="Empl_BDate" />
                                <asp:Parameter Name="Empl_Start_Date" />
                                <asp:Parameter Name="Empl_Left_Date" />
                                <asp:Parameter Name="Empl_Address" />
                                <asp:Parameter Name="Empl_City" />
                                <asp:Parameter Name="Empl_Province" />
                                <asp:Parameter Name="Empl_Phone" />
                                <asp:Parameter Name="Gender_ID" />
                                <asp:Parameter Name="Title_ID" />
                                <asp:Parameter Name="Dept_ID" />
                                <asp:Parameter Name="Empl_Cell" />
                                <asp:Parameter Name="Empl_Mail" />
                                <asp:Parameter Name="Is_Empl_Active" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" OnClientClick="window.close()" Text="Formu Kapat" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:Label ID="Label1" runat="server" BackColor="#0066CC" BorderColor="Black" Font-Bold="True" Text="Label"></asp:Label>
    </form>
</body>
</html>
