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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_insert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["book_id"].DefaultValue = txt_bookid.Text;
            SqlDataSource1.InsertParameters["book_name"].DefaultValue = txt_bookname.Text;
            SqlDataSource1.InsertParameters["author_name"].DefaultValue = txt_authorname.Text;
            SqlDataSource1.InsertParameters["price"].DefaultValue = txt_price.Text;
            SqlDataSource1.InsertParameters["no_of_copies"].DefaultValue = txt_copies.Text;
            SqlDataSource1.Insert();
            txt_bookid.Text = "";
            txt_bookname.Text = "";
            txt_authorname.Text = "";
            txt_price.Text = "";
            txt_copies.Text = "";
            lbl_msg.Text = "INSERT DATA";
        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
            lbl_msg.Text = "DELETE DATA";
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            SqlDataSource1.UpdateParameters["book_id"].DefaultValue = txt_bookid.Text;
            SqlDataSource1.UpdateParameters["book_name"].DefaultValue = txt_bookname.Text;
            SqlDataSource1.UpdateParameters["author_name"].DefaultValue = txt_authorname.Text;
            SqlDataSource1.UpdateParameters["price"].DefaultValue = txt_price.Text;
            SqlDataSource1.UpdateParameters["no_of_copies"].DefaultValue = txt_copies.Text;
            SqlDataSource1.Update();
            txt_bookid.Text = "";
            txt_bookname.Text = "";
            txt_authorname.Text = "";
            txt_price.Text = "";
            txt_copies.Text = ""; 
            lbl_msg.Text = "UPDATE DATA";

        }
    }
}