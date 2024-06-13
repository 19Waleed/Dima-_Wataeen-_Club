<%@ Page Title="" Language="C#" MasterPageFile="~/Site_Club.Master" AutoEventWireup="true" CodeBehind="Report_Center.aspx.cs" Inherits="Dima__Wataeen__Club.Report_Center" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            font-size: x-large;
            color: #000000;
        }
        .auto-style20 {
            color: #FFFFFF;
            font-size: large;
            background-color: #0000FF;
        }
        .auto-style21 {
            color: #FFFFFF;
            font-weight: bold;
            font-size: x-large;
            background-color: #009900;
        }
        .auto-style22 {
            margin-bottom: 42px;
        }
        .auto-style23 {
            text-align: left;
        }
        .auto-style24 {
            direction: ltr;
        }
        .auto-style25 {
            color: #000000;
        }
        .auto-style26 {
            text-align: left;
            direction: ltr;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table dir="rtl" style="width: 100%">
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td colspan="2">
                <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="2000"></asp:Timer>
            </td>
            <td style="width: 25%">
                <strong>
                    <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
                </strong>
            </td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left;">&nbsp;</td>
            <td style="width: 25%" class="auto-style23">
                &nbsp;</td>
            <td style="width: 25%">
                <strong>
                <asp:DropDownList ID="DropYear" runat="server" Font-Names="lateef" Width="99%" AutoPostBack="True" CssClass="auto-style20" Height="46px"></asp:DropDownList>
                </strong>
            </td>
            <td style="width: 25%">
                <strong>
                <asp:Label ID="Label661" runat="server" CssClass="auto-style19" Text="THE YEAR"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left;">&nbsp;</td>
            <td style="width: 25%" class="auto-style23">
                &nbsp;</td>
            <td style="width: 25%">
                <strong>
                    <asp:DropDownList ID="DropDownTeam_ID" runat="server" CssClass="auto-style58" Height="36px" Width="429px" style="font-weight: bold; color: #FFFFFF; background-color: #0000FF"></asp:DropDownList>
                </strong>
            </td>
            <td style="width: 25%">
                <strong>
                    <asp:Label ID="Label10" runat="server" Text="Team" CssClass="auto-style41" style="font-size: x-large; color: #000000"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left;">&nbsp;</td>
            <td style="width: 25%" class="auto-style23">
                <p class="auto-style24">
                    &nbsp;</p>
            </td>
            <td style="width: 25%">
                <p class="auto-style26">
                <asp:ListBox ID="ListBoxOtherRep" runat="server" AutoPostBack="True" Font-Bold="True" Font-Size="X-Large" Height="207px" Width="435px" OnSelectedIndexChanged="ListBoxOtherRep_SelectedIndexChanged1" CssClass="auto-style22">
                    <asp:ListItem Value="1">Member  Report</asp:ListItem>
                    <asp:ListItem Value="2">Teams Report</asp:ListItem>
                    <asp:ListItem Value="3">Booking Report</asp:ListItem>
                    <asp:ListItem Value="4">Cards Report</asp:ListItem>
                    <asp:ListItem Value="5">Certificate Appreciation.</asp:ListItem>
                    <asp:ListItem Value="6">User Name Report</asp:ListItem>
                    <asp:ListItem Value="7">User Profile Report</asp:ListItem>
                </asp:ListBox>
                </p>
            </td>
            <td style="width: 25%">
                <asp:Label ID="Label660" runat="server" Font-Bold="True" Font-Names="Lateef" Font-Size="XX-Large" ForeColor="#663300" Style="text-align: right" Text="Report" Width="50%" CssClass="auto-style25" Height="68px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: left;" class="auto-style2"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%"><strong>
                <asp:Button ID="ButtonPreviewReport" runat="server" OnClick="ButtonPreviewReport_Click" Text="Preview Before Printing" Width="373px" CssClass="auto-style21" Height="58px" />
                </strong></td>
            <td style="width: 25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td colspan="3">
                <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="1202px" OnInit="CrystalReportViewer1_Init" ToolbarImagesFolderUrl="" ToolPanelView="ParameterPanel" ToolPanelWidth="200px" Width="1104px" ReportSourceID="CrystalReportSource1" />
                <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
                    <Report FileName="BookingReport.rpt"></Report>
                </CR:CrystalReportSource>
            </td>
        </tr>
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left;" class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td style="text-align: left;" class="auto-style2"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td style="width: 25%">
                <asp:UpdateProgress ID="UpdateProgress1" runat="server"></asp:UpdateProgress>
            </td>
        </tr>
        <tr>
            <td style="width: 25%"></td>
            <td colspan="2"></td>
            <td style="width: 25%"></td>
        </tr>
        <tr>
            <td colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25%"></td>
            <td style="width: 25%"></td>
            <td style="width: 25%"></td>
            <td style="width: 25%"></td>
        </tr>
        <tr>
            <td style="width: 25%"></td>
            <td style="width: 25%"></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td style="width: 25%"></td>
            <td style="width: 25%"></td>
            <td style="width: 25%"></td>
            <td style="width: 25%"></td>
        </tr>
        <tr>
            <td style="width: 25%"></td>
            <td style="width: 25%"></td>
            <td style="width: 25%"></td>
            <td style="width: 25%"></td>
        </tr>
    </table>
</asp:Content>
