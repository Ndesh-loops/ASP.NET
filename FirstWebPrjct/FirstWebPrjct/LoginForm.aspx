<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="LoginForm.aspx.vb" Inherits="FirstWebPrjct.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log in here</title>
    <style>

        body{
            background-color:aquamarine;
        }

        #form1{
            background-color:blue;
            width: 628px;
            height: 600px;
            margin-top:100px;
            margin-left:auto;
            margin-right:auto;
        }
        .container{
            margin-left:90px;
            height: 288px;
            width: 402px;
        }
        .txtbtn{
            border: 1px solid blue;
            border-radius: 5px;
            font-size: 15px;
            font-style: initial;
            margin-top: 7px;
        }

        .bttn{
            border: 1px solid blue;
            border-radius: 5px;
            font-size: 15px;
            font-style: initial;
            margin-top: 7px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="Images/iconfinder_login_enter_sign_in_input_access_3994380.png" style="height: 150px; width: 621px" /> 
        </div>
        <div class ="container">

            <asp:TextBox ID="TextBox1" runat="server" CssClass="txtbtn" placeholder="Enter your Last Name" Height="30px" Width="379px"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" CssClass="txtbtn" placeholder="Enter your Password" Height="30px" Width="381px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="bttn" Height="36px" Text="LOG_IN" Width="393px" BackColor="Lime" BorderColor="#66FF33" />
            <br />
            <br />

            <asp:Button ID="Button2" runat="server" Height="33px" Text="EXIT" Width="394px" BackColor="#FF3300" BorderColor="Red" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Don't have an account ?"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:HyperLink ID="HyperLink1" href="SignUpForm1.aspx" runat="server" BackColor="Black" ForeColor="Lime">Register</asp:HyperLink>
            <br />

        </div>
    </form>
</body>
</html>
