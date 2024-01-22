<%@ Page Title="" Language="C#" MasterPageFile="~/projectmaster.Master" AutoEventWireup="true" CodeBehind="report.aspx.cs" Inherits="library_management.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .style13
        {
            width: 100%;
        }
        .style14
        {
            font-size: x-large;
            text-align: center;
            color: #003366;
        }
        .style15
        {
            width: 550px;
        }
        .style16
        {
            height: 23px;
        }
        .style17
        {
            height: 23px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style13" style="background-image: url('image/Libbg.jpg')">
        <tr>
            <td class="style14" colspan="2" style="font-weight: 700">
                REPORT</td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/defalter_fine.aspx" BorderStyle="Ridge">DEFALTER</asp:HyperLink>
                <br />
            </td>
            <td>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/non_defalter.aspx" 
                    BorderStyle="Ridge">NON DEFALTER</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style16" colspan="2">
                </td>
        </tr>
        <tr>
            <td class="style15">
                <asp:HyperLink ID="HyperLink3" runat="server" 
                    NavigateUrl="~/book_list_issued.aspx" BorderStyle="Ridge">LIST OF BOOKS ISSUED</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink4" runat="server" 
                    NavigateUrl="~/books_list_available.aspx" BorderStyle="Ridge">LIST OF AVAILABLE BOOKS</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>
