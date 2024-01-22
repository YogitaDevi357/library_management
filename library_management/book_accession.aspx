<%@ Page Title="" Language="C#" MasterPageFile="~/projectmaster.Master" AutoEventWireup="true" CodeFile="book_accession.aspx.cs" Inherits="library_management.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style12
        {
            width: 100%;
        }
        .style13
        {
            font-size: x-large;
            color: #0000CC;
            height: 23px;
        }
        .style16
        {
            height: 28px;
        }
        .style17
        {
            height: 25px;
        }
        .style18
        {
            height: 49px;
        }
        .style19
        {
            height: 217px;
        }
        .style20
        {
            height: 32px;
            width: 232px;
        }
        .style21
        {
            height: 34px;
            width: 232px;
        }
        .style22
        {
            height: 28px;
        }
        .style23
        {
            height: 25px;
            width: 232px;
        }
        .style24
        {
            height: 49px;
            width: 232px;
        }
        .style25
        {
            height: 217px;
            width: 232px;
        }
        .style26
        {
            height: 32px;
            width: 283px;
        }
        .style27
        {
            height: 34px;
            width: 283px;
        }
        .style28
        {
            width: 802px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="background-image: url('image/Libbg.jpg'); width: 1100px; height: 150px;">
        <tr>
            <td class="style13" colspan="3">
                <strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ACCESSION INFORMATION&nbsp;</em></strong></td>
        </tr>
        <tr>
            <td class="style20">
                <b>BOOK ID</b></td>
            <td class="style26">
                <asp:TextBox ID="txt_bookid" runat="server" AutoPostBack="True" 
                    BorderColor="Black" BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
            </td>
            <td class="style28" rowspan="4">
        <span class="style1">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:library %>" 
                    DeleteCommand="DELETE FROM book_accession_new" 
                    InsertCommand="INSERT INTO book_accession_new(book_id, accession_no, status) VALUES (@book_id, @accession_no, @status)" 
                    SelectCommand="SELECT * FROM [book_accession_new]">
                    <InsertParameters>
                        <asp:ControlParameter ControlID="txt_bookid" Name="book_id" 
                            PropertyName="Text" />
                        <asp:ControlParameter ControlID="txt_accession" Name="accession_no" 
                            PropertyName="Text" />
                        <asp:ControlParameter ControlID="txt_status" Name="status" 
                            PropertyName="Text" />
                    </InsertParameters>
                </asp:SqlDataSource>
               
        </span>
            </td>
        </tr>
        <tr>
            <td class="style20">
                <b>ACCESSION NO</b></td>
            <td class="style26">
                <asp:TextBox ID="txt_accession" runat="server" AutoPostBack="True" 
                    BorderColor="Black" BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style21">
                <b>STATUS</b></td>
            <td class="style27">
                <asp:TextBox ID="txt_status" runat="server" AutoPostBack="True" 
                    BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style23">
                </td>
            <td class="style17">
                <asp:Button ID="btn_submit" runat="server" onclick="btn_submit_Click" 
                    Text="SUBMIT" BorderColor="Black" BorderStyle="Solid" 
                    style="font-weight: 700; color: #0000CC" />
            </td>
        </tr>
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td class="style18" colspan="2">
                </td>
        </tr>
        </table>
</asp:Content>
