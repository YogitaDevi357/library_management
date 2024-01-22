<%@ Page Language="C#" AutoEventWireup="true" CodeFile="new_book issue.aspx.cs" Inherits="library_management.new_book_issue1" %>

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
            height: 23px;
        }
        .style3
        {
        }
        .style4
        {
            width: 491px;
        }
        .style5
        {
            color: #0066FF;
            text-decoration: underline;
        }
        .style6
        {
            font-size: x-large;
        }
        .style7
        {
            color: #000099;
        }
        .style8
        {
            width: 100%;
            font-size: medium;
        }
        .style9
        {
            width: 472px;
        }
        .style10
        {
            width: 384px;
        }
        .style11
        {
            width: 4px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 235px; width: 1100px;">
        <span class="style1">
        <strong>&nbsp;&nbsp;<span class="style9">&nbsp;&nbsp;</span><span class="style1" style="font-size: xx-large"><span class="style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LIBRARY MANAGEMENT SYSTEM 
                    <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image4" runat="server" Height="200px" 
            ImageUrl="~/image/cartoon.jpg" Width="321px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image5" runat="server" Height="200px" 
            ImageUrl="~/image/bookcm.png" Width="321px" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image6" runat="server" Height="200px" 
            ImageUrl="~/image/openbook.jpg" Width="321px" />
        <br />

        </div>
    <div style="width: 1100px; font-size: medium; background-image: url('image/Libbg.jpg');">
    <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" 
                        DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                        ForeColor="#990000" Orientation="Horizontal" StaticSubMenuIndent="10px" 
                        style="font-size: large; color: #003399" BorderStyle="Solid" Height="20px" 
                        Width="1100px">
                        <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicMenuStyle BackColor="#FFFBD6" />
                        <DynamicSelectedStyle BackColor="#FFCC66" />
                        <Items>
                            <asp:MenuItem NavigateUrl="~/student_info.aspx" Text="STUDENT INFO" 
                                Value="STUDENT INFO"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/book_info.aspx" Text="BOOK INFORMATION" 
                                Value="BOOK DATABASE"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/new_book issue.aspx" Text="BOOK ISSUE" 
                                Value="BOOK ISSUE"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/new_book_return.aspx" Text=" BOOK RETURN" 
                                Value="STATUS BOOK RETURN"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/book_accession.aspx" Text="BOOK ACCESSION" 
                                Value="BOOK ACCESSION"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/status_db_ticket.aspx" Text="DB TICKET" 
                                Value="DB TICKET"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/report.aspx" Text="REPORT" Value="REPORT">
                            </asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/homepage.aspx" Text="LOG OUT" Value="SEARCH">
                            </asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticSelectedStyle BackColor="#FFCC66" />
                    </asp:Menu>
        <br />
        <table style="background-image: url('image/Libbg.jpg')" >
            <tr>
                <td class="style6" colspan="4">
                    <em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="style7">&nbsp;BOOK ISSUE</span></em></td>
            </tr>
            <tr>
                <td>
        <span class="style1">
        <strong><span class="style1" style="font-size: xx-large"><span class="style11">
                    <span class="style8">DATE&nbsp;&nbsp;&nbsp; ISSUE&nbsp;&nbsp;
                    <asp:Label ID="Label_DATE" runat="server" ForeColor="#006600"></asp:Label>
                </td>
                <td class="style10">
                &nbsp;&nbsp; 
                    &nbsp;<span class="style1"><strong><span class="style11">EXPECTED DATE OF RETURN&nbsp;
                    <asp:Label ID="Label_RET" runat="server" ForeColor="#006600"></asp:Label>
                    <span class="style1" style="font-size: xx-large">&nbsp;</td>
                <td class="style3" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
        <strong><span class="style1"><span class="style11">ROLL NO</td>
                <td class="style10">
        <span class="style1">
        <strong><span class="style1" style="font-size: xx-large"><span class="style11">
                    <asp:TextBox ID="txt_rollno" runat="server" AutoPostBack="True" 
                        BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqL_stu" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:library %>" 
                        
                        SelectCommand="SELECT [rollno], [ticket_no], [status] FROM [db_ticket1] WHERE ([rollno] = @rollno)" 
                        
                        InsertCommand="INSERT INTO db_ticket1(ticket_no, status, date_issue_ret) VALUES (@ticket_no, @status, @date_issue_ret)" 
                        UpdateCommand="UPDATE db_ticket1 SET status = @status, date_issue_ret = @date_issue_ret where ticket_no=@ticket_no">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="Label_ticket_no" Name="ticket_no" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="Label_ticke_status" Name="status" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="Label_DATE" Name="date_issue_ret" 
                                PropertyName="Text" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txt_rollno" Name="rollno" PropertyName="Text" 
                                Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="Label_ticke_status" Name="status" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="Label_DATE" Name="date_issue_ret" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="Label_ticket_no" Name="ticket_no" 
                                PropertyName="Text" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        Caption="TICKET STATUS" DataKeyNames="ticket_no" DataSourceID="SqL_stu" 
                        CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="rollno" HeaderText="rollno" 
                                SortExpression="rollno" />
                            <asp:BoundField DataField="ticket_no" HeaderText="ticket_no" 
                                SortExpression="ticket_no" />
                            <asp:TemplateField HeaderText="status" SortExpression="status">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("status") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                                    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" 
                                        oncheckedchanged="rollno_status" />
                                </ItemTemplate>
                            </asp:TemplateField>
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
                <td class="style4">
                    <asp:Label ID="Label_ticket_no" runat="server" ForeColor="#006600"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    <br />
                    <asp:Label ID="Label_ticke_status" runat="server" ForeColor="#006600"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    BOOK ID</td>
                <td colspan="2">
                    <asp:TextBox ID="txt_bookid" runat="server" AutoPostBack="True" 
                        BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="Sql_book" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:library %>" 
                        
                        
                        SelectCommand="SELECT book_accession_new.book_id, book_accession_new.accession_no, book_accession_new.status, book_detail_new.book_name, book_detail_new.author_name FROM book_accession_new INNER JOIN book_detail_new ON book_accession_new.book_id = book_detail_new.book_id where book_accession_new.book_id=@book_id" 
                        UpdateCommand="UPDATE book_accession_new SET status = @status WHERE (accession_no = @accession_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txt_bookid" Name="book_id" 
                                PropertyName="Text" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="lable_book_status" Name="status" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="Label_acc_no" Name="accession_no" 
                                PropertyName="Text" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td colspan="2">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        Caption="BOOK STATUS" DataSourceID="Sql_book" DataKeyNames="accession_no" 
                        CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="book_id" HeaderText="book_id" 
                                SortExpression="book_id" />
                            <asp:BoundField DataField="accession_no" HeaderText="accession_no" 
                                SortExpression="accession_no" />
                            <asp:TemplateField HeaderText="status" SortExpression="status">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("status") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                                    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
                                        oncheckedchanged="CHANGE_STATUS" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="book_name" HeaderText="book_name" 
                                SortExpression="book_name" />
                            <asp:BoundField DataField="author_name" HeaderText="author_name" 
                                SortExpression="author_name" />
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
                <td class="style4">
                    <br />
                    <asp:Label ID="Label_acc_no" runat="server" ForeColor="#006600"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="lable_book_status" runat="server" ForeColor="#006600"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="4">
                    </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="2">
                    <asp:Button ID="Butto_issue" runat="server" onclick="Butto_issue_Click" 
                        Text="ISSUE   BOOK" BorderStyle="Solid" />
                </td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlData_ISSUE" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:library %>" 
                        InsertCommand="INSERT INTO book_issue_return(rollno, accession_no, issue_date, expected_return_date,ticket_no)
            VALUES (@rollno, @accession_no, @issue_date, @expected_return_date,@ticket_no)" 
                        
                        
                        SelectCommand="SELECT rollno, accession_no, issue_date, expected_return_date, ticket_no, return_date FROM book_issue_return">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="txt_rollno" DefaultValue="0" Name="rollno" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="Label_acc_no" Name="accession_no" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="Label_DATE" Name="issue_date" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="Label_RET" Name="expected_return_date" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="Label_ticket_no" Name="ticket_no" 
                                PropertyName="Text" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
                <td colspan="2">
                    <asp:GridView ID="GridV_ISSUE" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlData_ISSUE" Visible="False" CellPadding="4" 
                        ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="rollno" HeaderText="rollno" 
                                SortExpression="rollno" />
                            <asp:BoundField DataField="accession_no" HeaderText="accession_no" 
                                SortExpression="accession_no" />
                            <asp:BoundField DataField="issue_date" HeaderText="issue_date" 
                                SortExpression="issue_date" />
                            <asp:BoundField DataField="expected_return_date" 
                                HeaderText="expected_return_date" SortExpression="expected_return_date" />
                            <asp:BoundField DataField="ticket_no" HeaderText="ticket_no" 
                                SortExpression="ticket_no" />
                            <asp:BoundField DataField="return_date" HeaderText="return_date" 
                                SortExpression="return_date" />
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
                <td class="style4">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
    
    </div>
    <div style="font-size: xx-large; font-weight: 700; font-style: italic; width: 1100px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <span class="style5">Prepared by Yogita and Simran</span></div>
    </form>
</body>
</html>
