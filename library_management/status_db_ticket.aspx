<%@ Page Title="" Language="C#" MasterPageFile="~/projectmaster.Master" AutoEventWireup="true" CodeBehind="status_db_ticket.aspx.cs" Inherits="library_management.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style12
        {
            width: 100%;
        }
        .style13
        {
            height: 23px;
            width: 508px;
        }
        .style14
        {
            width: 508px;
            font-weight: bold;
            color: #000000;
        }
        .style16
        {
            height: 23px;
            font-weight: bold;
            width: 223px;
        }
        .style17
        {
            width: 223px;
            font-weight: bold;
            height: 29px;
        }
        .style18
        {
            width: 508px;
            height: 29px;
        }
        .style19
        {
            font-size: x-large;
        }
        .style20
        {
            color: #000000;
            font-weight: bold;
        }
        .style21
        {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="background-image: url('image/Libbg.jpg'); width: 1100px; height: 150px;">
        <tr>
            <td colspan="3" class="style19">
                <strong style="color: #0000CC; font-style: italic">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                DB TICKET STATUS</strong></td>
        </tr>
        <tr>
            <td class="style21" height="20" width="50">
                <span class="style20">R</span><span class="style14">OLLNO</span></td>
            <td class="style1">
            <strong>
                <asp:TextBox ID="txt_rollno" runat="server" BorderStyle="Solid" Height="25px" 
                        Width="130px"></asp:TextBox>
    </strong>
            </td>
            <td class="style1" rowspan="4">
        <span class="style1">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:library %>" 
                    InsertCommand="INSERT INTO db_ticket1(rollno, ticket_no, status) VALUES (@rollno, @ticket_no, @status)" 
                    SelectCommand="SELECT rollno, ticket_no, status FROM db_ticket1">
                    <InsertParameters>
                        <asp:ControlParameter ControlID="txt_rollno" Name="rollno" 
                            PropertyName="Text" />
                        <asp:ControlParameter ControlID="txt_ticketno" Name="ticket_no" 
                            PropertyName="Text" />
                        <asp:ControlParameter ControlID="txt_status" Name="status" 
                            PropertyName="Text" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                    AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="rollno" HeaderText="rollno" 
                            SortExpression="rollno" />
                        <asp:BoundField DataField="ticket_no" HeaderText="ticket_no" 
                            SortExpression="ticket_no" />
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
               
        </span>
            </td>
        </tr>
        <tr>
            <td class="style16" height="20" width="50">
            <strong>
                TICKET NO</strong></td>
            <td class="style13">
            <strong>
                <asp:TextBox ID="txt_ticketno" runat="server" BorderStyle="Solid" Height="25px" 
                        Width="130px"></asp:TextBox>
    </strong>
            </td>
        </tr>
        <tr>
            <td class="style17" height="20" width="50">
                STATUS
            </td>
            <td class="style18">
            <strong>
                <asp:TextBox ID="txt_status" runat="server" BorderStyle="Solid" Height="25px" 
                        Width="130px"></asp:TextBox>
    </strong>
            </td>
        </tr>
        <tr>
            <td class="style17">
                </td>
            <td class="style18">
                <asp:Button ID="btn_submit" runat="server" BorderStyle="Solid" 
                    onclick="btn_submit_Click" Text="SUBMIT" BorderColor="Black" 
                    ForeColor="#0000CC" />
            </td>
        </tr>
        <tr>
            <td class="style21" colspan="3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
