using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace library_management
{
    public partial class login : System.Web.UI.Page
    {
        static int r;
        String password;
    
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void txt_password_TextChanged(object sender, EventArgs e)
        {
            r = String.Compare(txt_password.Text.Trim(),GridView1.Rows[0].Cells[0].Text.Trim());
            lbl_try.Text = r.ToString();
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            if (r==0)
            {
                Response.Redirect("mastercontent.aspx");

            }
            else
            {
                lbl_try.Visible = true;
                lbl_try.Text = "try again";
            }
        }

        protected void btn_reset_Click(object sender, EventArgs e)
        {
            txt_username.Text = " ";
            txt_password.Text = " ";
        }
    }
}
