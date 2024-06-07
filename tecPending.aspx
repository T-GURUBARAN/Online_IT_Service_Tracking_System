<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tecPending.aspx.cs" Inherits="Online_IT_Service_Tracking_System.tecPending" %>

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
        margin-left: 1px;
    }
        #f1 {
            height: 528px;
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
    <div style="border: 3px black solid; height: 561px; background-color: #FFFFFF; top: 59px; left: 414px; width: 780px; margin-left: 0px;"; class="CCcontainer">
    <div id="CH1" style="border: 3px black solid;color:white; background-color:brown; height: 34px; width: 309px; margin-left: 246px; margin-top: 0px; margin-right: 0px;">

		<h1 class="CCh1">Pending Compliant</h1>

</div>
       <br />
       <br />
        <br />
       <asp:Label ID="Label2" runat="server" Text="Choose the Lab"></asp:Label>
        <br />
       <asp:DropDownList ID="Lablist" runat="server" Height="33px" Width="298px" >
                    <asp:ListItem Text="123 Lab"></asp:ListItem>
                    <asp:ListItem Text="Multimedia Lab"></asp:ListItem>
                    <asp:ListItem Text="Operating System Lab"></asp:ListItem>
                    <asp:ListItem Text="Network Lab"></asp:ListItem>
       </asp:DropDownList>
        <br />
       <br />
       <br />
       <asp:Button ID="Button1" runat="server" Text="Fetch Report" OnClick="Button1_Click" Height="35px" style="margin-right: 0px; margin-top: 11px" CssClass="hoverable-btn" />
         <br />
       <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" CellPadding="4" OnRowUpdating="GridView1_RowUpdating"
                     OnRowEditing="GridView1_RowEditing"  BackColor ="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px"  Width="16px" Height="16px" style="margin-right: 0px; margin-top: 36px; margin-left: 48px; text-align: center;">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Button ID="btn_Update" runat="server" Text="Update" CommandName="Update" />
                               
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Compilant ID">
                            <ItemTemplate>
                                <asp:Label ID="compliant" runat="server" Text='<%#Eval("ticket_id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="User ID">
                            <ItemTemplate>
                                <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("user_id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Title">
                            <ItemTemplate>
                                <asp:Label ID="lbl_name" runat="server" Text='<%#Eval("title") %>'></asp:Label>
                            </ItemTemplate>
                            
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Description">
                            <ItemTemplate>
                                <asp:Label ID="lbl_Pass" runat="server" Text='<%#Eval("description") %>'></asp:Label>
                            </ItemTemplate>
                            
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Category_id">
                            <ItemTemplate>
                                <asp:Label ID="lbl_cate" runat="server" Text='<%#Eval("category_id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Created at">
                            <ItemTemplate>
                                <asp:Label ID="lbl_create" runat="server" Text='<%#Eval("created_at") %>'></asp:Label>
                            </ItemTemplate>
                            
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Last Updated">
                            <ItemTemplate>
                                <asp:Label ID="lbl_updated_time" runat="server" Text='<%#Eval("updated_at") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_lst_update" runat="server"  TextMode="DateTime" Text='<%#Eval("updated_at") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="assigned To">
                            <ItemTemplate>
                                <asp:Label ID="lbl_assigned_to" runat="server" Text='<%#Eval("assigned_to") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="status">
                            <ItemTemplate>
                                <asp:Label ID="lbl_status" runat="server" Text='<%#Eval("status") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:DropDownList ID="drpstatus" runat="server">
                                    <asp:ListItem text="Open">
                                    </asp:ListItem>
                                    <asp:ListItem Text="InProgess"></asp:ListItem>
                                    <asp:ListItem Text="Closed"></asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Remarks">
                            <ItemTemplate>
                                <asp:Label ID="lbl_remarks" runat="server" Text='<%#Eval("Remarks") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_remarks" runat="server" Text='<%#Eval("Remarks") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
    </div>
  </form>
</body>
</html>
