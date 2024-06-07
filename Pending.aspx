<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pending.aspx.cs" Inherits="Online_IT_Service_Tracking_System.Pending" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>IT Service Tracking System</title>
        <style>
        .CCcontainer {        
position: absolute;               
border-radius: 2px;
box-shadow: 1px 1px 11px 2px black;
background-color: #FFFFFF;
font-family: "font-family: Georgia", serif;
            }
        .CCh1{
margin-top: 0%;
font-family: "Trebuchet MS", sans-serif;
font-size: 22pt;
color: #FFFFFF;
height: 36px;
            width: 312px;
                margin-left: 0px;
            }
        #f1 {
            height: 475px;
            margin-top: 0px;
            font-family: "font-family: Georgia", serif;
            font-size: 12pts;
        }
        .CCbody {
background-color: #fff;
border-top-width: thin;
border-width: thin;
background-position: center;
padding: 12px;
font-family: "font-family: Georgia", serif;
font: caption;
font-size: 25pts;
vertical-align: super;
text-align: center;
color: #000000;
        }
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
<body class="CCbody">
   <form id="f1" runat="server">
       <div style="border: 3px black solid; height: 622px; background-color: #FFFFFF; top: 59px; left: 465px; width: 638px; margin-left: 0px;"; class="CCcontainer">
       <div style="border: 3px black solid;color:white; background-color:brown; height: 34px; width: 309px; margin-left: 149px; margin-top: 0px; margin-right: 0px;">

		<h1 class="CCh1">Pending Compliant </h1>

</div>
       <br />
       <br />
       <br />
       <asp:Label ID="Label2" runat="server" Text="Choose the Lab"></asp:Label>
        <br />
       <br />
       <asp:DropDownList ID="Lablist" runat="server" Height="33px" Width="298px"  >
                    <asp:ListItem Text="123 Lab"></asp:ListItem>
                    <asp:ListItem Text="Multimedia Lab"></asp:ListItem>
                    <asp:ListItem Text="Operating System Lab"></asp:ListItem>
                    <asp:ListItem Text="Network Lab"></asp:ListItem>
       </asp:DropDownList><br />
       <br />
       <br />
       <br />
       <asp:Button ID="Button1" runat="server" Text="Fetch Report" OnClick="Button1_Click" Height="35px" style="margin-right: 0px; margin-top: 11px" CssClass="hoverable-btn" />
       <asp:GridView ID="GridView1" runat="server" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" BackColor ="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="483px" Height="16px" style="margin-right: 0px; margin-top: 36px; margin-left: 83px;">
           <AlternatingRowStyle BackColor="White" />
           <Columns>
               <asp:ButtonField CommandName="Cancel" HeaderText="Verify" ShowHeader="True" Text="Cancel" />
               <asp:BoundField />
           </Columns>
           <EmptyDataTemplate>
               <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
           </EmptyDataTemplate>
           <FooterStyle  BackColor="#FFFFCC" ForeColor="#330099"/>
           <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
           <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
           <RowStyle BackColor="White" ForeColor="#330099" />
           <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
           <SortedAscendingCellStyle BackColor="#FEFCEB" />
           <SortedAscendingHeaderStyle BackColor="#AF0101" />
           <SortedDescendingCellStyle BackColor="#F6F0C0" />
           <SortedDescendingHeaderStyle BackColor="#7E0000" />

       </asp:GridView>
  </form>
</div>
</body>
</html>
