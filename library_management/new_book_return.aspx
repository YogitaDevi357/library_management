<%@ Page Language="C#" AutoEventWireup="true" CodeFile ="new_book_return.aspx.cs" Inherits="library_management.new_book_return" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            font-size: medium;
            font-weight: 700;
        }
        .style3
        {
            height: 23px;
            text-align: justify;
            font-size: x-large;
        }
        .style4
        {
            width: 22px;
        }
        .style5
        {
            width: 239px;
        }
        .style6
        {
            text-decoration: underline;
            color: #0066FF;
            font-style: normal;
        }
        .style7
        {
            color: #000099;
        }
        .style9
        {
            height: 39px;
        }
        .style10
        {
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 235px; width: 1100px;">
        <span class="style1">
        <strong>&nbsp;&nbsp;<span class="style9">&nbsp;&nbsp;</span><span class="style1" style="font-size: xx-large"><span class="style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        LIBRARY MANAGEMENT SYSTEM 
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
    <div style="background-image: url('image/Libbg.jpg'); width: 1100px">
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
                            <asp:MenuItem NavigateUrl="~/new_book_return.aspx" Text="BOOK RETURN" 
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
        </strong>
        <table class="style1">
            <tr>
                <td colspan="4" class="style3">
                    <strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="style7">BOOK RETURN</span></em></strong></td>
            </tr>
            <tr>
                <td class="style4">
                    </td>
                <td class="style5" colspan="2">
                    RETURN&nbsp;&nbsp;&nbsp;&nbsp; DATE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="label_return_date" runat="server" 
                        ForeColor="#339933"></asp:Label>
                    &nbsp;&nbsp;
                    </td>
                <td>
                    &nbsp;EXPECTED RETURN DATE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl_exp_date" runat="server" ForeColor="#339933"></asp:Label>
                    <br />
                    <asp:DropDownList ID="dropdown_exp_date" runat="server" AutoPostBack="True" 
                        DataSourceID="sql_return" DataTextField="expected_return_date" 
                        DataValueField="expected_return_date">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    ROLL NO.</td>
                <td colspan="2">
                    <asp:TextBox ID="txt_roll" runat="server" AutoPostBack="True" 
                        BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="grid_db_ticket" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="sql_db_ticket" DataKeyNames="ticket_no" CellPadding="4" 
                        ForeColor="#333333" GridLines="None">
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
                                    <asp:CheckBox ID="CheckBox_ticket" runat="server" AutoPostBack="True" 
                                        oncheckedchanged="check_ticket" />
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
                    <asp:SqlDataSource ID="sql_db_ticket" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:library %>" 
                        
                        SelectCommand="SELECT [rollno], [ticket_no], [status] FROM [db_ticket1] WHERE ([rollno] = @rollno)" 
                        UpdateCommand="UPDATE db_ticket1 SET status = @status, date_issue_ret = @date_issue_ret where ticket_no=@ticket_no">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txt_roll" Name="rollno" PropertyName="Text" 
                                Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="lbl_ticket_status" Name="status" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="label_return_date" Name="date_issue_ret" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="lbl_ticket_no" Name="ticket_no" 
                                PropertyName="Text" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td colspan="2">
                    <br />
                    <asp:Label ID="lbl_ticket_no" runat="server" ForeColor="#339933"></asp:Label>
                    <br />
                    <br />
&nbsp;<br />
                    <br />
                    <asp:Label ID="lbl_ticket_status" runat="server" ForeColor="#339933"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style10" colspan="2">
                    BOOK ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td colspan="2" class="style10">
                    <asp:TextBox ID="txt_book_id" runat="server" AutoPostBack="True" 
                        BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="grid_book" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="Sql_book" DataKeyNames="accession_no" CellPadding="4" 
                        ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="accession_no" HeaderText="accession_no" 
                                SortExpression="accession_no" />
                            <asp:TemplateField HeaderText="status" SortExpression="status">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("status") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                                    <asp:CheckBox ID="CheckBox_book" runat="server" AutoPostBack="True" 
                                        oncheckedchanged="check_book" />
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
                    <asp:SqlDataSource ID="Sql_book" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:library %>" 
                        
                        
                        SelectCommand="SELECT [accession_no], [status] FROM [book_accession_new] WHERE ([book_id] = @book_id)" 
                        
                        UpdateCommand="UPDATE book_accession_new SET status = @status where accession_no=@accession_no" 
                        InsertCommand="INSERT INTO [book_accession_new] ([accession_no], [status]) VALUES (@accession_no, @status)">
                        <InsertParameters>
                            <asp:Parameter Name="accession_no" Type="Int32" />
                            <asp:Parameter Name="status" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txt_book_id" Name="book_id" 
                                PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="lbl_book_status" Name="status" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="lbl_accession_no" Name="accession_no" 
                                PropertyName="Text" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td colspan="2">
                    <br />
                    <asp:Label ID="lbl_accession_no" runat="server" ForeColor="#339933"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="lbl_book_status" runat="server" ForeColor="#339933"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="grid_return" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="sql_return" CellPadding="4" ForeColor="#333333" 
                        GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="rollno" HeaderText="rollno" 
                                SortExpression="rollno" />
                            <asp:BoundField DataField="accession_no" HeaderText="accession_no" 
                                SortExpression="accession_no" />
                            <asp:BoundField DataField="issue_date" HeaderText="issue_date" 
                                SortExpression="issue_date" />
                            <asp:TemplateField HeaderText="expected_return_date" 
                                SortExpression="expected_return_date">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" 
                                        Text='<%# Bind("expected_return_date") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" 
                                        Text='<%# Bind("expected_return_date") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="return_date" HeaderText="return_date" 
                                SortExpression="return_date" />
                            <asp:TemplateField HeaderText="fine" SortExpression="fine">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("fine") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("fine") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="ticket_no" HeaderText="ticket_no" 
                                SortExpression="ticket_no" />
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
                    <asp:SqlDataSource ID="sql_return" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:library %>" 
                        SelectCommand="SELECT * FROM [book_issue_return]" 
                        UpdateCommand="UPDATE book_issue_return SET return_date = @return_date, fine = @fine WHERE (rollno = @rollno) AND (accession_no = @accession_no) AND (ticket_no = @ticket_no)">
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="label_return_date" Name="return_date" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="lbl_fine" Name="fine" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txt_roll" Name="rollno" PropertyName="Text" />
                            <asp:ControlParameter ControlID="lbl_accession_no" Name="accession_no" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="lbl_ticket_no" Name="ticket_no" 
                                PropertyName="Text" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td colspan="2">
                    <asp:Label ID="lbl_fine" runat="server" ForeColor="#006600"></asp:Label>
                    <br />
                    <br />
        <span class="style1">
                    <span class="style1" style="font-size: xx-large"><span class="style11">
                    <asp:Button ID="btn_fine" runat="server" onclick="CAL_FINE" 
                        Text="CALCULATE FINE" Width="154px" BorderColor="Black" 
                        BorderStyle="Solid" ForeColor="#000099" style="font-weight: 700" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    <asp:Button ID="btn_return" runat="server" Text="RETURN BOOK" 
                        onclick="btn_return_Click" BorderColor="Black" BorderStyle="Solid" 
                        ForeColor="#000099" style="font-weight: 700" />
                </td>
            </tr>
        </table>
    
    </div>
        <strong>
    <div style="font-size: xx-large; font-weight: 700; font-style: italic; width: 1100px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <span class="style6"><em>Prepared by Yogita and Simran</em></span></div>
    </form>
</body>
</html>
