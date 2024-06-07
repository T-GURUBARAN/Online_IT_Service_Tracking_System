<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_Page.aspx.cs" Inherits="Online_IT_Service_Tracking_System.WebForm1" %>

<DOCTYPE html>
<html  xmlns="http://www.w3.org/1999/xhtml">
    <title>IT Service Tracking System</title>
    <link  rel="stylesheet" type="text/css" href="OITSMS_design.css" />
<head runat="server">
   <meta name ="viewport" content="width"/>
 <style>

     .hoverable-btn {
  background-color: #4285F4; /* Green */
  border: none;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}
     .hoverable-btn:hover {
  background-color: #47a4ce; /* Darker green */
}  
      
 </style>
</head>

<body class="LGPbody" style="background-color:#ffffff;">
	<form id="form1" runat="server" action="">
	<div class="LGPcontainer" >
    <div style="background-color:brown; height: 38px; width: 312px; margin-left: 23px; margin-top: 0px;">

		<h1 class="LGPh1">Login Form</h1>

</div>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="LGPtxt_usr" runat="server" Text="Enter a UserID"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" TextMode="Number" Height="32px" style="border: 3px black solid; margin-left: 7px; text-align: center;" Width="298px"></asp:TextBox><br />
        <br />
<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label id="LGPtxt_pass" runat="server" Text="Choose Account Type"></asp:Label>
         &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="28px" Width="100px">
                <asp:ListItem>User</asp:ListItem>
                <asp:ListItem>Admin</asp:ListItem>
                <asp:ListItem>Technician</asp:ListItem>
            </asp:DropDownList>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter a
        <asp:Label ID="txt_pass" runat="server" Text="Password" ></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn" CssClass="hoverable-btn"   runat="server" Text="Login" OnClick="btn_Click" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;
        <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
	</div>
	</form>
	</body>
</html>