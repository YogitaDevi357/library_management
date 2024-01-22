<%@ Page Title="" Language="C#" MasterPageFile="~/projectmaster.Master" AutoEventWireup="true" CodeBehind="book_database.aspx.cs" Inherits="library_management.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    
    
    <style type="text/css">
    .style12
    {
        height: 35px;
    }
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
    </style>
    
    
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table bgcolor="Silver" style="height: 222px; width: 655px">
    <tr>
        <td colspan="4" class="style16" 
            style="background-color: #FFCCCC; background-image: url('image/pics.jpg');">
            <span style="font-size: x-large">
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
                class="style14">&nbsp;&nbsp;&nbsp;<em> 
                    </em></span><em> 
                    <span 
                class="style17">BOOK DATABASE(INFORMATION)&nbsp;</span></em></strong></td>
    </tr>
      
    <tr>
        <td class="style3" width="90" 
            style="background-image: url('image/Books-702x400px.jpg')">
                    BOOK&nbsp;&nbsp;ID</td>
        <td class="style14" style="background-image: url('image/Books-702x400px.jpg')">
            <asp:TextBox ID="txt_bookid" runat="server" CssClass="style7" Width="150px" 
                BorderStyle="Solid" Height="30px"></asp:TextBox>
        </td>
        <strong>
        <td style="background-image: url('image/Books-702x400px.jpg')">
                    &nbsp;</td>
        <td class="style13" style="background-image: url('image/Books-702x400px.jpg')">
                    &nbsp;</td>
    </tr>
    <tr>
        <td class="style3" width="90" 
            style="background-image: url('image/Books-702x400px.jpg')">
                    BOOK NAME</td>
        <td class="style14" style="background-image: url('image/Books-702x400px.jpg')">
            <asp:TextBox ID="txt_bookname" runat="server" CssClass="style7" Width="150px" 
                BorderStyle="Solid" Height="30px"></asp:TextBox>
        </td>
        <td style="background-image: url('image/Books-702x400px.jpg')">
                    &nbsp;</td>
        <td class="style13" style="background-image: url('image/Books-702x400px.jpg')">
                    &nbsp;</td>
    </tr>
    <tr>
        <td class="style3" width="90" 
            style="background-image: url('image/Books-702x400px.jpg')">
                    AUTHOR NAME</td>
        <td class="style14" style="background-image: url('image/Books-702x400px.jpg')">
            <asp:TextBox ID="txt_authorname" runat="server" CssClass="style7" Width="150px" 
                BorderStyle="Solid" Height="30px"></asp:TextBox>
        </td>
        <td style="background-image: url('image/Books-702x400px.jpg')">
                    &nbsp;</td>
        <td class="style13" style="background-image: url('image/Books-702x400px.jpg')">
                    &nbsp;</td>
    </tr>
    <tr>
        <td width="90" style="background-image: url('image/Books-702x400px.jpg')">
                    PRICE</td>
        <td class="style14" style="background-image: url('image/Books-702x400px.jpg')">
            <asp:TextBox ID="txt_price" runat="server" CssClass="style7" Width="150px" 
                BorderStyle="Solid" Height="30px"></asp:TextBox>
        </td>
        <td style="background-image: url('image/Books-702x400px.jpg')">
                    &nbsp;</td>
        <td class="style13" style="background-image: url('image/Books-702x400px.jpg')">
                    &nbsp;</td>
    </tr>
    <tr>
        <td class="style3" width="90" 
            style="background-image: url('image/Books-702x400px.jpg')">
                    NO. OF COPIES</td>
        <td class="style14" style="background-image: url('image/Books-702x400px.jpg')">
            <asp:TextBox ID="txt_copies" runat="server" CssClass="style7" Width="150px" 
                BorderStyle="Solid" Height="30px"></asp:TextBox>
        </td>
        <td class="style4" style="background-image: url('image/Books-702x400px.jpg')">
                    </td>
        <td class="style13" style="background-image: url('image/Books-702x400px.jpg')">
                    </td>
    </tr>
    <tr>
        <td colspan="4" style="background-image: url('image/Books-702x400px.jpg')" 
            class="style15">
                    </td>
    </tr>
    <tr>
        <td class="style3" style="background-image: url('image/Books-702x400px.jpg')">
                    &nbsp;</td>
        <td class="style14" style="background-image: url('image/Books-702x400px.jpg')">
            <asp:Button ID="btn_insert" runat="server" Text="INSERT" BorderStyle="Solid" 
                Height="30px" Width="80px" BackColor="Silver" />
        </td>
        <td style="background-image: url('image/Books-702x400px.jpg')">
            <asp:Button ID="btn_delete" runat="server" Text="DELETE" BorderStyle="Solid" 
                Height="30px" Width="80px" BackColor="Silver" />
        </td>
        <td class="style13" style="background-image: url('image/Books-702x400px.jpg')">
            <asp:Button ID="btn_update" runat="server" Text="UPDATE" Height="30px" 
                Width="80px" BorderStyle="Solid" BackColor="Silver" />
        </td>
    </tr>
</table>
</strong>
</asp:Content>
