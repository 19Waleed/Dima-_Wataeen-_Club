<%@ Page Title="" Language="C#" MasterPageFile="~/Site_Club.Master" AutoEventWireup="true" CodeBehind="Booking_stadium.aspx.cs" Inherits="Dima__Wataeen__Club.Booking_stadium" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            width: 204px;
        }
        .auto-style14 {
            width: 1406px;
            background-color: #AFA597;
        }
        .auto-style15 {
            width: 727px;
        }
        .auto-style17 {
            width: 204px;
            font-size: x-large;
        }
        .auto-style21 {
            width: 317px;
        }
        .auto-style22 {
            font-size: x-large;
            width: 317px;
        }
        .auto-style26 {
            font-size: xx-large;
            height: 21px;
        }
        .auto-style31 {
            height: 42px;
            width: 673px;
        }
        .auto-style34 {
            font-size: xx-large;
            height: 14px;
        }
        .auto-style35 {
            height: 14px;
            text-align: left;
        }
        .auto-style36 {
            font-size: xx-large;
            width: 317px;
            height: 14px;
        }
        .auto-style39 {
            width: 150px;
            height: 190px;
        }
        .auto-style41 {
            width: 150px;
            height: 200px;
            font-size: x-large;
        }
        .auto-style42 {
            height: 200px;
        }
        .auto-style43 {
            width: 150px;
            height: 194px;
            font-size: x-large;
        }
        .auto-style49 {
            height: 165px;
            font-size: x-large;
        }
        .auto-style51 {
            height: 50px;
            width: 673px;
        }
        .auto-style52 {
            width: 673px;
            font-size: xx-large;
            text-align: center;
        }
        .auto-style53 {
            font-size: xx-large;
            height: 70px;
            text-align: center;
        }
        .auto-style58 {
            font-size: x-large;
        }
        .auto-style59 {
            height: 42px;
            font-size: x-large;
            text-align: center;
        }
        .auto-style62 {
        height: 174px;
        font-size: x-large;
        font-weight: bold;
        color: #000000;
        background-color: #00CC00;
    }
        .auto-style64 {
            height: 165px;
            font-size: x-large;
            color: #339933;
        }
        .auto-style65 {
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style66 {
            font-size: xx-large;
            height: 14px;
            text-align: center;
        }
        .auto-style67 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style68 {
            height: 165px;
            font-size: large;
        }
        .auto-style69 {
            height: 165px;
            font-size: large;
            color: #009900;
        }
    .auto-style71 {
        width: 98px;
        vertical-align: top;
        text-align: right;
        margin-top: 0px;
        background-color: #BDB09F;
    }
    .auto-style72 {
        width: 150px;
        height: 194px;
        font-size: x-large;
        text-decoration: none;
    }
        .auto-style73 {
            font-size: x-large;
            width: 673px;
        }
        .auto-style74 {
            width: 1148px;
            background-color: #BDB09F;
        }
        .auto-style75 {
            width: 150px;
            height: 194px;
            font-size: x-large;
            color: #FF3300;
        }
        .auto-style76 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style2">
        <table class="auto-style71">
            <tr>
                <td class="auto-style39" colspan="4"><strong>
                    <asp:Image ID="Image2" runat="server" CssClass="auto-style58" Height="195px" ImageUrl="~/img/Stadium.jpg" Width="1319px" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style26" colspan="4">
                <asp:GridView ID="GridViewBookMonth" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" Caption="Book this month" CellPadding="3" CssClass="mydatagrid" Font-Bold="True" Font-Italic="True" Font-Names="Lateef" Font-Size="X-Large" GridLines="Vertical" HeaderStyle-CssClass="header" Height="16px" PagerStyle-CssClass="pager" RowStyle-CssClass="rows" Style="text-align: center; font-size: x-large; margin-top: 0; font-family: 'Segoe UI Variable Text';" Width="99%" OnSelectedIndexChanged="GridViewBookMonth_SelectedIndexChanged" Visible="False" PageSize="1">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" />
                        <asp:BoundField DataField="Team_NAME" HeaderText="Team NAME" />
                        <asp:BoundField DataField="Booking_Date" HeaderText="Booking Date" DataFormatString="{0:dd/MM/yyyy}" />
                        <asp:BoundField DataField="Full_Name" HeaderText="Name of reservation " />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" />
                        <asp:BoundField DataField="Notes" HeaderText="Notes" />
                        <asp:CommandField HeaderText="Select" ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Red" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                    <RowStyle BackColor="#EEEEEE" CssClass="rows" ForeColor="Black" />
                </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style59" colspan="4"><strong>
                    <asp:Label ID="Mss_update" runat="server" CssClass="auto-style68" style="color: #FF0000"></asp:Label>
                    <br />
                    <asp:Label ID="Mss_Save_" runat="server" CssClass="auto-style64"></asp:Label>
                    <asp:Label ID="Mss_approved" runat="server" CssClass="auto-style69"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style21" rowspan="2"><strong>
                    <span class="auto-style58">
                    <asp:Label ID="LabelID" runat="server" CssClass="auto-style75" Visible="False"></asp:Label>
                    </span>
                    </strong></td>
                <td class="auto-style74" rowspan="2"><strong>
                    <span class="auto-style58">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    </strong></td>
                <td class="auto-style13" rowspan="2"><strong>
                    <asp:Label ID="Label10" runat="server" Text="Team" CssClass="auto-style41"></asp:Label>
                    </strong></td>
                <td class="auto-style31"><strong>
                    <asp:DropDownList ID="DropDownTeam_ID" runat="server" CssClass="auto-style58" Height="36px" Width="429px" style="font-weight: bold; color: #FFFFFF; background-color: #0000FF">
                    </asp:DropDownList>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style31"><strong>
                    <asp:Label ID="Mss_Save_Team_ID" runat="server" CssClass="auto-style49" style="color: #FF3300"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style36"><strong>
                    <asp:Label ID="Label7" runat="server" Text="Date Booking" CssClass="auto-style43"></asp:Label>
                    </strong></td>
                <td><strong>
                    <asp:Label ID="LabelDateBooking" runat="server" CssClass="auto-style48" style="color: #FFFFFF; font-size: xx-large"></asp:Label>
                    </strong></td>
                <td class="auto-style33"><strong>
                    <span class="auto-style58">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></strong></td>
                <td class="auto-style34"><strong>
                    <asp:Label ID="Mss_Save_DateBooking" runat="server" CssClass="auto-style49" style="color: #FF0000"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style36">&nbsp;</td>
                <td class="auto-style35" colspan="3"><strong>
                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style72" OnClick="LinkButton2_Click" style="color: #0000FF">Select the day from the calendar</asp:LinkButton>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style22" rowspan="2">&nbsp;</td>
                <td class="auto-style74" rowspan="2"><strong>
                    <asp:Calendar ID="CalendarDateBooking" runat="server" BackColor="White" BorderColor="#999999" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="16px" Width="344px" OnSelectionChanged="CalendarDateBirth_SelectionChanged" Visible="False" CellPadding="4" DayNameFormat="Shortest" OnVisibleMonthChanged="CalendarDateBooking_VisibleMonthChanged">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                </td>
                <td class="auto-style13" rowspan="2"><strong>
                    <asp:Label ID="Label8" runat="server" Text="Phone" CssClass="auto-style41"></asp:Label>
                    </strong></td>
                <td class="auto-style51"><strong>
                    <asp:TextBox ID="TextBoxPhone" runat="server" Height="34px" Width="407px" style="font-weight: bold; background-color: #0000FF;" CssClass="auto-style65"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style51"><strong>
                    <asp:Label ID="Mss_Save_Phone" runat="server" CssClass="auto-style49" style="color: #FF3300"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style22">
                     <span class="auto-style42">
                <strong><asp:Label ID="LabelUser_Name" runat="server" CssClass="auto-style9" style="color: #FFFFFF; font-size: large" Visible="False"></asp:Label>
                                </strong>
        </span></td>
                <td class="auto-style74">&nbsp;</td>
                <td class="auto-style13"><strong>
                    <asp:ScriptManager ID="ScriptManager2" runat="server">
                    </asp:ScriptManager>
                    </strong></td>
                <td class="auto-style52">
                     <span class="auto-style42">
                <strong>
                                <asp:Label ID="LabelTeam_ID" runat="server" CssClass="auto-style9" style="color: #FFFFFF; font-size: large" Visible="False"></asp:Label>
                                </strong>
        </span>
                </td>
            </tr>
            <tr>
                <td class="auto-style22"><strong>
                    <asp:Timer ID="Timer2" runat="server" Enabled="False" Interval="3000" OnTick="Timer2_Tick">
                    </asp:Timer>
                    <asp:Button ID="But_Save" runat="server" Height="59px" OnClick="But_Save_Click" Text="Save" Width="457px" CssClass="auto-style62" />
                    </strong></td>
                <td class="auto-style74"><strong><span class="auto-style58">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    </strong></td>
                <td class="auto-style17"><strong>
                    <asp:Timer ID="Timer3" runat="server" Enabled="False" Interval="3000" OnTick="Timer3_Tick">
                    </asp:Timer>
                    </strong></td>
                <td class="auto-style73"><strong>
                    <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="3000" OnTick="Timer1_Tick1">
                    </asp:Timer>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style74">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                    <asp:Button ID="But_Update" runat="server" Height="59px" OnClick="But_Update_Click" Text="Update" Width="457px" CssClass="auto-style62" Visible="False" />
                    </strong>&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style73"><strong>
                    <asp:Label ID="Mss_Booking_old" runat="server" CssClass="auto-style49" style="color: #FF0000" Visible="False"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style53" colspan="4">
                <asp:GridView ID="GridViewBookApproved" runat="server" AutoGenerateColumns="False" Caption="The day of booking is approved" CellPadding="4" CssClass="mydatagrid" Font-Bold="True" Font-Italic="True" Font-Names="Lateef" Font-Size="X-Large" GridLines="None" HeaderStyle-CssClass="header" Height="35px" PagerStyle-CssClass="pager" RowStyle-CssClass="rows" Style="text-align: center; font-size: x-large; margin-top: 0; font-family: 'Segoe UI Variable Text';" Width="99%" AllowCustomPaging="True" ForeColor="#333333">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" />
                        <asp:BoundField DataField="Team_NAME" HeaderText="Team NAME" />
                        <asp:BoundField DataField="Booking_Date" HeaderText="Booking Date" DataFormatString="{0:dd/MM/yyyy}" />
                        <asp:BoundField DataField="Full_Name" HeaderText="Name of reservation " />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                    <RowStyle BackColor="#E3EAEB" CssClass="rows" />
                </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style67" colspan="4"><strong>
                    <asp:LinkButton ID="LinkButton3" runat="server" CssClass="auto-style72" OnClick="LinkButton3_Click" style="color: #0000FF">Booking history</asp:LinkButton>
                    </strong>
                <asp:GridView ID="GridViewBookMonth_old" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="mydatagrid" Font-Bold="True" Font-Italic="True" Font-Names="Lateef" Font-Size="X-Large" GridLines="Vertical" HeaderStyle-CssClass="header" Height="35px" PagerStyle-CssClass="pager" RowStyle-CssClass="rows" Style="text-align: center; font-size: x-large; margin-top: 0; font-family: 'Segoe UI Variable Text';" Width="99%" Visible="False" ForeColor="Black">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" />
                        <asp:BoundField DataField="Team_NAME" HeaderText="Team NAME" />
                        <asp:BoundField DataField="Booking_Date" HeaderText="Booking Date" DataFormatString="{0:dd/MM/yyyy}" />
                        <asp:BoundField DataField="Full_Name" HeaderText="Name of reservation " />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                    <RowStyle BackColor="#F7F7DE" CssClass="rows" />
                </asp:GridView>
                </td>
            </tr>
            <span class="auto-style42"></span>
                     </strong>
                     <span class="auto-style42">
        </table>
        </span>
    </div>
</asp:Content>
