<%@ Page Title="" Language="C#" MasterPageFile="~/Site_Club.Master" AutoEventWireup="true" CodeBehind="Add_Team.aspx.cs" Inherits="Dima__Wataeen__Club.Add_Team" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
    <style type="text/css">
    .auto-style19 {
        width: 11px;
    }
    .auto-style20 {
        width: 1322px;
        background-color: #BDB09F;;
    }
    .auto-style21 {
        text-align: center;
    }
    .auto-style22 {
        width: 239px;
    }
    .auto-style23 {
        font-size: large;
    }
    .auto-style24 {
        text-align: center;
        width: 528px;
    }
    .auto-style25 {
        width: 640px;
    }
    .auto-style26 {
        width: 626px;
    }
    .auto-style27 {
        width: 624px;
    }
    .auto-style28 {
        width: 528px;
    }
        .auto-style29 {
            width: 239px;
            text-align: right;
        }
    </style>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <table class="auto-style20">
                <tr>
                    <td class="auto-style22">
                        </td>
                    <td class="auto-style24">
                        <strong>
                        <asp:Label ID="MSS" runat="server" CssClass="auto-style26" Visible="False" style="color: #006600; font-size: xx-large;"></asp:Label>

                        </strong></td>
                    <td class="auto-style75">
                        <strong>
                        <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="3000" OnTick="Timer1_Tick1">
                        </asp:Timer>


                        </strong></td>
                    <td class="auto-style75">
                        </td>
                    <td class="auto-style75">
                        </td>
                    <td class="auto-style19">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style29">
                        <strong>
                        <asp:Label ID="Label1" runat="server" Text="ID" CssClass="auto-style61" style="font-size: large"></asp:Label>
                        </strong></td>
                    <td class="auto-style28">
                        <strong>
                        <asp:Label ID="Team_ID" runat="server" CssClass="auto-style97" style="font-size: large"></asp:Label>
                        </strong></td>
                    <td class="auto-style110">
                        </td>
                    <td class="auto-style110">
                        </td>
                    <td class="auto-style110">
                        </td>
                    <td class="auto-style19">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style29">
                        <strong>
                        <asp:Label ID="Label2" runat="server" Text="Enter the Team NAME" CssClass="auto-style61" style="font-size: large"></asp:Label>

                        </strong></td>
                    <td class="auto-style28">
                        <strong>
                        <asp:TextBox ID="Team_NAME" runat="server" Height="29px" Width="253px" CssClass="auto-style57" OnTextChanged="Team_NAME_TextChanged" style="color: #FFFFFF; font-weight: bold; background-color: #0000FF"></asp:TextBox>
                        </strong></td>
                    <td class="auto-style96">
                        <strong>

                        <asp:Label ID="MSS_Team_NAME" runat="server" CssClass="auto-style30" style="color: #FF0000; font-size: large;"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style96">
                        &nbsp;</td>
                    <td class="auto-style96">
                        &nbsp;</td>
                    <td class="auto-style19">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style29">
                        <strong>
                        <asp:Label ID="Label3" runat="server" Text="Enter the Joining Date" CssClass="auto-style27" style="font-size: large"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style28">
                        <strong>
                        <asp:Label ID="Joining_Date" runat="server" CssClass="auto-style29" style="color: #FFFFFF; text-decoration: underline; background-color: #BDB09F; font-size: large;"></asp:Label>

                        </strong></td>
                    <td class="auto-style91">
                        <strong>

                        <asp:Label ID="MSS_Joining_Date" runat="server" CssClass="auto-style25" style="color: #FF0000; font-size: large;"></asp:Label>

                        </strong>
                    </td>
                    <td class="auto-style91">
                        </td>
                    <td class="auto-style91">
                        </td>
                    <td class="auto-style19">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style22">


        <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
                    </td>
                    <td class="auto-style28">
                        <strong>
                        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style43" OnClick="LinkButton2_Click" style="color: #0000FF; font-size: large;">Select the day from the calendar</asp:LinkButton>

                        </strong></td>
                    <td class="auto-style99">
                        </td>
                    <td class="auto-style99">
                        </td>
                    <td class="auto-style99">
                        </td>
                    <td class="auto-style19">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        </td>
                    <td class="auto-style28">
                        <strong>

                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="66px" Width="122px" OnSelectionChanged="Calendar1_SelectionChanged" BorderStyle="Solid" CellSpacing="1" NextPrevFormat="ShortMonth" Visible="False" CssClass="auto-style23">
                            <DayHeaderStyle Font-Bold="True" Height="8pt" Font-Size="8pt" ForeColor="#333333" />
                            <DayStyle BackColor="#CCCCCC" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="White" Font-Bold="True" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="#333399" Font-Bold="True" Font-Size="12pt" ForeColor="White" BorderStyle="Solid" Height="12pt" />
                            <TodayDayStyle BackColor="#999999" ForeColor="White" />
                        </asp:Calendar>

                        </strong></td>
                    <td class="auto-style112">
                        </td>
                    <td class="auto-style112">
                        </td>
                    <td class="auto-style112">
                        </td>
                    <td class="auto-style19">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style29">
                        <strong>
                        <asp:Label ID="Label4" runat="server" Text="Enter the Note" CssClass="auto-style61" style="font-size: large"></asp:Label>
                        </strong></td>
                    <td class="auto-style28">
                        <strong>
                        <asp:TextBox ID="Note" runat="server" Height="26px" Width="260px" CssClass="auto-style57" style="color: #FFFFFF; font-weight: bold; background-color: #0000FF; font-size: large;"></asp:TextBox>
                        </strong>
                    </td>
                    <td class="auto-style103">
                        </td>
                    <td class="auto-style103">
                        </td>
                    <td class="auto-style103">
                        </td>
                    <td class="auto-style19">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        &nbsp;</td>
                    <td class="auto-style24">
                        <strong>
                        <asp:Button ID="ButSave" runat="server" Height="52px" OnClick="ButSave_Click" Text="Save" Width="373px" CssClass="auto-style57" style="background-color: #99FF33; font-weight: bold; font-size: large;" />
                        </strong>
                    </td>
                    <td class="auto-style75">
                        &nbsp;</td>
                    <td class="auto-style75">
                        &nbsp;</td>
                    <td class="auto-style75">
                        &nbsp;</td>
                    <td class="auto-style19">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        </td>
                    <td class="auto-style28">
                        <strong>
                        <h3 class="auto-style21">
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style43" OnClick="LinkButton1_Click" style="font-size: large">The last adding teams</asp:LinkButton>

                        </strong></h3>
                    </td>
                    <td class="auto-style96">
                        </td>
                    <td class="auto-style96">
                        </td>
                    <td class="auto-style96">
                        </td>
                    <td class="auto-style19">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        </td>
                    <td class="auto-style107" colspan="2">
                    <strong>
                    <asp:GridView ID="SearchResults" runat="server" AllowPaging="True" AutoGenerateColumns="False" CaptionAlign="Top" CellPadding="4" CssClass="mydatagrid" Font-Bold="True" Font-Names="Lateef" Font-Size="X-Large" HeaderStyle-CssClass="header" Height="16px" PagerStyle-CssClass="pager" RowStyle-CssClass="rows" Style="text-align: center; font-weight: 700; font-size: large; " Width="100%" PageSize="30" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" />
                            <asp:BoundField DataField="Team_ID" HeaderText="Team ID" />
                            <asp:BoundField DataField="Team_NAME" HeaderText="Team NAME" />
                            <asp:BoundField DataField="Joining_Date" HeaderText="Joining Date" DataFormatString="{0:dd/MM/yyyy}" >
                            <ControlStyle CssClass="DD-MM-YYYY" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Note" HeaderText="Note" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerSettings PageButtonCount="1" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <RowStyle CssClass="rows" BackColor="#E3EAEB" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                    </strong>
                        </td>
                    <td class="auto-style107">
                        </td>
                    <td class="auto-style107">
                        </td>
                    <td class="auto-style19">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style22">
                <strong><asp:Label ID="LabelUser_Name" runat="server" CssClass="auto-style9" style="color: #FFFFFF; font-size: large" Visible="False"></asp:Label>
                                </strong>
                        </td>
                    <td class="auto-style107" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style107">
                <strong>
                                <asp:Label ID="LabelTeam_ID" runat="server" CssClass="auto-style9" style="color: #FFFFFF; font-size: large" Visible="False"></asp:Label>
                                </strong>
                        </td>
                    <td class="auto-style107">
                        &nbsp;</td>
                    <td class="auto-style19">
                        &nbsp;</td>
                </tr>
                </table>
       


</asp:Content>
