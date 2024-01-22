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
    public partial class create_user1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["user_name"].DefaultValue = txt_name.Text;
            SqlDataSource1.InsertParameters["password"].DefaultValue = txt_password.Text;
            SqlDataSource1.InsertParameters["confirm_password"].DefaultValue = txt_cpassword.Text;
            SqlDataSource1.InsertParameters["Email"].DefaultValue = txt_email.Text;
            SqlDataSource1.Insert();
            txt_name.Text = "";
            txt_password.Text = "";
            txt_cpassword.Text = "";
            txt_email.Text = "";
            Label_msg.Text = "data entered successfully";
            Response.Redirect("login.aspx");
        }
    }
}