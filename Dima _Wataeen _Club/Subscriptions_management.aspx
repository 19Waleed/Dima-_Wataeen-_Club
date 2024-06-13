<%@ Page Title="" Language="C#" MasterPageFile="~/Site_Club.Master" AutoEventWireup="true" CodeBehind="Subscriptions_management.aspx.cs" Inherits="Dima__Wataeen__Club.Subscriptions_management1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style44">
        <table class="auto-style30">
            <tr>
                <td class="auto-style52"><strong>
                    <asp:Label ID="Label11" runat="server" Text="Search " CssClass="auto-style59" style="font-size: x-large; font-family: 'Segoe UI Variable Text'"></asp:Label>
                </strong></td>
                <td class="auto-style31">
                    <asp:TextBox ID="TextBoxSearch" runat="server" AutoPostBack="True" CssClass="auto-style60" Height="41px" OnTextChanged="TextBoxSearch_TextChanged" TabIndex="20" ToolTip="Search" Width="512px" style="font-size: x-large; font-family: 'Segoe UI Variable Text'; font-weight: bold; color: #FFFFFF; background-color: #0000FF;"></asp:TextBox>
                </td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style35">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:GridView ID="GridViewSelect_Payment" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="mydatagrid" Font-Bold="True" Font-Italic="True" Font-Names="Lateef" Font-Size="X-Large" HeaderStyle-CssClass="header" Height="35px" PagerStyle-CssClass="pager" RowStyle-CssClass="rows" Style="text-align: center; font-size: medium; margin-top: 0; font-family: 'Segoe UI Variable Text'; margin-right: 0px;" Width="92%" Visible="False" AllowSorting="True" OnSelectedIndexChanged="GridViewSelect_Payment_SelectedIndexChanged">
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
                            <asp:BoundField DataField="PaymentReceiptPath" HeaderText="Payment Receipt Path" />
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
                <td class="auto-style29"><strong>
                    <asp:Label ID="LabelID" runat="server" CssClass="auto-style43" style="color: #FF3300; font-size: x-large"></asp:Label>
                </strong></td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style41"><strong>
                    <asp:Label ID="LabelID1" runat="server" CssClass="auto-style43" style="color: #FF3300; font-size: x-large"></asp:Label>
                </strong></td>
                <td class="auto-style35">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style47"><strong>
                    <asp:Label ID="LabelID0" runat="server" CssClass="auto-style43" style="color: #FF3300; font-size: x-large"></asp:Label>
                </strong></td>
                <td class="auto-style48"><strong>
                    <asp:Label ID="LabelFull_Name" runat="server" CssClass="auto-style24"></asp:Label>
                </strong></td>
                <td class="auto-style49">&nbsp;</td>
                <td class="auto-style35" rowspan="8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style31"><strong>
                    <asp:Label ID="LabelPayment_Date" runat="server" CssClass="auto-style49" style="font-size: x-large; color: #0000FF"></asp:Label>
                </strong></td>
                <td class="auto-style41">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style41"><strong>
                    <asp:ScriptManager ID="ScriptManager2" runat="server">
                    </asp:ScriptManager>
                </strong></td>
            </tr>
            <tr>
                <td class="auto-style29"></td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style41"><strong><span class="auto-style40">
                    <asp:Label ID="Label14" runat="server" CssClass="auto-style50"></asp:Label>
                    <asp:Image ID="Image1" runat="server" Visible="false" Height="200px" Width="200px" />
                </span></strong></td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style41"><strong>
                    <asp:Label ID="lblMessage" runat="server" CssClass="auto-style22"></asp:Label>
                </strong></td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style51"></td>
                <td class="auto-style41">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
            </tr>
            <span class="auto-style42"></span>
        </table>
    </div>
</asp:Content>
