<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Online_IT_Service_Tracking_System.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" type="image/ico" href="logo.png" />
    <title>IT Service Tracking System</title>
</head>
    
<body style="background: #ED213A; 
background: -webkit-linear-gradient(to right, #93291E, #ED213A); 
background: linear-gradient(to right, #93291E, #ED213A);
">
    <style type="text/css">
        .column {
            float: left;
            width: 50%;
        }
        .row:after {
            display: table;
            clear: both;
        }
        .navbar {
    background-color: #333;
    position: fixed;
    top: 0;
    width: 120%;
    margin-left:-548px;
  }
        h1 {
            margin-top:42px;
        }
  .navbar a {
    float: left;
    color: #f2f2f2;
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
        <center><h1><img src="logo.png" width="100px"/>Online IT Service Tracking System</h1></center><br />
        <div style=" border-color: black; 
            
            top:25%;
            left: 50%;
            width: 50%;
            position:fixed;
            height: 32px;
            margin: -100px 0 0 -17%;
            " id="menubar">
            
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" MaximumDynamicDisplayLevels="1" CssClass="navbar">
                
                <Items>
                                                               
                    <asp:MenuItem Text="Home" Value="Home"></asp:MenuItem>
                    <asp:MenuItem Text="About" Value="About"></asp:MenuItem>
                    <asp:MenuItem Text="Menu" Value="Menu" >
                        <asp:MenuItem Text="Pending Compilant" NavigateUrl="~/tecPending.aspx" ></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Gallery" Value="Gallery" NavigateUrl="~/Gallery.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Contact" Value="Contact"></asp:MenuItem>
                    <asp:MenuItem Text="Logout" Value="Logout" NavigateUrl="~/Logout.aspx"></asp:MenuItem>
                </Items>
                <StaticMenuStyle HorizontalPadding="120px" />
            </asp:Menu><br />
        </div>
        <br />
        <br />
        <div class="row">
            <div class="column"><p>An Online IT Service Tracking System is a software application that enables organizations to manage their IT service requests and track the status of their service tickets in real-time. The system allows users to create service requests, view the status of their requests, and communicate with IT support personnel to resolve issues.</p></div>
            <img src="onlineit.jpg" width="385" />
        </div>
         <div class="row">
            <div class="column"><h2>Our Features</h2><br />
                <p style="font-size: 24px;"><b>Service Request Management:</b> The system allows users to create service requests and provides a centralized location for submitting and tracking requests.</p>
                <p style="font-size: 24px;"><b>Service Ticket Tracking:</b> The system provides real-time tracking of service requests, enabling users to view the status of their requests and track progress.</p>
                <p style="font-size: 24px;"><b>Communication and Collaboration:</b> The system enables communication and collaboration between IT support personnel and users, allowing them to exchange information and resolve issues.</p>
                <p style="font-size: 24px;"><b>Reporting and Analytics:</b> The system provides reporting and analytics capabilities, allowing IT organizations to analyze service request trends and identify areas for improvement.</p>
            </div>
        </div>
        <div class="row">
            <div class="column"><h2>Benefits</h2><br />
                <p style="font-size: 24px;"><b>Improved Efficiency:</b> An online IT service tracking system can streamline the IT service request process and reduce response times, resulting in improved efficiency and productivity.</p>
                <p style="font-size: 24px;"><b>Enhanced User Experience:</b> The system can provide users with a self-service portal and a single point of contact for all IT service requests, improving the user experience.</p>
                <p style="font-size: 24px;"><b>Better Communication and Collaboration:</b> The system can improve communication and collaboration between IT support personnel and users, resulting in faster issue resolution and better customer satisfaction.</p>
                <p style="font-size: 24px;"><b>Increased Visibility and Transparency:</b> The system provides real-time tracking and reporting capabilities, enabling IT organizations to monitor service request trends and identify areas for improvement.</p>          
                <p style="font-size: 24px;"><b>Improved Service Quality:</b> The system can help IT organizations to deliver high-quality services by providing tools to manage service requests and improve communication with users.</p>
            </div>
        </div>
        <p>Overall, an Online IT Service Tracking System can help organizations to improve their IT service management processes, enhance customer satisfaction, and increase productivity.</p>
    </form>
</body>
</html>
