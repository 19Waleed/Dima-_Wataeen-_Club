<%@ Page Title="" Language="C#" MasterPageFile="~/Site_Club.Master" AutoEventWireup="true" CodeBehind="ViewPaymentSubscriptions.aspx.cs" Inherits="Dima__Wataeen__Club.ViewPaymentSubscriptions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            color: #FF3300;
            font-size: large;
        }
        .auto-style20 {
            width: 451px;
        }
        .auto-style21 {
            width: 260px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style44">
        <table class="auto-style30"/>
            <tr>
                <td class="auto-style21"><strong>
                    <asp:Label ID="Label11" runat="server" Text="Search " CssClass="auto-style59" style="font-size: x-large; font-family: 'Segoe UI Variable Text'"></asp:Label>
                    </strong></td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBoxSearch" runat="server" AutoPostBack="True" CssClass="auto-style60" Height="41px" OnTextChanged="TextBoxSearch_TextChanged" TabIndex="20" ToolTip="Search" Width="512px" style="font-size: x-large; font-family: 'Segoe UI Variable Text'; font-weight: bold; color: #FFFFFF; background-color: #0000FF;"></asp:TextBox>
                </td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style35">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:GridView ID="GridViewSelect_Payment" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" Caption="Waiting for the application to be approved" CellPadding="4" CssClass="mydatagrid" Font-Bold="True" Font-Italic="True" Font-Names="Lateef" Font-Size="X-Large" HeaderStyle-CssClass="header" Height="35px" PagerStyle-CssClass="pager" RowStyle-CssClass="rows" Style="text-align: center; font-size: medium; margin-top: 0; font-family: 'Segoe UI Variable Text'; margin-right: 0px;" Width="92%" Visible="False" AllowSorting="True" OnSelectedIndexChanged="GridViewSelect_Payment_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="Subscriptions_ID" HeaderText="ID" />
                            <asp:BoundField DataField="Member_ID" HeaderText="Member ID" />
                            <asp:BoundField DataField="Full_Name" HeaderText="Full Name" />
                            <asp:BoundField DataField="Team_NAME" HeaderText="Team NAME" />
                            <asp:BoundField DataField="Subscription" HeaderText="Subscription" />
                            <asp:BoundField DataField="Subscriptions_Eyare" HeaderText="Eyare" />
                            <asp:BoundField DataField="PaymentY_N" HeaderText="Payment" />
                            <asp:BoundField DataField="Payment_Date" HeaderText="Payment Date" DataFormatString="{0:dd/MM/yyyy}" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone" />
                            <asp:BoundField DataField="Team_ID" HeaderText="D Team" />
                            <asp:BoundField DataField="ID_subscription" HeaderText="IDS" />
                            <asp:CommandField HeaderText="Select" ShowSelectButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                        <RowStyle BackColor="White" CssClass="rows" ForeColor="#330099" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style21"><strong>
                    <asp:Label ID="LabelID" runat="server" CssClass="auto-style43" style="color: #FF3300; font-size: x-large"></asp:Label>
                    </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                    <asp:Label ID="Label15" runat="server" CssClass="auto-style19"></asp:Label>
                    </strong></td>
                <td class="auto-style20"><strong>
                    <asp:Label ID="LabelFull_Name" runat="server" CssClass="auto-style24" style="font-size: x-large"></asp:Label>
                    </strong></td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style35">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21"><strong>
                    <asp:Label ID="Label12" runat="server" Text="payment date" CssClass="auto-style43" style="font-size: x-large"></asp:Label>
                    </strong></td>
                <td class="auto-style20"><strong>
                    <asp:Label ID="LabelPayment_Date" runat="server" CssClass="auto-style49" style="font-size: x-large; color: #0000FF"></asp:Label>
                    </strong></td>
                <td class="auto-style49"><strong><span class="auto-style40">
                    <asp:Image ID="Image1" runat="server" Height="224px" Width="632px" />
                    </span></strong></td>
                <td class="auto-style35" rowspan="8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21"><strong>
                    <asp:Timer ID="Timer3" runat="server" Enabled="False" Interval="3000" OnTick="Timer3_Tick">
                    </asp:Timer>
                    </strong></td>
                <td class="auto-style20"><strong><span class="auto-style40">
                    <asp:Label ID="Label14" runat="server" CssClass="auto-style50"></asp:Label>
                    </span></strong></td>
                <td class="auto-style41"><strong><span class="auto-style40">
                    <asp:Label ID="Label16" runat="server" CssClass="auto-style50" style="font-size: xx-small; background-color: #FF3300"></asp:Label>
                    </span></strong></td>
            </tr>
            <tr>
                <td class="auto-style21"><strong>
                    <asp:ScriptManager ID="ScriptManager2" runat="server">
                    </asp:ScriptManager>
                    </strong></td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style41"><strong>
                    <asp:Label ID="lblMessage" runat="server" CssClass="auto-style22"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style20">&nbsp;            </td>
                <td class="auto-style41">&nbsp;</td>
            </tr>
            <span class="auto-style42"></span>
                     </strong>
                     <span class="auto-style42">
        </table>
        </span>
    </div>
</asp:Content>
