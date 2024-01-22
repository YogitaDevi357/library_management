<%@ Page Language="C#" AutoEventWireup="true" CodeFile ="create_user.aspx.cs" Inherits="library_management.create_user1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 995px;
            height: 397px;
        }
        .style3
        {
            width: 461px;
            font-weight: bold;
        }
        .style5
        {
            width: 308px;
        }
        .style6
        {
            font-size: x-large;
        }
        .style12
        {
            color: #0066FF;
            text-decoration: underline;
        }
        .style13
        {
            color: #000099;
        }
        .style14
        {
            font-size: xx-large;
        }
    </style>
</head>
<body background="\image\library.jpg">
    <form id="form1" runat="server">
    <div width: 1100px; height: 700px;">
    
        <table class="style1" style="background-image: url('image/Libbg.jpg')">
            <tr>
                <td class="style6" colspan="2" 
                    style="background-image: url('image/loginlib.jpg')">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style6" colspan="2">
                    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
                        class="style13"><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
                        class="style14"> 
                    CREATE USER</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </em>
                    <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/image/home.jpg" 
                        NavigateUrl="~/homepage.aspx">HyperLink</asp:HyperLink>
                    </span></strong></td>
            </tr>
            <tr>
                <td class="style3">
                    USER NAME</td>
                <td class="style5">
                    <asp:TextBox ID="txt_name" runat="server" BorderStyle="Solid" Height="25px" 
                        Width="130px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    PASSWORD</td>
                <td class="style5">
                    <asp:TextBox ID="txt_password" runat="server" BorderStyle="Solid" Height="25px" 
                        Width="130px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    CONFIRM PASSWORD</td>
                <td class="style5">
                    <asp:TextBox ID="txt_cpassword" runat="server" BorderStyle="Solid" 
                        Height="25px" Width="130px" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txt_password" ControlToValidate="txt_cpassword" 
                        ErrorMessage="password not match" ForeColor="#FF3300" SetFocusOnError="True"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    EMAIL</td>
                <td class="style5">
                    <asp:TextBox ID="txt_email" runat="server" BorderStyle="Solid" Height="25px" 
                        Width="130px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp; 
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="CREATE USER" BorderStyle="Solid" Height="25px" 
                        style="font-weight: 700" />
                    <asp:Label ID="Label_msg" runat="server" ForeColor="#FF66CC" 
                        style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:library %>" 
                        InsertCommand="INSERT INTO user_login(user_name, password, confirm_password, Email) VALUES (@user_name, @password, @confirm_password, @Email)" 
                        SelectCommand="SELECT user_name, password, confirm_password, Email FROM user_login">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="txt_name" Name="user_name" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="txt_password" Name="password" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="txt_cpassword" Name="confirm_password" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="txt_email" Name="Email" PropertyName="Text" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" Visible="False">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="user_name" HeaderText="user_name" 
                                SortExpression="user_name" />
                            <asp:BoundField DataField="password" HeaderText="password" 
                                SortExpression="password" />
                            <asp:BoundField DataField="confirm_password" HeaderText="confirm_password" 
                                SortExpression="confirm_password" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
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
                </td>
            </tr>
        </table>
    
    </div>

    <div style="font-size: xx-large; font-weight: 700; font-style: italic; width: 1100px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <span class="style12">Prepared by Yogita and Simran</span></div>
    </form>
</body>
</html>
