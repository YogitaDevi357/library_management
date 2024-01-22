<%@ Page Title="" Language="C#" MasterPageFile="~/projectmaster.Master" AutoEventWireup="true" CodeBehind="book_issue.aspx.cs" Inherits="library_management.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .style15
    {
        font-size: x-large;
        height: 27px;
        width: 728px;
        color: #000066;
    }
    .style19
    {
        width: 731px;
    }
        .style8
        {
            font-weight: 700;
        }
    .style14
    {
        width: 508px;
        font-weight: bold;
    }
    .style17
    {
        width: 764px;
    }
    .style13
    {
        width: 731px;
        font-weight: bold;
    }
    .style20
    {
        height: 29px;
        width: 731px;
        font-weight: bold;
    }
    .style21
    {
        height: 29px;
        width: 728px;
    }
    .style18
    {
        height: 29px;
        width: 764px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form2" runat="server">
    <span class="style1">
    <table bgcolor="Silver" style="width: 1000px; height: 300px">
        <tr>
            <td align="center" colspan="4">
                <span class="style15"><em>&nbsp;</em></span><span class="style4"><strong><span 
                    class="style15"><em> STUDENT&nbsp;&nbsp; BOOK ISSUE&nbsp;</em></span><br />
                </strong></span>
            </td>
        </tr>
        </strong></strong>
        <tr>
            <td class="style19">
                <strong>NAME</strong></td>
            </strong>
            <strong>
            <td class="style1">
                <asp:TextBox ID="txt_name" runat="server" CssClass="style8" BorderColor="Black" 
                    BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
            </td>
            <td class="style14">
                    BOOK ID</td>
            <td class="style17">
                <strong>
                <asp:TextBox ID="txt_bookid" runat="server" BorderColor="Black" 
                    BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style19">
                <b>ROLL NO.</b></td>
            <td>
                <asp:TextBox ID="txt_rolno" runat="server" CssClass="style8" 
                    BorderColor="Black" BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
            </td>
            <td>
                <b>&nbsp;BOOK NAME&nbsp; </b>
            </td>
            <td class="style17">
                <asp:TextBox ID="txt_bookname" runat="server" BorderColor="Black" 
                    BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style19">
                <b>CLASS</b></td>
            <td>
                <asp:TextBox ID="txt_class" runat="server" CssClass="style8" 
                    BorderColor="Black" BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
            </td>
            <td>
                <b>AUTHOR NAME</b></td>
            <td class="style17">
                <asp:TextBox ID="txt_author" runat="server" BorderColor="Black" 
                    BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style19">
                <b>PHONE NO.</b></td>
            <td>
                <asp:TextBox ID="txt_phnno" runat="server" CssClass="style8" 
                    BorderColor="Black" BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
            </td>
            <td>
                <b>STATUS</b></td>
            <td class="style17">
                <asp:TextBox ID="txt_status" runat="server" BorderColor="Black" 
                    BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style19">
                <b>ACCESSION NO.</b></td>
            <td>
                <asp:TextBox ID="txt_accessionno" runat="server" CssClass="style8" 
                    BorderColor="Black" BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
            </td>
            <td>
                <b>DATE OF ISSUE</b></td>
            <td class="style17">
                <asp:TextBox ID="txt_dateissue" runat="server" BorderColor="Black" 
                    BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13">
                    TICKET NO.1</td>
            <td class="style3">
                <asp:TextBox ID="txt_ticket1" runat="server" CssClass="style8" 
                    BorderColor="Black" BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
            </td>
            <td>
                <b>EXPECTED DATE</b></td>
            <td class="style17">
                <asp:TextBox ID="txt_expecteddate" runat="server" BorderColor="Black" 
                    BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style20">
                    TICKET NO.2</td>
            <td class="style21">
                <asp:TextBox ID="txt_ticket2" runat="server" CssClass="style8" 
                    BorderColor="Black" BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
            </td>
            <td class="style21">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;</td>
            <td class="style18">
            </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
        <span class="style1">
            <strong>
                <b>
                <asp:RadioButton ID="rbn_ticket1" runat="server" Text="TICKET1" 
                    oncheckedchanged="rbn_ticket1_CheckedChanged" />
                </b>
    </strong>
               
        </span></td>
            <td>
        <span class="style1">
            <strong>
                <b>
                <asp:RadioButton ID="rbn_ticket2" runat="server" Text="TICKET2" />
                </b>
    </strong>
               
        </span>
            </td>
            <td colspan="2" rowspan="2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                    &nbsp;</td>
            <td>
                <asp:Button ID="btn_bookissue" runat="server" Text="BOOK ISSUE" 
                    BorderColor="Black" BorderStyle="Solid" Height="30px" Width="82px" 
                    BackColor="Silver" />
            </td>
            <td colspan="2">
                    &nbsp;</td>
        </tr>
    </table>
    </strong></span>
    </form>
</asp:Content>
