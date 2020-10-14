<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SignUpForm1.aspx.vb" Inherits="FirstWebPrjct.SignUpForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Alik Hotel</title>
    <style>
        
        body{

            background-image:url("Images/139841-waterfalls_hero.jpg");
            background-size:contain;
            
        }

        #form1{
            height:690px;
            width: 730px;
            background-color:green;
            margin-left:auto;
            margin-right:auto;
            opacity:0.9;
        }

        .container{
            margin-left: 25px;
        }

        .txtbtn{
            border: 1px solid blue;
            border-radius: 5px;
            font-size: 15px;
            font-style: initial;
            margin-top: 7px;
        }

        .btn{
            border: 1px solid blue;
            border-radius: 5px;
            font-size: 15px;
            font-style: initial;
            background-color:teal;
            font-size: 20px;
        }

        .bt{
            border: 1px solid blue;
            border-radius: 5px;
            font-size: 15px;
            font-style: initial;
            background-color:lightcoral;
            font-size: 20px;

        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="Images/joker-joaquin-phoenix-03-1572458689.jpg" style="height: 163px; width: 730px;"/>

        </div>
        <div class ="container">
            

            <asp:TextBox ID="TextBox1" CssClass="txtbtn" placeholder="Enter your First Name" runat="server" Height="26px" Width="264px"></asp:TextBox>
            <asp:TextBox ID="TextBox2" CssClass="txtbtn" placeholder="Enter your Last Name" runat="server" Height="24px" style="margin-left: 126px" Width="263px"></asp:TextBox>
            

            <br />
            <br />
            <asp:TextBox ID="TextBox3" CssClass="txtbtn" placeholder="Enter your Email Account" runat="server" Height="25px" Width="260px"></asp:TextBox>
            <asp:TextBox ID="TextBox4" CssClass="txtbtn" placeholder="Enter your Phone Number" runat="server" Height="24px" style="margin-left: 131px" Width="262px"></asp:TextBox>
            <br />
            <br />
           
            <asp:TextBox ID="TextBox5" CssClass="txtbtn" placeholder="Enter your Password" runat="server" Height="27px" Width="673px"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox6" CssClass="txtbtn" placeholder="Confirm Password" runat="server" Height="26px" Width="672px"></asp:TextBox>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" CssClass="txtbtn" runat="server" Height="38px" Width="684px">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Prefer not to say</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" CssClass="btn" runat="server" Height="30px" Text="Sign_Up" Width="684px" />
            <br />
            <br />
            <asp:Button ID="Button2" CssClass="bt" runat="server" Height="30px" Text="Exit" Width="684px" />
            <br />
            <br />
            <br />
            <br />
            

        </div>
        <div>
             <a href="https://www.instagram.com/darbyulleyking254/?hl=en">Visit my Instagram </a> 

        </div>
    </form>
</body>
</html>
