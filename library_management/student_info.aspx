<%@ Page Title="" Language="C#" MasterPageFile="~/projectmaster.Master" AutoEventWireup="true" CodeFile="student_info.aspx.cs" Inherits="library_management.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .style12
    {
        color: #009933;
    }
    .style17
    {
        font-size: x-large;
        height: 27px;
        color: #000066;
        width: 728px;
    }
    .style7
    {
        font-size: x-large;
    }
    .style16
    {
        color: #000066;
        width: 728px;
        height: 94px;
    }
    .style15
    {
        color: #000066;
    }
        .style14
    {
        height: 23px;
            width: 444px;
        }
        .style20
        {
            height: 23px;
            width: 130px;
        }
    .style13
    {
        width: 113px;
        color: #000099;
        text-decoration: underline;
        height: 23px;
    }
        .style21
        {
            width: 1100px;
            height: 300px;
        }
        .style22
        {
            color: #000000;
            font-weight: bold;
            width: 395px;
        }
        .style23
        {
            height: 23px;
            width: 395px;
        }
        .style24
        {
            width: 130px;
        }
        .style25
        {
            color: #000000;
            font-weight: bold;
            width: 395px;
            height: 29px;
        }
        .style26
        {
            width: 130px;
            height: 29px;
        }
        .style27
        {}
        .style28
        {
            height: 24px;
        }
        .style29
        {
            color: #000000;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <span class="style1">
    <table style="background-image: url('image/Libbg.jpg');" class="style21">
        <tr>
            <td colspan="4" 
                    class="style29">
                <span class="style4"><span 
                        class="style17"><em><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; STUDENT INFORMATION</strong></em></span></span><span 
                        class="style7"></span><span class="style16"><em></strong></em></span><em><span 
                        class="style15"></span><strong></span></strong></em><strong></span></strong>
                        </td>
        </tr>
        <tr>
            <td 
                    class="style25">
                ENTER ROLLNO</td>
            <strong>
            <td 
                class="style26">
                <asp:TextBox ID="txt_rollno" runat="server" BorderStyle="Solid" Height="25px" 
                        Width="130px"></asp:TextBox>
            </td>
            <td colspan="2" class="style27" rowspan="7">
        <span class="style1">
            <strong>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:library %>" 
                    InsertCommand="INSERT INTO student_info(rollno, name, class, address, contactno, ticket_no1, ticket_no2) VALUES (@rollno, @name, @class, @address, @contactno, @ticket_no1, @ticket_no2)" 
                    
                    SelectCommand="SELECT rollno, name, class, address, contactno, ticket_no1, ticket_no2 FROM student_info" 
                    DeleteCommand="DELETE FROM student_info WHERE rollno=@rollno" 
                    UpdateCommand="UPDATE student_info SET rollno = @rollno, name = @name, class = @class, address = @address, contactno = @contactno, ticket_no1 = @ticket_no1, ticket_no2 = @ticket_no2 where rollno=@rollno">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="txt_rollno" Name="rollno" 
                            PropertyName="Text" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="txt_rollno" Name="rollno" 
                            PropertyName="Text" />
                        <asp:ControlParameter ControlID="txt_name" Name="name" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txt_class" Name="class" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txt_address" Name="address" 
                            PropertyName="Text" />
                        <asp:ControlParameter ControlID="txt_contact" Name="contactno" 
                            PropertyName="Text" />
                        <asp:ControlParameter ControlID="txt_ticket1" Name="ticket_no1" 
                            PropertyName="Text" />
                        <asp:ControlParameter ControlID="txt_ticket2" Name="ticket_no2" 
                            PropertyName="Text" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="txt_rollno" Name="rollno" 
                            PropertyName="Text" />
                        <asp:ControlParameter ControlID="txt_name" Name="name" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txt_class" Name="class" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txt_address" Name="address" 
                            PropertyName="Text" />
                        <asp:ControlParameter ControlID="txt_contact" Name="contactno" 
                            PropertyName="Text" />
                        <asp:ControlParameter ControlID="txt_ticket1" Name="ticket_no1" 
                            PropertyName="Text" />
                        <asp:ControlParameter ControlID="txt_ticket2" Name="ticket_no2" 
                            PropertyName="Text" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="rollno" HeaderText="rollno" 
                            SortExpression="rollno" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                        <asp:BoundField DataField="address" HeaderText="address" 
                            SortExpression="address" />
                        <asp:BoundField DataField="contactno" HeaderText="contactno" 
                            SortExpression="contactno" />
                        <asp:BoundField DataField="ticket_no1" HeaderText="ticket_no1" 
                            SortExpression="ticket_no1" />
                        <asp:BoundField DataField="ticket_no2" HeaderText="ticket_no2" 
                            SortExpression="ticket_no2" />
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
    </strong>
               
        </span></td>
        </tr>
        <tr>
            <td 
                    class="style22">
                ENTER NAME</td>
            <td 
                class="style24">
                <asp:TextBox ID="txt_name" runat="server" BorderStyle="Solid" Height="25px" 
                    Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td 
                    class="style22">
                    ENTER CLASS</td>
            <td 
                class="style24">
                <asp:TextBox ID="txt_class" runat="server" BorderStyle="Solid" Height="25px" 
                        Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td 
                    class="style22">
                    ENTER ADDRESS</td>
            <td 
                class="style24">
                <asp:TextBox ID="txt_address" runat="server" BorderStyle="Solid" Height="25px" 
                        Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style22">
                    ENTER CONTACT NO.</td>
            <td class="style24">
                <asp:TextBox ID="txt_contact" runat="server" BorderStyle="Solid" Height="25px" 
                        Width="130px" MaxLength="10"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td 
                    class="style22">
                    ENTER TICKET NO.1</td>
            <td 
                class="style24">
                <asp:TextBox ID="txt_ticket1" runat="server" BorderStyle="Solid" Height="25px" 
                        Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td 
                    class="style22">
                    ENTER TICKET NO.2</td>
            <td 
                class="style24">
                <asp:TextBox ID="txt_ticket2" runat="server" BorderStyle="Solid" Height="25px" 
                        Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4" class="style28">
                </td>
        </tr>
        <tr>
            <td 
                    class="style23">
        <span class="style1">
            <strong>
                <asp:Label ID="lbl_msg" runat="server" ForeColor="#FF3300"></asp:Label>
    </strong>
               
        </span>
            </td>
            <td 
                class="style20">
                <asp:Button ID="btn_insert" runat="server" Text="INSERT" 
                        style="font-weight: 700" BorderStyle="Solid" Height="30px" Width="80px" 
                        BackColor="Silver" onclick="btn_insert_Click" BorderColor="Black" 
                    ForeColor="#0000CC" />
            </td>
            <td 
                class="style14">
                <asp:Button ID="btn_update" runat="server" BackColor="Silver" 
                        BorderStyle="Solid" Height="30px" style="font-weight: 700" Text="UPDATE" 
                        Width="80px" onclick="btn_update_Click" BorderColor="Black" 
                    ForeColor="#0000CC" />
            </td>
            <td class="style13" 
                style="background-image: url('image/Libbg.jpg')">
                <asp:Button ID="btn_delete" runat="server" Text="DELETE" 
                        style="font-weight: 700" BorderStyle="Solid" Height="30px" Width="80px" 
                        BackColor="Silver" onclick="btn_delete_Click" BorderColor="Black" 
                    ForeColor="#0000CC" />
            </td>
        </tr>
    </table>
    </strong></span>
</asp:Content>
