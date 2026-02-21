using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EWTA_FinalProject
{
    public partial class WageEntryForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource3.InsertParameters["Empl_Id"].DefaultValue = DropDownList1.SelectedValue; 
            SqlDataSource3.InsertParameters["Wage_Paid_Date"].DefaultValue = TextBox1.Text; 
            SqlDataSource3.InsertParameters["Wage_Amount"].DefaultValue = TextBox2.Text; 
            SqlDataSource3.InsertParameters["Wage_Comm"].DefaultValue = TextBox3.Text; 
            SqlDataSource3.InsertParameters["Month_Id"].DefaultValue = DropDownList2.SelectedValue;

            int s = SqlDataSource3.Insert();

            if (s > 0)
            {
                Label1.Text = "Yeni Personel Maaş Verisi: <b>" + DropDownList1.SelectedItem + "</b><p>Başarılı Kaydedildi</p>";
                Label1.Visible = true;
            }
            else
            {
                Label1.Text = "Başarısız";
                Label1.Visible = true;
            }
        }
    }
}