<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login_Page.aspx.cs" Inherits="Online_IT_Service_Tracking_System.Admin_Login_Page" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" type="image/ico" href="logo.png" />
    <title>Online IT Service Tracking System</title>
</head>
    
    
<body style="background-color: #ffffe6;";>
<p>
           s</p>
<p>
<br />
</p>
    <style type="text/css">
        .column {
            float: left;
width: 50%;
height: 111px;
margin-top: 4px;
        }
        .row:after {
            display: table;
            clear: both;
        }
        .navbar {
    background-color: #b30000;
position: fixed;
top: 0;
width: 120%;
margin-left:-548px;
  }
        h1 {
            margin-top: 42px;
text-align: center;
height: 62px;
color: #000000;
font-family: "Trebuchet MS", sans-serif;
        }
  .navbar a {
  float: left;
color:  #0d0d0d;
font-family: 'Trebuchet MS', sans-serif;
text-align: center;
padding: 14px 16px;
text-decoration: none;
font-size: 17px;
margin-left:48px;
  }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
    </style>

    <form id="form1" runat="server">
       <center>
<h1>Online IT Service Tracking System</h1>
<p style="height: 67px; width: 1385px; margin-left: 47px; text-align: center; font-family: 'font-family: Georgia', serif; font-size: 18px; color: #b30000; margin-top: 0px;">An Online IT Service Tracking System is a software application that enables organizations to manage their IT service requests and track the status of their service tickets in real-time. The system allows users to create service requests, view the status of their requests, and communicate with IT support personnel to resolve issues.</p>
</center>
<br />
<div style=" border-color: #808080; 

top:26%;
left: 53%;
width: 67%;
position:fixed;
height: 32px;
margin: -100px 0 0 -17%;
            " id="menubar">
            
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" MaximumDynamicDisplayLevels="1" CssClass="navbar">
                
                <Items>                                         
                    <asp:MenuItem Text="Home" Value="Home"></asp:MenuItem>
                    <asp:MenuItem Text="About" Value="About"></asp:MenuItem>
                    <asp:MenuItem Text="Menu" Value="Menu" >
                        <asp:MenuItem Text="Create Compliant" NavigateUrl="~/CreateCompliant.aspx" ></asp:MenuItem>
                        <asp:MenuItem Text="Pending Compilant" NavigateUrl="~/Pending.aspx" ></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Gallery" Value="Gallery" NavigateUrl="~/Gallery.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Contact" Value="Contact"></asp:MenuItem>                    
                    <asp:MenuItem Text="Logout" Value="Logout" NavigateUrl="~/Login_Page.aspx"></asp:MenuItem>
                </Items>
                <StaticMenuStyle HorizontalPadding="120px" />
            </asp:Menu><br />
        </div>
        <br />
        <br />
        <div class="row">
            <img src="onlineit.jpg" style="width: 431px; margin-left: 545px" />
        </div>
          <div class="column"><br />
                <h2 style="height: 56px; margin-top: 85px; text-align: center; font-family: 'Trebuchet MS', sans-serif; color: #000000; width: 626px;">&nbsp;OurFeaturs</h2>
                <p style="font-size: 20px; font-family: 'font-family: Georgia', serif; height: 69px; color: #b30000; width: 711px;"><b>Service Request Management:</b> The system allows users to create service requests and provides a centralized location for submitting and tracking requests.</p>
                <p style="font-size: 20px; font-family: 'font-family: Georgia', serif; height: 60px; color: #b30000; width: 710px;"><b>Service Ticket Tracking:</b> The system provides real-time tracking of service requests, enabling users to view the status of their requests and track progress.</p>
                <p style="font-size: 20px; font-family: 'font-family: Georgia', serif; color: #b30000; width: 721px;"><b>Communication and Collaboration:</b> The system enables communication and collaboration between IT support personnel and users, allowing them to exchange information and resolve issues.</p>
                <p style="font-size: 20px; font-family: 'font-family: Georgia', serif; color: #b30000; width: 711px;"><b>Reporting and Analytics:</b> The system provides reporting and analytics capabilities, allowing IT organizations to analyze service request trends and identify areas for improvement.</p>
            </div>
        </div>
        <div class="column">
        <h2>&nbsp;</h2>
<h2>&nbsp;</h2>
            <<h2 style="height: 43px; text-align: center; font-family: 'Trebuchet MS', sans-serif; color: #000000;">Benefits</h2>
            <p style="font-size: 20px; font-family: 'font-family: Georgia', serif; color: #b30000;">
                <b style="color:";><b>Improved Efficiency:</b> An online IT service tracking system can streamline the IT service request process and reduce response times, resulting in improved efficiency and productivity.</b>
            <p style="font-size: 20px; font-family: 'font-family: Georgia', serif; color: #b30000;">
            <b>Enhanced User Experience:</b> The system can provide users with a self-service portal and a single point of contact for all IT service requests, improving the user experience.</p>
            <p style="font-size: 20px; font-family: 'font-family: Georgia', serif; color: #b30000;">
            <b>Better Communication and Collaboration:</b> The system can improve communication and collaboration between IT support personnel and users, resulting in faster issue resolution and better customer satisfaction.</p>
            <p style="font-size: 20px; font-family: 'font-family: Georgia', serif; color: #b30000;">
            <b>Increased Visibility and Transparency:</b> The system provides real-time tracking and reporting capabilities, enabling IT organizations to monitor service request trends and identify areas for improvement.</p>   
            <p style="font-size: 20px; font-family: 'font-family: Georgia', serif; color: #b30000;">       
            <b>Improved Service Quality:</b> The system can help IT organizations to deliver high-quality services by providing tools to manage service requests and improve communication with users.</p>
            </div>
    <p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
    </form>
</body>
</html>