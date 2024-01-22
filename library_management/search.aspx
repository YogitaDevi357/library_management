<%@ Page Title="" Language="C#" MasterPageFile="~/projectmaster.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="library_management.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style13
    {
        width: 100%;
    }
    .style14
    {
        font-size: x-large;
    }
    .style15
    {
        color: #000066;
    }
        .style16
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style13">
    <tr>
        <td class="style14" colspan="2">
            <strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SEARCH</span></em></strong></td>
    </tr>
    <tr>
        <td class="style16">
            <b>TABLE REPORT</b></td>
        <td class="style16">
            </td>
    </tr>
    <tr>
        <td>
            <b></b></td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <b>STUDENT NAME</b></td>
        <td>
            <asp:TextBox ID="txt_stuname" runat="server" BorderStyle="Solid" Height="25px" 
                Width="130px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
