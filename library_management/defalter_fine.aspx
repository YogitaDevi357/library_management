<%@ Page Language="C#" AutoEventWireup="true" CodeFile ="~/defalter_fine.aspx.cs" Inherits="library_management.fine_collect" %>

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
            font-size: xx-large;
        }
        .style3
        {
            width: 354px;
        }
        .style4
        {
            height: 97px;
        }
        .style5
        {
            font-size: xx-large;
            color: #FF0066;
        }
    </style>
</head>
<body background="image/cartoon.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="4" class="style4" 
                    style="font-style: oblique; vertical-align: bottom; border-style: double; text-align: center;">
                    <span class="style5">LIST OF DEFAULTER&nbsp;</span><br class="style2" />
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/report.aspx">REPORT</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="sql_fine" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" HorizontalAlign="Center">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="name" HeaderText="name" 
                                SortExpression="name" />
                            <asp:BoundField DataField="rollno" HeaderText="rollno" 
                                SortExpression="rollno" />
                            <asp:BoundField DataField="fine" HeaderText="fine" 
                                SortExpression="fine" />
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
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <strong>TOTAL FINE </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="style3">
                    &nbsp;=</td>
                <td class="style3">
                    <asp:Label ID="Lab_fine" runat="server" ForeColor="#0033CC" 
                        style="font-weight: 700; font-size: large"></asp:Label>
                    <asp:SqlDataSource ID="sql_fine" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:library %>" 
                        SelectCommand="SELECT DISTINCT student_info.name, book_issue_return.rollno, book_issue_return.fine FROM student_info INNER JOIN book_issue_return ON student_info.rollno = book_issue_return.rollno WHERE (book_issue_return.fine &gt; 0)">
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:Button ID="BTN_fine" runat="server" Text="TOTAL FINE" 
                        onclick="BTN_fine_Click" BorderStyle="Solid" style="font-weight: 700" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
