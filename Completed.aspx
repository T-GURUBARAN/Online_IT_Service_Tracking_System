<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Completed.aspx.cs" Inherits="Online_IT_Service_Tracking_System.Completed" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>IT Service Tracking System</title>
</head>
<body>
    <form id="form1" runat="server" >
        
       <div>

           <br />
           <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
           <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="100%" Height="800px" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" >
                <LocalReport ReportPath="Report1.rdlc" ReportEmbeddedResource="Online_IT_Service_Tracking_System.Report1.rdlc">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
           <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" TypeName="DataSet1TableAdapters."></asp:ObjectDataSource>
           <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" TypeName="Online_IT_Service_Tracking_System.DataSet1TableAdapters.Tickets_TableTableAdapter" SelectMethod="GetData" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" UpdateMethod="Update">
               <DeleteParameters>
                   <asp:Parameter Name="Original_ticket_id" Type="Int32" />
               </DeleteParameters>
               
               <InsertParameters>
                   <asp:Parameter Name="user_id" Type="Int32" />
                   <asp:Parameter Name="title" Type="String" />
                   <asp:Parameter Name="description" Type="String" />
                   <asp:Parameter Name="category_id" Type="Int32" />
                   <asp:Parameter Name="created_at" Type="DateTime" />
                   <asp:Parameter Name="updated_at" Type="DateTime" />
                   <asp:Parameter Name="assigned_to" Type="Int32" />
                   <asp:Parameter Name="status" Type="String" />
                   <asp:Parameter Name="Remarks" Type="String" />
               </InsertParameters>
               <UpdateParameters>
                   <asp:Parameter Name="user_id" Type="Int32" />
                   <asp:Parameter Name="title" Type="String" />
                   <asp:Parameter Name="description" Type="String" />
                   <asp:Parameter Name="category_id" Type="Int32" />
                   <asp:Parameter Name="created_at" Type="DateTime" />
                   <asp:Parameter Name="updated_at" Type="DateTime" />
                   <asp:Parameter Name="assigned_to" Type="Int32" />
                   <asp:Parameter Name="status" Type="String" />
                   <asp:Parameter Name="Remarks" Type="String" />
                   <asp:Parameter Name="Original_ticket_id" Type="Int32" />
               </UpdateParameters>
           </asp:ObjectDataSource>

           <br />
           <br />



       </div> 
               
    </form>
</body>
</html>
