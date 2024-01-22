
<%@ Page Title="" Language="C#" MasterPageFile="~/projectmaster.Master" AutoEventWireup="true" CodeBehind="book_info.aspx.cs" Inherits="library_management.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    
    
    <style type="text/css">
    .style13
    {
        width: 228px;
    }
    .style14
    {
        color: #33CC33;
    }
        .style15
        {
            height: 30px;
        }
    .style16
    {
        height: 34px;
        width: 728px;
    }
    .style17
    {
        color: #000066;
    }
        .style18
        {
            width: 139px;
        }
        .style19
        {
            width: 139px;
            font-weight: bold;
        }
        .style20
        {
            width: 139px;
            font-weight: bold;
            height: 37px;
        }
        .style21
        {
            color: #33CC33;
            height: 37px;
        }
        .style22
        {
            height: 37px;
        }
        .style23
        {
            width: 139px;
            font-weight: bold;
            height: 32px;
        }
        .style24
        {
            color: #33CC33;
            height: 32px;
        }
        .style25
        {
            height: 32px;
        }
    </style>
    
    
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table bgcolor="Silver" 
        
        style="height: 300px; width: 1100px; background-image: url('image/Libbg.jpg');">
    <tr>
        <td colspan="4" class="style16">
            <span style="font-size: x-large">
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
                class="style14">&nbsp;&nbsp;&nbsp;<em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    </em></span><em> 
                    <span 
                class="style17">BOOK INFORMATION</span></em></strong></td>
    </tr>
      
    <tr>
        <td class="style19">
                    BOOK&nbsp;&nbsp;ID</td>
        <td class="style14">
            <asp:TextBox ID="txt_bookid" runat="server" CssClass="style7" Width="130px" 
                BorderStyle="Solid" Height="25px"></asp:TextBox>
        </td>
        <strong>
        <td colspan="2" rowspan="5">
        <span class="style1">
        <strong>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:library %>" 
                        InsertCommand="INSERT INTO book_detail_new(book_id, book_name, author_name, price, no_of_copies) VALUES (@book_id, @book_name, @author_name, @price, @no_of_copies)" 
                        SelectCommand="SELECT * FROM [book_detail_new]" 
                        DeleteCommand="DELETE FROM book_detail_new where book_id=@book_id" 
                        
                        
                        
                        UpdateCommand="UPDATE book_detail_new SET book_id = @book_id, book_name = @book_name, author_name = @author_name, price = @price, no_of_copies = @no_of_copies where book_id=@book_id">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="txt_bookid" Name="book_id" 
                                PropertyName="Text" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="txt_bookid" Name="book_id" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="txt_bookname" Name="book_name" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="txt_authorname" Name="author_name" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="txt_price" Name="price" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txt_copies" Name="no_of_copies" 
                                PropertyName="Text" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="txt_bookid" Name="book_id" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="txt_bookname" Name="book_name" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="txt_authorname" Name="author_name" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="txt_price" Name="price" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txt_copies" Name="no_of_copies" 
                                PropertyName="Text" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                        DataSourceID="SqlDataSource1" Height="156px" Width="236px" 
                        AllowPaging="True" CellPadding="4" ForeColor="#333333" 
                GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="book_id" HeaderText="book_id" 
                                SortExpression="book_id" />
                            <asp:BoundField DataField="book_name" HeaderText="book_name" 
                                SortExpression="book_name" />
                            <asp:BoundField DataField="author_name" HeaderText="author_name" 
                                SortExpression="author_name" />
                            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                            <asp:BoundField DataField="no_of_copies" HeaderText="no_of_copies" 
                                SortExpression="no_of_copies" />
                        </Fields>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    </asp:DetailsView>
</strong>
               
        </span></td>
    </tr>
    <tr>
        <td class="style20">
                    BOOK NAME</td>
        <td class="style21">
            <asp:TextBox ID="txt_bookname" runat="server" CssClass="style7" Width="130px" 
                BorderStyle="Solid" Height="25px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style23">
                    AUTHOR NAME</td>
        <td class="style24">
            <asp:TextBox ID="txt_authorname" runat="server" CssClass="style7" Width="130px" 
                BorderStyle="Solid" Height="25px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style19">
        <span class="style1">
                    <strong>
                    PRICE</strong></span></td>
        <td class="style14">
            <asp:TextBox ID="txt_price" runat="server" BorderStyle="Solid" Height="25px" 
                Width="130px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style19">
        <span class="style1">
        <strong>
                    NO. OF COPIES</strong></span></td>
        <td class="style14">
        <span class="style1">
        <strong>
            <asp:TextBox ID="txt_copies" runat="server" BorderStyle="Solid" Height="25px" 
                Width="130px"></asp:TextBox>
</strong>
               
        </span>
        </td>
    </tr>
    <tr>
        <td colspan="4" 
            class="style15">
                    &nbsp;</td>
    </tr>
    <tr>
        <td class="style18">
        <span class="style1">
        <strong>
                    <asp:Label ID="lbl_msg" runat="server" ForeColor="#FF3300"></asp:Label>
</strong>
               
        </span></td>
        <td class="style14">
            <asp:Button ID="btn_insert" runat="server" Text="INSERT" BorderStyle="Solid" 
                Height="30px" Width="80px" BackColor="Silver" onclick="btn_insert_Click" 
                BorderColor="Black" ForeColor="#0000CC" />
        </td>
        <td>
            <asp:Button ID="btn_delete" runat="server" Text="DELETE" BorderStyle="Solid" 
                Height="30px" Width="80px" BackColor="Silver" onclick="btn_delete_Click" 
                BorderColor="Black" ForeColor="#0000CC" />
        </td>
        <td class="style13">
            <asp:Button ID="btn_update" runat="server" Text="UPDATE" Height="30px" 
                Width="80px" BorderStyle="Solid" BackColor="Silver" 
                onclick="btn_update_Click" BorderColor="Black" ForeColor="#0000CC" />
        </td>
    </tr>
</table>
</strong>
</asp:Content>
