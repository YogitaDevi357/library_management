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
    public partial class new_book_return : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            label_return_date.Text = DateTime.Now.ToShortDateString();

            lbl_exp_date.Text = dropdown_exp_date.SelectedValue;


        }
        protected void check_ticket(object sender, EventArgs e)
        {
            int COUNT = grid_db_ticket.Rows.Count;

            for (int I = 0; I < COUNT; I++)
            {
                CheckBox CH = grid_db_ticket.Rows[I].Cells[2].FindControl("CheckBox_ticket") as CheckBox;
                Label l_ch = grid_db_ticket.Rows[I].Cells[2].FindControl("Label1") as Label;

                if (CH.Checked)
                {
                    l_ch.Text = "true";
                    lbl_ticket_status.Text = l_ch.Text;
                    lbl_ticket_no.Text = grid_db_ticket.Rows[I].Cells[1].Text;

                }
            }
        }
        protected void check_book(object sender, EventArgs e)
        {
            int COUNT = grid_book.Rows.Count;

            for (int I = 0; I < COUNT; I++)
            {
                CheckBox CH = grid_book.Rows[I].Cells[1].FindControl("CheckBox_book") as CheckBox;
                Label l_ch = grid_book.Rows[I].Cells[1].FindControl("Label1") as Label;

                if (CH.Checked)
                {
                    l_ch.Text = "true";
                    lbl_book_status.Text = l_ch.Text;
                    lbl_accession_no.Text = grid_book.Rows[I].Cells[0].Text;

                }
            }
        }
        protected void btn_return_Click(object sender, EventArgs e)
        {

       


            // insert into book_issue_return table

            //INSERT INTO book_issue_return(return_date, fine) VALUES (@return_date, @fine) 
            //sql_return.UpdateParameters []
            sql_return.UpdateParameters["return_date"].DefaultValue = label_return_date.Text;
            sql_return.UpdateParameters["fine"].DefaultValue = lbl_fine.Text;
            sql_return.Update();

            // change status of ticket
            // UPDATE db_ticket1 SET status = @status, date_issue_ret = @date_issue_ret 
            sql_db_ticket.UpdateParameters.Add("@status", lbl_ticket_status.Text);
            sql_db_ticket.UpdateParameters.Add("@date_issue_ret", label_return_date.Text);
            sql_db_ticket.Update();


            // change status of book
            //UPDATE book_accession_new SET status = @status
            Sql_book.UpdateParameters.Add("@status", lbl_book_status.Text);
            Sql_book.Update();
        }

        protected void CAL_FINE(object sender, EventArgs e)
        {
            DateTime dt1 = Convert.ToDateTime(label_return_date.Text);
            DateTime dt2 =Convert .ToDateTime (lbl_exp_date.Text);
            TimeSpan ts=dt1 -dt2 ;
            int days =ts.Days ;
            int fine;
            if (days > 15)
                fine = (days - 15) * 10;
            else
                fine = 0; 
            
                lbl_fine.Text = fine.ToString();
            
        }
    }
}