<%@ Page Language="C#" AutoEventWireup="true" CodeFile ="book_list_issued.aspx.cs" Inherits="library_management.book_list_issued" %>

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
            text-align: center;
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
            width: 792px;
        }
    </style>
</head>
<body background="image/cartoon.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2" class="style2" 
                    style="font-style: oblique; vertical-align: bottom; border-style: double">
                    <br />
                    <br />
                    <span class="style3">&nbsp;<span class="style4">LIST OF BOOKS ISSUED</span>&nbsp;</span><br 
                        class="style3" />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="text-align: center" class="style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td style="text-align: center">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/report.aspx">REPORT</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="text-align: center" colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="sql_book_issued" CellPadding="4" CellSpacing="4" 
                        ForeColor="#333333" GridLines="None" HorizontalAlign="Center" 
                        style="text-align: center">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="book_id" HeaderText="book_id" 
                                SortExpression="book_id" />
                            <asp:BoundField DataField="accession_no" HeaderText="accession_no" 
                                SortExpression="accession_no" />
                            <asp:BoundField DataField="status" HeaderText="status" 
                                SortExpression="status" />
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
                <td colspan="2" style="text-align: center">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:SqlDataSource ID="sql_book_issued" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:library %>" 
                        SelectCommand="SELECT * FROM [book_accession_new] WHERE ([status] = @status)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="false" Name="status" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
