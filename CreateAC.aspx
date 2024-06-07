<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAC.aspx.cs" Inherits="Online_IT_Service_Tracking_System.CreateAC" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>IT Service Tracking System</title>
    <link  rel="stylesheet" type="text/css" href="OITSMS_design.css" />
     <style>
             .RGhoverable-btn {
         border-style: none;
             border-color: inherit;
             border-width: medium;
             background-color: #4285F4; /* Green */
             color: white;
             padding: 10px 20px;
             text-align: center;
             text-decoration: none;
             display: inline-block;
             font-size: 16px;
             margin: 4px 2px;
             transition-duration: 0.4s;
             cursor: pointer;
             width: 165px;
             height: 34px;
         }
        .RGhoverable-btn:hover {
  background-color: #47a4ce; /* Darker green */
}
	     #RGTextBox5 {
             width: 297px;
             height: 39px;
             border: 3px black solid;
         }
	     #TextBox3 {
             width: 297px;
             height: 38px;
             border: 3px black solid;
         }
	</style>
</head>
<body class="RGbody">
	<form id="f1" method="get" runat="server">
    <div class="RGcontainer">
    <div style="border: 3px black solid; background-color:brown; height: 39px; width: 318px; margin-left: 8px; margin-top: 0px; margin-right: 0px;">

		<h1 class="RGh1">Register</h1>

</div>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;<br />
    &nbsp;<label for="RGLabel1">Enter First name<br />
        </label>
    &nbsp;<input type="text" id="TextBox1" name="TextBox1" runat="server" required /><br />
    <label for=RGLabel2>
        <br />
        Enter Last name</label>
    <input type="text"  id="TextBox2" name="TextBox2" Width="302px" runat="server" required /><br />
    <label for="RGLabel3">
        <br />
        Enter Email<br />
        </label>
&nbsp;<input type="email" id="TextBox3" name="TextBox3" runat="server" required /><br />
    <label for="RGLabel4">
        <br />
        Enter Password<br />
        </label>&nbsp;<input type="password" id="TextBox4" name="TextBox4" runat="server" required /><br />
        <br />
    <label for="DropDownList1" >Role:</label>
    <select id="DropDownList1" name="DropDownList1" runat="server" style="border: 3px black solid; margin-left: 4px; height: 28px;">
      <option value="Admin">Admin</option>
      <option value="User">User</option>
      <option value="Technician">Technician</option>
    </select>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />  
        <br />
    <button type="submit" ID="RGButton1" runat="server" onclick="Button1_Click()" class="RGhoverable-btn">Create Account</button>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <button type="button" ID="RGButton2" onclick="history.back()" runat="server" class="RGhoverable-btn">Back</button>
  </div>		
</form>

