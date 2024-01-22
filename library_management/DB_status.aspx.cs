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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["rollno"].DefaultValue = txt_rollno.Text;
            SqlDataSource1.InsertParameters["ticket_no"].DefaultValue = txt_ticketno.Text;
            SqlDataSource1.InsertParameters["status"].DefaultValue = txt_status.Text;
            SqlDataSource1.Insert();
            txt_rollno.Text = "";
            txt_ticketno.Text = "";
            txt_status.Text = "";
        }
    }
}