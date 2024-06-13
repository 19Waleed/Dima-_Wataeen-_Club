<%@ Page Title="" Language="C#" MasterPageFile="~/Site_Club.Master" AutoEventWireup="true" CodeBehind="UserAdd.aspx.cs" Inherits="Dima__Wataeen__Club.UserAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
    .auto-style21 {
        text-align: center;
    }
    .auto-style22 {
        width: 239px;
              text-align: right;
          }
    .auto-style27 {
        width: 1036px;
    }
        .auto-style29 {
            width: 296px;
            text-align: right;
        }
          .auto-style30 {
              text-align: left;
          }
          .auto-style31 {
              text-align: right;
          }
          .auto-style32 {
              width: 637px;
          }
          .auto-style33 {
              text-align: center;
              width: 296px;
          }
          .auto-style34 {
              width: 296px;
          }
          .auto-style35 {
              font-size: x-large;
          }
          .auto-style36 {
              width: 670px;
          }
          .auto-style37 {
              text-align: right;
              width: 670px;
          }
          .auto-style38 {
              text-align: left;
              font-size: x-large;
          }
          .auto-style39 {
              text-align: left;
              font-size: xx-large;
          }
          .auto-style40 {
              width: 1188px;
          }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style27">
        <tr>
            <td class="auto-style21" colspan="5">
                <strong>
                <asp:Label ID="LabelMSS_Save" runat="server" CssClass="auto-style39" style="font-family: 'Segoe UI Variable Text'; color: #009900"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style36"><strong>
                <asp:DropDownList ID="DropDownLiStservice_type" runat="server" AutoPostBack="True" CssClass="auto-style46" Height="40px" OnSelectedIndexChanged="DropDownLiStservice_type_SelectedIndexChanged" TabIndex="2" Width="322px" style="font-family: 'Segoe UI Variable Text'; font-weight: bold; color: #FFFFFF; margin-right: 0px; background-color: #0000FF; font-size: x-large;">
                    <asp:ListItem Selected="True" Value="0">Select Service Type</asp:ListItem>
                    <asp:ListItem Value="1">Add a new user</asp:ListItem>
                    <asp:ListItem Value="2">Edit user Profile</asp:ListItem>
                    <asp:ListItem Value="3">Password Reset</asp:ListItem>
                </asp:DropDownList>
                </strong></td>
            <td class="auto-style31" colspan="2"><strong>
                <asp:Label ID="Label15" runat="server" CssClass="auto-style35" Text="Search for a user"></asp:Label>
                </strong></td>
            <td class="auto-style30"><strong>
                <asp:TextBox ID="TextBoxSearch" runat="server" AutoPostBack="True" CssClass="auto-style60" Height="41px" OnTextChanged="TextBoxSearch_TextChanged" TabIndex="20" ToolTip="Search" Width="307px" style="font-family: 'Segoe UI Variable Text'; font-weight: bold; color: #FFFFFF; background-color: #0000FF; font-size: x-large;"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style21" colspan="5"><strong>
                <asp:Label ID="LabelMSS" runat="server" CssClass="auto-style38" style="font-family: 'Segoe UI Variable Text'; color: #FF0000"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td colspan="5"><strong>
                <asp:GridView ID="GridViewAddnewuser" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" Caption="Select the user you want to Add New User" CellPadding="3" CssClass="mydatagrid" Font-Bold="True" Font-Italic="True" Font-Names="Lateef" Font-Size="X-Large" GridLines="Vertical" HeaderStyle-CssClass="header" Height="35px" PagerStyle-CssClass="pager" RowStyle-CssClass="rows" Style="text-align: center; font-size: medium; margin-top: 0; font-family: 'Segoe UI Variable Text'; margin-right: 0px;" Width="97%" OnSelectedIndexChanged="GridViewAddnewuser_SelectedIndexChanged" Visible="False">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" />
                        <asp:BoundField DataField="Member_ID" HeaderText="Member ID" />
                        <asp:BoundField DataField="Full_Name" HeaderText="Full_Name" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" />
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
                </strong></td>
        </tr>
        <tr>
            <td colspan="5"><strong>
                <asp:GridView ID="GridViewEdit_user" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" Caption="Select the user you want to edit" CellPadding="2" CssClass="mydatagrid" Font-Bold="True" Font-Italic="True" Font-Names="Lateef" Font-Size="X-Large" GridLines="Vertical" HeaderStyle-CssClass="header" Height="35px" PagerStyle-CssClass="pager" PageSize="2" RowStyle-CssClass="rows" Style="text-align: center; font-size: medium; font-family: 'Segoe UI Variable Text';" Width="97%" ForeColor="Black" OnSelectedIndexChanged="GridViewEdit_user_SelectedIndexChanged">
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
                <asp:Button ID="But_SaveReset" runat="server" Height="43px" Text="Selected Reset" Width="295px" CssClass="auto-style44" OnClick="But_SaveReset_Click" style="font-family: 'Segoe UI Variable Text'; font-weight: bold; color: #FFFFFF; background-color: #0000FF;" />
                </strong></td>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style52" colspan="2"><strong>
                <asp:Label ID="ID__id" runat="server" CssClass="auto-style51" style="font-family: 'Segoe UI Variable Text'; color: #0000FF"></asp:Label>
                </strong><span class="auto-style70"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             </strong>
                             </span><strong>
                <asp:Label ID="LabelMemberID" runat="server" Text="Member ID" CssClass="auto-style51" style="font-family: 'Segoe UI Variable Text'; color: #0000FF"></asp:Label>
                </strong><span class="auto-style70"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong> </span></td>
            <td class="auto-style67">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29"><strong>
                    <asp:Timer ID="Timer2" runat="server" Enabled="False" Interval="3000" OnTick="Timer2_Tick">
                    </asp:Timer>
                    </strong></td>
            <td class="auto-style37"><strong>
                <asp:Label ID="Label2" runat="server" Text="User Name" CssClass="auto-style55" style="font-family: 'Segoe UI Variable Text'"></asp:Label>
                </strong></td>
            <td class="auto-style32" colspan="2">
                <strong>
                <asp:TextBox ID="TextBoxUserName" runat="server" CssClass="auto-style66" style="font-family: 'Segoe UI Variable Text'; font-weight: bold; color: #FFFFFF; background-color: #0000FF;" Height="41px" Width="322px"></asp:TextBox>
                </strong></td>
            <td class="auto-style31"></td>
        </tr>
        <tr>
            <td class="auto-style34"><strong>
                    <asp:Timer ID="Timer3" runat="server" Enabled="False" Interval="3000" OnTick="Timer3_Tick">
                    </asp:Timer>
                    </strong></td>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style40">
                <strong>
                <asp:CheckBox ID="CheckBoxInActive" runat="server" CssClass="auto-style55" Text="InActive" style="font-family: 'Segoe UI Variable Text'" />
                </strong>
            </td>
            <td class="auto-style22"><strong>
                <asp:CheckBox ID="CheckBoxLock_Account" runat="server" CssClass="auto-style55" Text="Lock_Account" style="font-family: 'Segoe UI Variable Text'" />
                </strong></td>
            <td class="auto-style69"><strong>&nbsp;&nbsp;</strong></td>
        </tr>
        <tr>
            <td class="auto-style33">


        <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
                    </td>
            <td class="auto-style37"><strong>
                <asp:Label ID="Label3" runat="server" Text="Enter the new password" CssClass="auto-style106" style="font-family: 'Segoe UI Variable Text'"></asp:Label>
                </strong></td>
            <td class="auto-style56" colspan="2">
                <strong>
                <asp:TextBox ID="TextBoxUser_Pass" runat="server" CssClass="auto-style105" style="font-family: 'Segoe UI Variable Text'; font-weight: bold; color: #FFFFFF; background-color: #0000FF;" Width="330px" Height="40px"></asp:TextBox>
                </strong>
            </td>
            <td class="auto-style67">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">
                    <strong>
                    <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="3000" OnTick="Timer1_Tick">
                    </asp:Timer>
                    </strong>
                </td>
            <td class="auto-style37"><strong>
                <asp:Label ID="Label13" runat="server" Text="password confirmation" CssClass="auto-style106" style="font-family: 'Segoe UI Variable Text'"></asp:Label>
                </strong></td>
            <td class="auto-style56" colspan="2">
                <strong>
                <asp:TextBox ID="TextBoxUser_PassConfirm" runat="server" CssClass="auto-style105" style="font-family: 'Segoe UI Variable Text'; font-weight: bold; color: #FFFFFF; background-color: #0000FF;" Width="336px" Height="41px"></asp:TextBox>
                </strong>
            </td>
            <td class="auto-style67">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style21" colspan="3">
                <strong>
                <asp:Button ID="But_Save" runat="server" Height="56px" Text="Save" Width="376px" CssClass="auto-style45" OnClick="But_Save_Click" style="font-family: 'Segoe UI Variable Text'; font-weight: bold; background-color: #99FF66" />
                </strong>
            </td>
            <td class="auto-style75"></td>
        </tr>
        </table>
</asp:Content>
