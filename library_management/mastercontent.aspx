<%@ Page Title="" Language="C#" MasterPageFile="~/projectmaster.Master" AutoEventWireup="true" CodeBehind="mastercontent.aspx.cs" Inherits="library_management.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style13
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style13" style="width: 1100px">
        <tr>
            <td width="400">
                <asp:Image ID="Image7" runat="server" Height="268px" ImageUrl="~/image/lib.gif" 
                    Width="550px" />
            </td>
            <td width="400">
                <asp:Image ID="Image9" runat="server" Height="270px" 
                    ImageUrl="~/image/library_mgmt.gif" Width="550px" 
                    style="margin-left: 0px" />
            </td>
        </tr>
    </table>
</asp:Content>
