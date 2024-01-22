<%@ Page Language="C#" AutoEventWireup="true" CodeFile ="~/non_defalter.aspx.cs" Inherits="library_management.list_defalter" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 170px;
        }
        .style3
        {
            font-size: xx-large;
        }
        .style4
        {
            color: #FF0066;
        }
        .style5
        {
            width: 825px;
        }
    </style>
</head>
<body background="image/cartoon.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2" 
                    style="font-style: oblique; vertical-align: bottom; border-style: double; text-align: center;">
                    &nbsp; <span class="style3">&nbsp;<span class="style4">LIST OF 
                    NON DEFAULTER</span>&nbsp;</span><br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style5" style="text-align: center">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td style="text-align: center">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/report.aspx">REPORT</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="sql_rollno" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" HorizontalAlign="Center">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="rollno" HeaderText="rollno" 
                                SortExpression="rollno" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="sql_rollno" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:library %>" 
                        
                        
                        SelectCommand="SELECT DISTINCT student_info.name, book_issue_return.rollno FROM student_info INNER JOIN book_issue_return ON student_info.rollno = book_issue_return.rollno WHERE (book_issue_return.fine =0) ">
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
