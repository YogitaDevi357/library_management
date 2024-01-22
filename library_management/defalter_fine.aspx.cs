using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace library_management
{
    public partial class fine_collect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BTN_fine_Click(object sender, EventArgs e)
        {
            //  total fine  calculated

            int count = GridView1.Rows.Count;
            int fine = 0;
            for (int i = 0; i < count; i++)
            {    
                fine = fine + int.Parse(GridView1.Rows[i].Cells[2].Text);
            }
            Lab_fine.Text = fine.ToString();
        }
        
}
}