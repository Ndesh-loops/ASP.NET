<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Dashboard.aspx.vb" Inherits="FirstWebPrjct.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to home page</title>
    <style>
        body{
            background-color:bisque;
            
        }
        #form1{
            background-image:url("Images/139841-waterfalls_hero.jpg")
        }
        
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
       
           <img src="Images/iconfinder_login_enter_sign_in_input_access_3994380.png" style="height: 205px" /> <img src="Images/deadpool-2-youtube-art-comics-funny-character-png-clip-art-thumbnail.png" style="height: 208px; width: 579px" /> 
        </div>
        <div>
                        
            <asp:Menu ID="Menu1" runat="server" ForeColor="Black" Orientation="Horizontal" BackColor="White">
                <Items>
                    <asp:MenuItem Text="Home Page" Value="Home Page" NavigateUrl="~/Dashboard.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Products" Value="Products" NavigateUrl="~/Products.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="About Us" Value="About Us" NavigateUrl="~/AboutUs.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Contact us" Value="Contact us"></asp:MenuItem>
                    <asp:MenuItem Text="Services" Value="Services"></asp:MenuItem>
                    <asp:MenuItem Text="Help" Value="Help"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="Lime" ForeColor="Black" />
                <StaticMenuItemStyle Font-Bold="True" Font-Size="20px" HorizontalPadding="20px" VerticalPadding="10px" BackColor="White" />
                <StaticMenuStyle BackColor="White" HorizontalPadding="50px" />
            </asp:Menu>      
        </div>
        <div>
            <img src="Images/e144fc9686dde6eea45db7b2367213a1.png" style="height: 232px; width: 790px; margin-right: 0px" />
        </div>
        <div>
            <h1 style="color:red;">Why are we the best dancers in the world??</h1> 
            <p  style="color:snow;"> Because we dedicate our time and effort to it </p>
            <strong style="color:snow;">It is very key and important to put in eough time and effort to perfect dance</strong>
            <p style="color:snow;">We challenge every dancer out there to enroll with us this spring on this journey of dedication</p>
            <h3  style="color:snow;">Here are some of the stuff we do here at spaxxville company</h3>
            
            <img src="Images/hiphop.jpg" style="height: 160px; width: 230px; margin-right: 0px; margin-top: 10px; margin-bottom: 20px" /> 
            <img src="Images/sydney_dance_co_ultimo_finals_nov_2019_gez_xavier_mansfield_photography_2019-98-2-1024x683.jpg"style="height: 160px; width: 230px; margin-right: 0px; margin-top: 10px; margin-bottom: 20px" />
            <img src="Images/Versa-Style-3-SM.jpg" style="height: 160px; width: 230px; margin-right: 0px; margin-top: 10px; margin-bottom: 20px" />
        </div>
      <footer style="background-color:black; width=100px" >
          <h4 style="color:snow;"> Contact us with </h4>       
          <p style="color:snow;"> Email : espaxx@gmail.com</p>
          <p style="color:snow;"> Phone : 078383843724</p>
      </footer>
    </form>
</body>
</html>
