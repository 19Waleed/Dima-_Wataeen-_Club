<%@ Page Title="" Language="C#" MasterPageFile="~/Site_Club.Master" AutoEventWireup="true" CodeBehind="Bookingmanagement.aspx.cs" Inherits="Dima__Wataeen__Club.Bookingmanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            background-color: #AAA092;
        }
        .auto-style14 {
            text-align: center;
        }
        .auto-style15 {
            text-align: right;
        }
        .auto-style16 {
            font-size: x-large;
        }
        .auto-style17 {
            height: 229px;
        }
        .auto-style18 {
            height: 40px;
        }
        .auto-style20 {
            text-align: right;
            height: 40px;
        }
        .auto-style21 {
            height: 13px;
        }
        .auto-style23 {
            text-align: center;
            height: 13px;
        }
        .auto-style24 {
            text-align: center;
            height: 30px;
        }
        .auto-style25 {
            height: 30px;
            width: 19px;
        }
        .auto-style26 {
            height: 224px;
            font-size: x-large;
            width: 46px;
        }
        .auto-style27 {
            height: 188px;
            font-size: x-large;
            width: 46px;
        }
        .auto-style28 {
            width: 19px;
        }
        .auto-style29 {
            height: 13px;
            width: 19px;
        }
        .auto-style30 {
            height: 40px;
            font-size: x-large;
            width: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style2">
        <table class="auto-style13">
            <tr>
                <td class="auto-style27" colspan="4"><strong>
                    <asp:Image ID="Image2" runat="server" CssClass="auto-style58" Height="214px" ImageUrl="~/img/Stadium_2.png" Width="1270px" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style26" colspan="4">
                    <asp:GridView ID="GridViewBookMonth" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" Caption="Waiting for the application to be approved" CellPadding="3" CssClass="mydatagrid" Font-Bold="True" Font-Italic="True" Font-Names="Lateef" Font-Size="X-Large" GridLines="Vertical" HeaderStyle-CssClass="header" Height="16px" PagerStyle-CssClass="pager" RowStyle-CssClass="rows" Style="text-align: center; font-size: x-large; margin-top: 0; font-family: 'Segoe UI Variable Text';" Width="100%" OnSelectedIndexChanged="GridViewBookMonth_SelectedIndexChanged" PageSize="1">
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
                <td class="auto-style36"><strong>
                    <asp:Label ID="LabelID" runat="server" CssClass="auto-style43" style="color: #FF3300; font-size: x-large"></asp:Label>
                    </strong></td>
                <td class="auto-style33" colspan="2"><strong><span class="auto-style58">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:Label ID="Mss_update" runat="server" CssClass="auto-style68" style="color: #FF0000; font-size: x-large;"></asp:Label>
                    </strong></td>
                <td class="auto-style28">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style36">&nbsp;</td>
                <td class="auto-style33"><strong>
                    <asp:Label ID="Mss_Notes" runat="server" CssClass="auto-style49" style="color: #FF3300; font-size: x-large;"></asp:Label>
                    </strong></td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style28"><strong>
                    <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="3000" OnTick="Timer1_Tick">
                    </asp:Timer>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>
                    <asp:Label ID="Label11" runat="server" CssClass="auto-style16" Text="Note" Visible="False"></asp:Label>
                    </strong></td>
                <td class="auto-style14"><strong>
                    <asp:TextBox ID="TextBoxNotes" runat="server" Height="46px" Width="516px" style="font-weight: bold; background-color: #0000FF; color: #FFFFFF; font-size: x-large;" CssClass="auto-style65" Visible="False"></asp:TextBox>
                    </strong></td>
                <td class="auto-style13"><strong>
                    <asp:ScriptManager ID="ScriptManager2" runat="server">
                    </asp:ScriptManager>
                    </strong></td>
                <td class="auto-style28"><strong>
                    <asp:Timer ID="Timer2" runat="server" Enabled="False" Interval="3000" OnTick="Timer2_Tick">
                    </asp:Timer>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style24" colspan="2"><strong>
                    <asp:Label ID="Mss_Save_" runat="server" CssClass="auto-style64" style="font-size: x-large; color: #339933"></asp:Label>
                    </strong></td>
                <td class="auto-style25"><strong>
                    <asp:Timer ID="Timer3" runat="server" Enabled="False" Interval="3000" OnTick="Timer3_Tick">
                    </asp:Timer>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style21"></td>
                <td class="auto-style23"><strong><span class="auto-style58">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:Button ID="But_Save" runat="server" Height="52px" OnClick="But_Save_Click" Text="Approval of the request" Width="416px" CssClass="auto-style62" style="font-weight: bold; font-size: x-large; background-color: #00CC00" Visible="False" />
                    </strong></td>
                <td class="auto-style21"><strong>
                    <asp:Button ID="But_Return" runat="server" Height="59px" OnClick="But_Return_Click" Text="Return to the team" Width="329px" CssClass="auto-style62" Visible="False" style="font-weight: bold; font-size: x-large; background-color: #00CC00" />
                    </strong></td>
                <td class="auto-style29">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18"></td>
                <td class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style18"></td>
                <td class="auto-style30"></td>
            </tr>
            <tr>
                <td class="auto-style53" colspan="4">
                    <asp:GridView ID="GridViewBookApproved" runat="server" AutoGenerateColumns="False" Caption="Approved this month" CellPadding="4" CssClass="mydatagrid" Font-Bold="True" Font-Italic="True" Font-Names="Lateef" Font-Size="X-Large" GridLines="None" HeaderStyle-CssClass="header" Height="35px" PagerStyle-CssClass="pager" RowStyle-CssClass="rows" Style="text-align: center; font-size: x-large; margin-top: 0; font-family: 'Segoe UI Variable Text';" Width="99%" AllowCustomPaging="True" ForeColor="#333333">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" />
                            <asp:BoundField DataField="Team_NAME" HeaderText="Team NAME" />
                            <asp:BoundField DataField="Booking_Date" HeaderText="Booking Date" />
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
                <td class="auto-style67" colspan="4">&nbsp;</td>
            </tr>
            <span class="auto-style42"></span>
                     </strong>
                     <span class="auto-style42">
        </table>
        </span>
    </div>
</asp:Content>
