<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="library_management.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 102%;
            height: 547px;
        }
        .style2
        {
            height: 280px;
        }
        .style4
        {
        }
        .style6
        {
            height: 13px;
            width: 368px;
        }
        .style7
        {
            height: 13px;
            font-style: italic;
            color: #0000CC;
            width: 225px;
            font-size: large;
            font-weight: bold;
        }
        .style8
        {
            font-style: italic;
            color: #0000CC;
            font-size: large;
            font-weight: bold;
        }
        .style9
        {
            width: 225px;
            height: 80px;
        }
        .style12
        {
            width: 368px;
            color: #0066FF;
        }
        .style13
        {
        }
        .style14
        {
            width: 368px;
            height: 80px;
        }
        .style15
        {
            width: 308px;
            height: 80px;
        }
        .style16
        {
            font-style: italic;
            color: #0000CC;
            font-size: x-large;
            font-weight: bold;
            height: 11px;
        }
        .style17
        {
            width: 368px;
            color: #0066FF;
            height: 11px;
        }
        .style18
        {
            font-size: x-large;
        }
    </style>
</head>
<body background="\image\library.jpg" style="height: 643px; width: 1102px">
    <form id="form1" runat="server">
    <div style="height: 601px; width: 1095px">
    
        <table class="style1" style="width: 1100px; height: 300px">
            <tr>
                <td class="style2" colspan="4" 
                    style="background-image: url('image/loginlib.jpg'); font-size: large;">
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
                <td class="style4" rowspan="5">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/image/Login.jpg" 
                        Width="404px" />
                </td>
                <td class="style8" colspan="3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/image/home.jpg" 
                        NavigateUrl="~/homepage.aspx"></asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style16">
&nbsp; 
                    USERNAME</td>
                <td class="style17">
                    <asp:TextBox ID="txt_username" runat="server" BorderStyle="Solid" Height="25px" 
                        Width="130px" AutoPostBack="True"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txt_username" ErrorMessage="pls enter name" 
                        ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td class="style13" rowspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="sql_grid" Visible="False">
                        <Columns>
                            <asp:BoundField DataField="password" HeaderText="password" 
                                SortExpression="password" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="style7">
&nbsp;<span class="style18"> PASSWORD</span></td>
                <td class="style6">
                    <asp:TextBox ID="txt_password" runat="server" BorderStyle="Solid" Height="25px" 
                        Width="130px" AutoPostBack="True" ontextchanged="txt_password_TextChanged" 
                        TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:SqlDataSource ID="sql_grid" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:library %>" 
                        
                        SelectCommand="SELECT [password] FROM [user_login] WHERE ([user_name] = @user_name)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txt_username" Name="user_name" 
                                PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:Button ID="btn_login" runat="server" BorderColor="Black" 
                        BorderStyle="Solid" Height="25px" 
                        style="color: #3333CC; font-style: italic; font-size: large; font-weight: 700" 
                        Text="LOGIN" Width="80px" onclick="btn_login_Click" 
                        UseSubmitBehavior="False" />
                    <asp:Label ID="lbl_try" runat="server"></asp:Label>
                </td>
                <td class="style14">
                    </td>
                <td class="style15">
                    <asp:Button ID="btn_reset" runat="server" BorderColor="Black" 
                        BorderStyle="Solid" Height="25px" 
                        style="font-weight: 700; font-size: large; font-style: italic; color: #3333CC" 
                        Text="RESET" Width="80px" onclick="btn_reset_Click" 
                        UseSubmitBehavior="False" />
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
