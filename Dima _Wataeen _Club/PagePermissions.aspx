<%@ Page Title="" Language="C#" MasterPageFile="~/Site_Club.Master" AutoEventWireup="true" CodeBehind="PagePermissions.aspx.cs" Inherits="Dima__Wataeen__Club.PagePermissions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 655px;
        }
        .auto-style13 {
            height: 42px;
        }
        .auto-style14 {
            width: 655px;
            height: 42px;
        }
        .auto-style15 {
            background-color: #BDB09F;
        }
        .auto-style19 {
            width: 102%;
            background-color: #BDB09F;
        }
        .auto-style20 {
            height: 42px;
            vertical-align: top;
            width: 139px;
            margin-top: 0px;
            background-color: #BDB09F;
        }
        .auto-style21 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style19">
        <tr>
            <td class="auto-style21" colspan="5"><strong></td>
        </tr>
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style21"><strong>
                <asp:Label ID="Label15" runat="server" CssClass="auto-style35" Text="Search for a user"></asp:Label>
                </strong></td>
            <td class="auto-style31" colspan="3"><strong>
                <asp:TextBox ID="TextBoxSearch" runat="server" AutoPostBack="True" CssClass="auto-style60" Height="41px" OnTextChanged="TextBoxSearch_TextChanged" TabIndex="20" ToolTip="Search" Width="646px" style="font-family: 'Segoe UI Variable Text'; font-weight: bold; color: #FFFFFF; background-color: #0000FF; font-size: x-large;"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style21" colspan="5"><strong>
                <asp:GridView ID="GridViewPagePermissions" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" Caption="Select the user you want" CellPadding="2" CssClass="mydatagrid" Font-Bold="True" Font-Italic="True" Font-Names="Lateef" Font-Size="X-Large" GridLines="Vertical" HeaderStyle-CssClass="header" Height="35px" PagerStyle-CssClass="pager" PageSize="2" RowStyle-CssClass="rows" Style="text-align: center; font-size: medium; font-family: 'Segoe UI Variable Text';" Width="99%" ForeColor="Black" OnSelectedIndexChanged="GridViewPagePermissions_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" />
                        <asp:BoundField DataField="Member_ID" HeaderText="Member ID" />
                        <asp:BoundField DataField="User_Name" HeaderText="User Name" />
                        <asp:CheckBoxField DataField="Lock_Account" HeaderText="Lock_Account" Text="Lock_Account" />
                        <asp:CheckBoxField DataField="InActive" HeaderText="InActive" Text="InActive" />
                        <asp:CommandField HeaderText="Select" ShowSelectButton="True" />
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
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style34"><strong>
                <asp:Label ID="Label_USERID" runat="server" CssClass="auto-style51" style="font-family: 'Segoe UI Variable Text'; color: #0000FF"></asp:Label>
                </strong></td>
            <td class="auto-style36"><strong>
                <asp:Label ID="LabelMemberID" runat="server" CssClass="auto-style51" style="font-family: 'Segoe UI Variable Text'; color: #0000FF"></asp:Label>
                </strong></td>
            <td class="auto-style52" colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                             </strong></td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29"><strong>
                <asp:Timer ID="Timer2" runat="server" Enabled="False" Interval="3000" OnTick="Timer2_Tick">
                </asp:Timer>
                </strong></td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style32" colspan="2">&nbsp;</td>
            <td class="auto-style12">
                    <asp:DropDownList ID="DropDownSelect_page" runat="server" CssClass="auto-style50" Height="43px" Width="385px" style="font-weight: bold; color: #FFFFFF; background-color: #0000FF" AutoPostBack="True">
                    </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>
                <asp:Timer ID="Timer3" runat="server" Enabled="False" Interval="3000" OnTick="Timer3_Tick">
                </asp:Timer>
                </strong></td>
            <td class="auto-style13"><strong>
                <asp:Label ID="Labe_ID" runat="server" CssClass="auto-style51" style="font-family: 'Segoe UI Variable Text'; color: #0000FF"></asp:Label>
                </strong></td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style20"><strong>
                <asp:Label ID="LabelPage_ID" runat="server" CssClass="auto-style51" style="font-family: 'Segoe UI Variable Text'; color: #FF3300"></asp:Label>
                </strong></td>
            <td class="auto-style14"><strong><span class="auto-style70"><asp:Label ID="LabelTitle" runat="server" CssClass="auto-style51" style="font-family: 'Segoe UI Variable Text'; color: #FF3300"></asp:Label>
                </span></strong></td>
        </tr>
        <tr>
            <td class="auto-style33">
                <asp:ScriptManager ID="ScriptManager2" runat="server">
                </asp:ScriptManager>
            </td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style56" colspan="2"><strong>
                <asp:Label ID="LabelMSS_Save" runat="server" CssClass="auto-style39" style="font-family: 'Segoe UI Variable Text'; color: #009900"></asp:Label>
                </strong></td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33"><strong>
                <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="3000" OnTick="Timer1_Tick">
                </asp:Timer>
                </strong></td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style56" colspan="2">&nbsp;</td>
            <td class="auto-style12"><strong>
                <asp:Label ID="LabelMSS" runat="server" CssClass="auto-style38" style="font-family: 'Segoe UI Variable Text'; color: #FF0000"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style33"><strong>
                <asp:Button ID="But_Delete" runat="server" Height="57px" Text="Delete permission" Width="295px" CssClass="auto-style44" OnClick="But_SaveReset_Click" style="font-family: 'Segoe UI Variable Text'; font-weight: bold; color: #FFFFFF; background-color: #0000FF;" />
                </strong></td>
            <td class="auto-style21" colspan="3"><strong>
                <asp:Button ID="But_Save" runat="server" Height="56px" Text="Save Permission" Width="284px" CssClass="auto-style45" OnClick="But_Save_Click" style="font-family: 'Segoe UI Variable Text'; font-weight: bold; background-color: #009900" />
                </strong></td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style21" colspan="3">&nbsp;</td>
            <td class="auto-style12">
                        <strong>
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style43" OnClick="LinkButton1_Click" style="font-size: large">To follow and delete</asp:LinkButton>

                        </strong></td>
        </tr>
        <tr>
            <td class="auto-style33" colspan="5"><strong>
                <asp:GridView ID="GridViewUser_Profile" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" Caption="Permissions allowed to the selected user" CellPadding="3" CssClass="mydatagrid" Font-Bold="True" Font-Italic="True" Font-Names="Lateef" Font-Size="X-Large" GridLines="Vertical" HeaderStyle-CssClass="header" Height="35px" PagerStyle-CssClass="pager" RowStyle-CssClass="rows" Style="text-align: center; font-size: medium; margin-top: 0; font-family: 'Segoe UI Variable Text'; margin-right: 0px;" Width="99%" OnSelectedIndexChanged="GridViewUser_Profile_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="Page_ID" HeaderText="Page ID" />
                        <asp:BoundField DataField="Title" HeaderText="Page Name" />
                        <asp:BoundField DataField="Member_ID" HeaderText="Member ID" />
                        <asp:BoundField DataField="Full_Name" HeaderText="Full_Name" />
                        <asp:BoundField DataField="Team_NAME" HeaderText="Team NAME" />
                        <asp:BoundField DataField="User_Name" HeaderText="User Name" />
                        <asp:CommandField ShowSelectButton="True" />
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
                </strong></strong></td>
        </tr>
    </table>
</asp:Content>
