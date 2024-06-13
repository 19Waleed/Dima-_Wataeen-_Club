<%@ Page Title="" Language="C#" MasterPageFile="~/Site_Club.Master" AutoEventWireup="true" CodeBehind="Enter_subscription.aspx.cs" Inherits="Dima__Wataeen__Club.Enter_subscription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            width: 100%;
            font-size: x-large;
            background-color: #BDB09F;
        }
        .auto-style20 {
            width: 327px;
        }
        .auto-style21 {
            font-weight: bold;
            font-size: x-large;
            margin-right: 27px;
            background-color: #009933;
        }
        .auto-style22 {
            width: 260px;
        }
        .auto-style23 {
            font-weight: bold;
            font-size: large;
            color: #FFFFFF;
            background-color: #0000FF;
        }
        .auto-style25 {
            color: #FFFFFF;
            font-weight: bold;
            font-size: x-large;
            background-color: #0000FF;
        }
        .auto-style27 {
            height: 45px;
            width: 188px;
        }
        .auto-style28 {
            width: 260px;
            height: 45px;
        }
        .auto-style29 {
            width: 327px;
            height: 45px;
        }
        .auto-style30 {
            text-align: center;
        }
        .auto-style34 {
            color: #0000FF;
        }
        .auto-style35 {
            color: #000000;
            font-size: xx-large;
        }
        .auto-style36 {
            font-weight: bold;
            font-size: x-large;
            background-color: #009933;
        }
        .auto-style37 {
            color: #FF3300;
            text-decoration: underline;
        }
        .auto-style38 {
            color: #FF3300;
            font-size: xx-large;
            text-decoration: underline;
        }
        .auto-style39 {
            height: 45px;
            text-align: center;
            width: 287px;
        }
        .auto-style40 {
            width: 270px;
        }
        .auto-style41 {
            width: 270px;
            height: 45px;
            text-align: right;
        }
        .auto-style42 {
            text-align: right;
        }
        .auto-style43 {
            width: 260px;
            text-align: right;
        }
        .auto-style44 {
            width: 270px;
            text-align: right;
        }
        .auto-style45 {
            text-align: center;
            width: 287px;
        }
        .auto-style48 {
            width: 188px;
        }
        .auto-style49 {
            width: 287px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style19">
        <tr>
            <td class="auto-style30" colspan="5"><strong>
                <asp:Label ID="Label17" runat="server" CssClass="auto-style35" Text="Export Subscription Data For Teams And Members"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style30" colspan="3">&nbsp;</td>
            <td class="auto-style48">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style30" colspan="3">&nbsp;</td>
            <td class="auto-style48">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style30" colspan="3">&nbsp;</td>
            <td class="auto-style48">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style42" colspan="2"><strong>
                <asp:Label ID="Label15" runat="server" Text="Select The Data You Need :"></asp:Label>
&nbsp;</strong></td>
            <td colspan="2">
                <asp:DropDownList ID="DropDownLiStservice_type" runat="server" AutoPostBack="True" Height="40px" OnSelectedIndexChanged="DropDownLiStservice_type_SelectedIndexChanged" TabIndex="2" Width="291px" style="font-size: x-large; font-family: 'Segoe UI Variable Text'; font-weight: bold; color: #FFFFFF; margin-right: 0px; background-color: #6600FF">
                    <asp:ListItem Selected="True" Value="0">Select Service Type</asp:ListItem>
                    <asp:ListItem Value="1">Add Team Subscription data</asp:ListItem>
                    <asp:ListItem Value="2">Add Member Subscription data</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td class="auto-style48">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style43">
                <strong>
                <asp:Label ID="Label14" runat="server" Text="Select Year :"></asp:Label>
                </strong>&nbsp;</td>
            <td colspan="2"><strong>
                <asp:DropDownList ID="DropYear" runat="server" CssClass="auto-style25" Font-Names="lateef" Height="44px" Width="48%">
                    <asp:ListItem Value="2023">2023</asp:ListItem>
                    <asp:ListItem Value="2024">2024</asp:ListItem>
                    <asp:ListItem Value="2025">2025</asp:ListItem>
                    <asp:ListItem Value="2026">2026</asp:ListItem>
                    <asp:ListItem Value="2027">2027</asp:ListItem>
                    <asp:ListItem Value="2029">2029</asp:ListItem>
                    <asp:ListItem Value="2030">2030</asp:ListItem>
                </asp:DropDownList>
                </strong></td>
            <td class="auto-style48">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style43">
                &nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td class="auto-style48">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style41">
                <strong>
                <asp:Label ID="Label6" runat="server" Text="Add Al Data :"></asp:Label>
                </strong>
            </td>
            <td class="auto-style28"><strong __designer:mapid="16e">
                <asp:Button ID="ButcountSubscriptions" runat="server" ClientIDMode="Predictable" CssClass="auto-style21" Font-Names="lateef" Height="59px" OnClick="ButcountSubscriptions_Click" Text="See number" Width="89%" />
                </strong></td>
            <td class="auto-style39">
                <asp:Label ID="LabelCount" runat="server" CssClass="auto-style38"></asp:Label>
            </td>
            <td class="auto-style29"><strong __designer:mapid="174">
                <asp:Button ID="But_SendDataAll" runat="server" CssClass="auto-style36" Height="53px" OnClick="But_SendDataAll_Click" Text="Send ALL Data " Width="291px" />
                </strong></td>
            <td class="auto-style27"></td>
        </tr>
        <tr>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style30" colspan="3"><strong>
                <asp:Label ID="Mss_Save" runat="server" CssClass="auto-style34"></asp:Label>
                </strong></td>
            <td class="auto-style48">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style44">
                <strong>
                <asp:Label ID="Label10" runat="server" Text="Add Selected Data :"></asp:Label>
                </strong>
            </td>
            <td class="auto-style22"><strong __designer:mapid="170">
                <asp:TextBox ID="TextBoxMember_ID" runat="server" AutoPostBack="True" CssClass="auto-style23" Height="36px" OnTextChanged="TextBoxMemberIdOrTeamId_TextChanged" Width="253px"></asp:TextBox>
                </strong></td>
            <td class="auto-style45">
                <asp:Label ID="LabelMember_ID" runat="server" CssClass="auto-style37"></asp:Label>
            </td>
            <td class="auto-style20"><strong __designer:mapid="176">
                <asp:Button ID="ButtSendSelectedData" runat="server" CssClass="auto-style36" Height="66px" OnClick="ButtSendSelectedData_Click" Text="Send Selected Data" Width="290px" />
                </strong></td>
            <td class="auto-style48">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style20"><strong>
                    <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="2000" OnTick="Timer1_Tick">
                </asp:Timer>
                    </strong></td>
            <td class="auto-style48"><strong>
                    <asp:ScriptManager ID="ScriptManager2" runat="server">
                    </asp:ScriptManager>
                    </strong></td>
        </tr>
        </table>
</asp:Content>
