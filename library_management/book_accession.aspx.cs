using System.Configuration;
using System.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace library_management
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["book_id"].DefaultValue = txt_bookid.Text;
            SqlDataSource1.InsertParameters["accession_no"].DefaultValue = txt_accession.Text;
            SqlDataSource1.InsertParameters["status"].DefaultValue = txt_status.Text;
            SqlDataSource1.Insert();
            txt_bookid.Text = "";
            txt_accession.Text = "";
            txt_status.Text = "";
        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
        }
    }
}