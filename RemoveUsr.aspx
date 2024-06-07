<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RemoveUsr.aspx.cs" Inherits="Online_IT_Service_Tracking_System.RemoveUsr" %>
<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>IT Service Tracking System</title>
</head>
<body>
    <style>

            body {
                border-top-width: thin;
                border-width: thin;
                background-position: center;
                padding: 12px;
                background-image: linear-gradient(45deg, #a5ccef, transparent);
                font-family: Arial,Helvetica sans-serif;
                font: caption;
                font-size: medium;
                font-style: italic;
                background-color: linear-gradient(to bottom, #B55FEB 0%, #472B52 55%);
                vertical-align: super;
                text-align: justify;
            }
            .imgcontainer {
                text-align: center;
                margin: 2px 0 12px 0;
            }

    input[type=password] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 9px solid #ccc                                                                                                            ;
        box-sizing:border-box;
        box-shadow: 0px 0px 6px 0px blue;
    }

    #textBox1 {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0 8px 0px;
                display: inline-block;
                border: 5px solid #ccc;
                box-sizing: border-box;
                box-shadow: 0px 0px 0px 0px blue;
                float: right;
                cursor: pointer;
                elevation: inherit;
                outline-style: inset;
                outline-color: #FFFFFF;
                border-left-width: thin;
            }
    #Label2 {
                width: 300px;
                padding: 6px 12px;
                margin: 2px 0;
                display: inline-block;
                border: 3px solid #ccc ;
                box-sizing: border-box;
                box-shadow: 0px 0px 2px 0px blue;
            }

      .container {
        box-shadow: 0px 0px 0px 0px blue;
        padding: 16px;
        background-image:linear-gradient(35deg,#568aff,#bea2e3,#20c1ff);
        top: 51%;
        left: 29%;
        position: absolute;
        transform: translate(-50%,-50%);
    }


    .imgcontainer {
        text-align: center;
        margin: 2px 0 12px 0;
    }

    img.avatar {
        width: 40%;
        border-radius: 50%;
    }
     #btn:hover {
    background-image: linear-gradient(35deg,#909eff,#77dffd,#829ff3,#65ffff,#568aff,#bea2e3,#20c1ff);
    box-shadow: 1px 1px 8px 3px black;
        }
   
    .container {
                box-shadow: 0px 0px 4px 0px yellow;
                padding: 12px 20px;
                top: 53%;
                left: 47%;
                position: absolute;
                transform: translate(-50%,-50%);
                width: 642px;
                height: 591px;
                font: small-caption;
                background-color: #87dcf5;
                border: 5px white solid;
                color: #FFFFFF;
                font-family: "Times New Roman", Times, serif;
                font-size: large;
                cursor: default;
            }
   container:hover {
    background-image: linear-gradient(35deg,#909eff,#77dffd,#829ff3,#65ffff,#568aff,#bea2e3,#20c1ff);
    box-shadow: 1px 1px 8px 3px black;
        }         
       

    span.psw {
        float: right;
        padding-top: 16px;
    }

    span.psw {
        float: right;
        padding-top: 100px;
    }

    @media screen and (max-width:300px) {
        span.psw {
            display: none;
            float: none;
        }
        button {
            justify-content:flex-end;
        }
    }
    .newStyle1 {
        background-color: #CCFFCC;
        background-image: url('LoginApp/Content/login.png');
    }
</style>
    <center>
        <asp:Label ID="Label1" runat="server" Text="Create Compliant" Font-Size="XX-Large"></asp:Label><br />
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        <form id="f1" runat="server"> 
            <div>
                
                
                <asp:Label ID="Label2" runat="server" Text="Choose Lab">
                <asp:DropDownList ID="DprtList" runat="server" >
                    <asp:ListItem Text="123 Lab"></asp:ListItem>
                    <asp:ListItem Text="Multimedia Lab"></asp:ListItem>
                    <asp:ListItem Text="Operating System Lab"></asp:ListItem>
                    <asp:ListItem Text="Network Lab"></asp:ListItem>
                </asp:DropDownList></asp:Label><br />
                <br />
                
                <asp:Label ID="Label4" runat="server" Text="Describe the compilant"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox><br />
                <asp:Label ID="Label6" runat="server" Text="Compilant Date"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="DateTimeLocal" style="margin-left: 46px" Width="161px"></asp:TextBox>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Choose Category"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Text="Computer"></asp:ListItem>
                    <asp:ListItem Text="Electrical Device"></asp:ListItem>
                    <asp:ListItem Text="Furniture"></asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click"/>
                <asp:Button ID="Button2" runat="server" Text="Show Compilaints" OnClick="btn_conform_Click"/><br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CellPadding="6" OnRowCancelingEdit="GridView1_RowCancelingEdit"
                     OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" OnRowDataBound="GridView1_RowDataBound">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Button ID="btn_Update" runat="server" Text="Update" CommandName="Update" />
                                <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel" />
                                <asp:Button ID="btn_del" runat="server" Text="Delete" CommandName="Delete" />
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
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_Name" runat="server" Text='<%#Eval("title") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Description">
                            <ItemTemplate>
                                <asp:Label ID="lbl_Pass" runat="server" Text='<%#Eval("description") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_desc" runat="server" Text='<%#Eval("description") %>'></asp:TextBox>
                            </EditItemTemplate>
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
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_create" runat="server" TextMode="DateTime" Text='<%#Eval("created_at") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Last Updated">
                            <ItemTemplate>
                                <asp:Label ID="lbl_updated_time" runat="server" Text='<%#Eval("updated_at") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_lst_update" runat="server" Text='<%#Eval("updated_at") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Assigned To">
                            <ItemTemplate>
                                <asp:Label ID="lbl_assigned_to" runat="server" Text='<%#Eval("assigned_to") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlAssignedTo" runat="server" ></asp:DropDownList>
                            </EditItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </form>
    </center>
</body>
</html>