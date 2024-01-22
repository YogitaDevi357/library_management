<%@ Page Title="" Language="C#" MasterPageFile="~/projectmaster.Master" AutoEventWireup="true" CodeBehind="statusbook_return.aspx.cs" Inherits="library_management.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
      
    <style type="text/css">
        .style12
        {
            width: 97px;
        }
        .style13
        {
            width: 190px;
            font-weight: bold;
        }
        .style14
        {
            font-size: x-large;
            width: 352px;
            height: 33px;
        }
        .style15
        {
            font-size: x-large;
            color: #000066;
        }
        .style16
        {
            color: #000066;
        }
        .style17
        {
        width: 352px;
    }
        .style18
        {
            width: 505px;
            font-weight: bold;
        }
        .style19
        {
            color: #000099;
            width: 534px;
            height: 33px;
        }
        .style20
        {
            width: 534px;
        }
        .style21
        {
            width: 190px;
            font-weight: bold;
            height: 33px;
        }
        .style22
        {
            width: 505px;
            height: 33px;
            font-weight: bold;
        }
    </style>
   
      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td colspan="5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<span 
                        class="style12">&nbsp;&nbsp;&nbsp;&nbsp;<span class="style16">&nbsp;&nbsp;</span><span class="style15"><em 
                        style="font-weight: 700">STATUS&nbsp;BOOK RETURN</em></span></span></td>
        </tr>
        <tr>
            <td class="style4" colspan="5">
                    &nbsp;</td>
        </tr>
        
        <tr>
            <td class="style13">
                    ENTER ACCESSION NO.</td>
            <td class="style17">
                <asp:TextBox ID="txt_accessionno" runat="server" CssClass="style7" Height="25px" 
                    Width="130px" BorderStyle="Solid"></asp:TextBox>
           </td>
            <td class="style18">
                    &nbsp;ROLL NO.</td>
            <td class="style20">
                <asp:TextBox ID="txt_rollno" runat="server" CssClass="style7" 
                    BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
            </td>
            <td>
                    E<strong>NTER DATE OF ISSUE</strong></td>
        </tr>
        <strong>
        <tr>
            <td class="style13">
                    BOOK ID</td>
            <td class="style17">
                <asp:TextBox ID="txt_bookid" runat="server" CssClass="style7" Height="25px" 
                    Width="130px" BorderStyle="Solid"></asp:TextBox>
            </td>
            <td class="style18">
                    BOOK NAME</td>
            <td class="style20">
                <asp:TextBox ID="txt_bookname" runat="server" CssClass="style7" 
                    BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
            </td>
            <td rowspan="5">
                <asp:Calendar ID="clndr_dateissue" runat="server" Height="189px" Width="259px"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="style13">
                    STUDENT NAME</td>
            <td class="style17">
                <asp:TextBox ID="txt_stuname" runat="server" CssClass="style7" 
                    BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
            </td>
            <td class="style18">
                    AUTHOR NAME</td>
            <td class="style20">
                <asp:TextBox ID="txt_authorname" runat="server" BorderStyle="Solid" 
                    Height="25px" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style21">
                    CLASS</td>
            <td class="style14">
                <asp:TextBox ID="txt_class" runat="server" CssClass="style7" 
                    BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
            </td>
            <td class="style22">
                    TICKET NO.</td>
            <td class="style19">
                <asp:TextBox ID="txt_ticketno" runat="server" CssClass="style7" 
                    BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13">
                    DATE OF RETURN</td>
            <td class="style17">
                <asp:TextBox ID="txt_datereturn" runat="server" CssClass="style7" 
                    BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
            </td>
            <td class="style18">
                    DATE OF ISSUE</td>
            <td class="style20">
                <asp:TextBox ID="txt_dateissue" runat="server" CssClass="style7" 
                    BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13">
                    FINE</td>
            <td class="style17">
                <asp:TextBox ID="txt_fine" runat="server" CssClass="style7" BorderStyle="Solid" 
                    Height="25px" Width="130px"></asp:TextBox>
            </td>
            <td class="style18">
                    EXPECTED DATE</td>
            <td class="style20">
                <asp:TextBox ID="txt_expecteddate" runat="server" CssClass="style7" 
                    BorderStyle="Solid" Height="25px" Width="130px"></asp:TextBox>
            </td>
        </tr>
    </table>
</strong>
</asp:Content>
