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
    public partial class new_book_issue1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label_DATE.Text = DateTime.Now.ToShortDateString();
            Label_RET.Text = DateTime.Now.AddDays(15).ToShortDateString();

        }

        protected void CHANGE_STATUS(object sender, EventArgs e)
        {//CHANGESTATUS book

            int COUNT = GridView2.Rows.Count;

            for (int I = 0; I < COUNT; I++)
            {
                CheckBox   CH  = GridView2.Rows[I].Cells[3].FindControl("CheckBox1") as CheckBox;
                Label   l_ch =  GridView2.Rows[I].Cells[3].FindControl("Label1") as Label;

                if (CH.Checked)
                {
                    l_ch.Text = "false";
                    lable_book_status.Text = l_ch.Text;
                    Label_acc_no.Text = GridView2.Rows[I].Cells[1].Text;
                    
                }
            }

        }
        protected void rollno_status(object sender, EventArgs e)
        {
            //change status of ticket   and   copy  ticket no in label
            int COUNT_roll = GridView1.Rows.Count;

            for (int I = 0; I < COUNT_roll; I++)
            {
                CheckBox CH_new = GridView1.Rows[I].Cells[2].FindControl("CheckBox2") as CheckBox;
                Label l_ch = GridView1.Rows[I].Cells[2].FindControl("Label1") as Label;

                if (CH_new.Checked)
                {
                    l_ch.Text = "false";  //status

                    Label_ticke_status.Text = l_ch.Text;
                    Label_ticket_no.Text = GridView1.Rows[I].Cells[1].Text;
                }
            }

        }
        protected void Butto_issue_Click(object sender, EventArgs e)
        {
            //  ADD   IN ISSUE REGISTER
            SqlData_ISSUE.InsertParameters["rollno"].DefaultValue = txt_rollno.Text;
            SqlData_ISSUE.InsertParameters["accession_no"].DefaultValue = Label_acc_no.Text;
            SqlData_ISSUE.InsertParameters["issue_date"].DefaultValue = Label_DATE.Text;
            SqlData_ISSUE.InsertParameters["expected_return_date"].DefaultValue = Label_RET.Text;
            SqlData_ISSUE.InsertParameters["ticket_no"].DefaultValue = Label_ticket_no.Text;
            SqlData_ISSUE.Insert();

            //  change  status of ticket  
           
            SqL_stu.UpdateParameters .Add("@date_issue_ret", Label_DATE.Text);
            SqL_stu.UpdateParameters .Add("@status", Label_ticke_status.Text);
            SqL_stu.Update();

   //   change   status  of  book  status
            Sql_book.UpdateParameters .Add("@status", lable_book_status.Text);
            Sql_book.Update();
            GridV_ISSUE.Visible = true;
        }


       
}
}