<%@ Page Title="" Language="C#" MasterPageFile="~/projectmaster.Master" AutoEventWireup="true" CodeBehind="DB_status.aspx.cs" Inherits="library_management.WebForm1" %>
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
        }
        .style16
        {
            height: 23px;
            font-weight: bold;
            width: 508px;
        }
        .style17
        {
            width: 508px;
            font-weight: bold;
            height: 29px;
        }
        .style18
        {
            width: 508px;
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style12">
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <b>R</b><span class="style14">OLLNO</span></td>
            <td class="style1">
            <strong>
                <asp:TextBox ID="txt_rollno" runat="server" BorderStyle="Solid" Height="25px" 
                        Width="130px"></asp:TextBox>
    </strong>
            </td>
        </tr>
        <tr>
            <td class="style16">
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
            <td class="style17">
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
                &nbsp;</td>
            <td class="style18">
                <asp:Button ID="btn_submit" runat="server" BorderStyle="Solid" 
                    onclick="btn_submit_Click" Text="SUBMIT" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </td>
            <td>
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
