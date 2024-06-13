<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Approve_New_Team.aspx.cs" Inherits="Dima__Wataeen__Club.Approve_New_Team" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="SearchResults" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CaptionAlign="Top" CellPadding="3" CellSpacing="2" CssClass="mydatagrid" Font-Bold="True" Font-Names="Lateef" Font-Size="X-Large" HeaderStyle-CssClass="header" Height="35px" PagerStyle-CssClass="pager" RowStyle-CssClass="rows" Style="text-align: center; font-weight: 700; font-size: large" Width="100%">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" />
                            <asp:BoundField DataField="Team_ID" HeaderText="Team ID" />
                            <asp:BoundField DataField="Team_NAME" HeaderText="Team NAME" />
                            <asp:BoundField DataField="Joining_Date" HeaderText="Joining Date" />
                            <asp:BoundField DataField="Note" HeaderText="Note" />
                            <asp:CommandField SelectText="اختر" ShowSelectButton="True" />
                        </Columns>
                        <HeaderStyle />
                        <PagerStyle />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <RowStyle CssClass="rows" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
