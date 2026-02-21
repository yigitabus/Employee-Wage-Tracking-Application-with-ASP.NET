using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EWTA_FinalProject
{
    public partial class PersonelGirisForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource5.InsertParameters["Empl_FName"].DefaultValue = TextBox1.Text;
            SqlDataSource5.InsertParameters["Empl_LName"].DefaultValue = TextBox2.Text;
            SqlDataSource5.InsertParameters["Gender_ID"].DefaultValue = RadioButtonList1.SelectedValue;
            SqlDataSource5.InsertParameters["Title_ID"].DefaultValue = DropDownList1.SelectedValue;
            SqlDataSource5.InsertParameters["Dept_ID"].DefaultValue = DropDownList2.SelectedValue;
            SqlDataSource5.InsertParameters["Empl_BDate"].DefaultValue = TextBox3.Text;
            SqlDataSource5.InsertParameters["Empl_Start_Date"].DefaultValue = TextBox4.Text;
            SqlDataSource5.InsertParameters["Empl_Left_Date"].DefaultValue = TextBox5.Text;
            SqlDataSource5.InsertParameters["Empl_Cell"].DefaultValue = TextBox6.Text;
            SqlDataSource5.InsertParameters["Empl_Mail"].DefaultValue = TextBox7.Text;
            SqlDataSource5.InsertParameters["Empl_Address"].DefaultValue = TextBox8.Text;
            SqlDataSource5.InsertParameters["Empl_City"].DefaultValue = DropDownList3.SelectedValue;
            SqlDataSource5.InsertParameters["Empl_Province"].DefaultValue = DropDownList4.SelectedValue;
            bool d = false;
            if (CheckBox1.Checked == true)
            {
                d = true;
            }
            SqlDataSource5.InsertParameters["Is_Empl_Active"].DefaultValue = d.ToString();
            int s = SqlDataSource5.Insert();
            if (s > 0)
            {
                Label1.Text = "New Staff Information : <b>" + TextBox1.Text + "</b><p> Successfully Added ";
                Label1.Visible = true;
            }
            else
                Label1.Text = "New Employee Registration Failed. Please try again after checking your data";
            Label1.Visible = true;
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource5_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}
