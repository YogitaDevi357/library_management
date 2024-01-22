using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace library_management
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_insert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["rollno"].DefaultValue = txt_rollno.Text;
            SqlDataSource1.InsertParameters["name"].DefaultValue = txt_name.Text;
            SqlDataSource1.InsertParameters["class"].DefaultValue = txt_class.Text;
            SqlDataSource1.InsertParameters["address"].DefaultValue = txt_address.Text;
            SqlDataSource1.InsertParameters["contactno"].DefaultValue = txt_contact.Text;
            SqlDataSource1.InsertParameters["ticket_no1"].DefaultValue = txt_ticket1.Text;
            SqlDataSource1.InsertParameters["ticket_no2"].DefaultValue = txt_ticket2.Text;
            SqlDataSource1.Insert();
            txt_rollno.Text = "";
            txt_name.Text = "";
            txt_class.Text = "";
            txt_address.Text = "";
            txt_contact.Text = "";
            txt_ticket1.Text = "";
            txt_ticket2.Text = "";
            lbl_msg.Text = "INSERT DATA";

        }
        protected void btn_update_Click(object sender, EventArgs e)
        {
            SqlDataSource1.UpdateParameters["rollno"].DefaultValue = txt_rollno.Text;
            SqlDataSource1.UpdateParameters ["name"].DefaultValue = txt_name.Text;
            SqlDataSource1.UpdateParameters ["class"].DefaultValue = txt_class.Text;
            SqlDataSource1.UpdateParameters ["address"].DefaultValue = txt_address.Text;
            SqlDataSource1.UpdateParameters ["contactno"].DefaultValue = txt_contact.Text;
            SqlDataSource1.UpdateParameters ["ticket_no1"].DefaultValue = txt_ticket1.Text;
            SqlDataSource1.UpdateParameters ["ticket_no2"].DefaultValue = txt_ticket2.Text;
            SqlDataSource1.Update ();
            txt_rollno.Text = "";
            txt_name.Text = "";
            txt_class.Text = "";
            txt_address.Text = "";
            txt_contact.Text = "";
            txt_ticket1.Text = "";
            txt_ticket2.Text = "";
            lbl_msg.Text = "UPDATE DATA";
        }
        protected void btn_delete_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();



        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
}
}