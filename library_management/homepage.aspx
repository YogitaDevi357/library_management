<%@ Page Language="C#" AutoEventWireup="true" CodeFile ="homepage.aspx.cs" Inherits="library_management.homepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style12
        {
            color: #0066FF;
        }
        .style13
        {
            text-decoration: underline;
        }
    </style>
</head>
<body background="\image\library.jpg">
    <form id="form1" runat="server">
    <div style="background-image: url('image/loginlib.jpg'); height: 292px; width: 1110px;">
    
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
          <div id="lefthead" style="width: 250px;  float: left">  
              <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/create_user.aspx" 
                  style="font-weight: 700; font-size: x-large; color: #0033CC" 
                  BackColor="Black" ForeColor="#0033CC">SIGN UP</asp:HyperLink>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/login.aspx" 
                  style="font-weight: 700; font-size: x-large; color: #0033CC" 
                  BackColor="Black" ForeColor="#0033CC">LOGIN</asp:HyperLink>
                   <br />
              <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" 
                  ImageUrl="~/image/homesign.jpg" Width="100px" onclick="ImageButton1_Click" 
                  PostBackUrl="~/create_user.aspx" />
              &nbsp;&nbsp;&nbsp;
              <asp:ImageButton ID="ImageButton2" runat="server" Height="100px" 
                  ImageUrl="~/image/homelogin.jpg" Width="100px" 
                  PostBackUrl="~/login.aspx" />
              <br />
                   </div> 

      <div id="righthead"  style="width: 856px; margin-left: 250px; ">
     <marquee style="width: 858px"><asp:Image ID="Image2" runat="server" Height="172px" 
            ImageUrl="\image\cartoon.jpg" Width="270px"/></marquee>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            </div>
    <div style="font-size: xx-large; font-weight: 700; font-style: italic; width: 1100px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<span class="style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="style13">Prepared by Yogita and Simran</span></span></div>
    </form>
</body>
</html>
