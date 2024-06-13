<%@ Page Title="" Language="C#"" MasterPageFile="~/Site1.master" AutoEventWireup="false" CodeFile="MainPage.aspx.cs" Inherits="Dima__Wataeen__Club.MainPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style3 {
            height: 47px;
        }
        .auto-style4 {
            top;
            height: 47px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
     <asp:UpdatePanel ID="UpdatePanel122" runat="server">
          <ContentTemplate>
     <table dir="rtl" style="width: 100%">
        <tr>
            <td style="top">
                                        &nbsp;</td>
            <td style="top">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
         <tr>
             <td class="auto-style3" >
                 &nbsp;</td>
             <td colspan="2" style="text-align: center;" class="auto-style4">
                  <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                        </asp:UpdateProgress>
             </td>
             <td class="auto-style3">
                 &nbsp;</td>
         </tr>
         <tr>
             <td colspan="2" style="top">
                 &nbsp;</td>
             <td colspan="2">
                 &nbsp;</td>
         </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
             
               
            <td style="width: 25%" class="text-left">
                <asp:Panel ID="ControlPanel" runat="server" Visible="false" Width="450px">
                    <strong>
                    <asp:Label ID="LblName" runat="server" CssClass="auto-style1" Text="عدد الرسائل الواردة :" Visible="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </strong>
                    <asp:Button ID="Button1" runat="server" Text="صندوق الوارد" Visible="False" Width="40%" />
                </asp:Panel>
            </td>        
        </tr>
        
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="text-center" style="width: 25%">&nbsp;</td>
                <td class="text-right" style="width: 25%">&nbsp;</td>
             
         </tr>
        
         <tr>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
             <td class="text-center" style="width: 25%">&nbsp;</td>
             <td class="text-right" style="width: 25%">&nbsp;</td>
         </tr>
         <tr>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
             <td class="text-center" style="width: 25%">&nbsp;</td>
             <td class="text-right" style="width: 25%">&nbsp;</td>
         </tr>
            </table>
                       </ContentTemplate>
          <Triggers>
              

          </Triggers>
        </asp:UpdatePanel> 
</asp:Content>

