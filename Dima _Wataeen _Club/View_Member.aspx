<%@ Page Title="" Language="C#" MasterPageFile="~/Site_Club.Master" AutoEventWireup="true" CodeBehind="View_Member.aspx.cs" Inherits="Dima__Wataeen__Club.View_Member" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style28 {
            width: 259px;
            height: 121px;
            font-size: large;
        }
        .auto-style33 {
            width: 181px;
        }
        .auto-style35 {
            width: 148px;
        }
        .auto-style38 {
            width: 203px;
        }
        .auto-style41 {
            width: 161px;
        }
        .auto-style42 {
            width: 202px;
            height: 121px;
        }
        .auto-style43 {
            width: 200px;
            height: 121px;
        }
        .auto-style48 {
            width: 217px;
            height: 67px;
            font-size: large;
        }
        .auto-style49 {
            width: 177px;
            height: 67px;
            font-size: large;
        }
        .auto-style52 {
            width: 161px;
            height: 41px;
            text-align: right;
        }
        .auto-style53 {
            width: 203px;
            height: 41px;
            text-align: left;
        }
        .auto-style55 {
            width: 181px;
            height: 41px;
            text-align: left;
        }
        .auto-style58 {
            width: 177px;
            height: 79px;
        }
        .auto-style59 {
            width: 203px;
            height: 40px;
            text-align: left;
        }
        .auto-style60 {
            width: 218px;
            height: 79px;
        }
        .auto-style61 {
            width: 181px;
            height: 79px;
        }
        .auto-style64 {
            width: 181px;
            height: 40px;
            text-align: left;
        }
        .auto-style66 {
            width: 161px;
            height: 40px;
            text-align: right;
        }
        .auto-style67 {
            width: 201px;
        }
        .auto-style68 {
            width: 201px;
            height: 41px;
        }
        .auto-style69 {
            width: 201px;
            height: 40px;
        }
        .auto-style71 {
            width: 216px;
        }
        .auto-style72 {
            height: 41px;
            width: 216px;
        }
        .auto-style73 {
            width: 216px;
            height: 40px;
        }
        .auto-style75 {
            width: 199px;
        }
        .auto-style76 {
            height: 41px;
            width: 199px;
            text-align: right;
        }
        .auto-style77 {
            width: 199px;
            height: 40px;
            text-align: right;
        }
        .auto-style78 {
            width: 215px;
        }
        .auto-style79 {
            height: 41px;
            width: 209px;
            text-align: left;
        }
        .auto-style80 {
            width: 209px;
            height: 40px;
            text-align: left;
        }
        .auto-style81 {
            width: 209px;
        }
        .auto-style82 {
            width: 202px;
            text-align: left;
        }
        .auto-style83 {
            width: 203px;
            text-align: left;
        }
        .auto-style84 {
            width: 209px;
            text-align: left;
        }
        .auto-style85 {
            width: 199px;
            text-align: right;
        }
        .auto-style86 {
            width: 161px;
            text-align: right;
        }
        .auto-style87 {
            width: 184px;
            text-align: right;
        }
        .auto-style88 {
            width: 184px;
            height: 41px;
            text-align: right;
        }
        .auto-style89 {
            width: 184px;
            height: 40px;
            text-align: right;
        }
        .auto-style90 {
            font-size: xx-small;
            background-color: #FF3300;
        }
        .auto-style91 {
            width: 184px;
        }
        .auto-style92 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style78">
        <table class="auto-style58">
            <span class="auto-style42">
                </span>
                     </strong>
                     </strong>
                     <span class="auto-style42">
            <tr>
                <td class="auto-style67">
                     <span class="auto-style42">
                    <strong>
                <asp:Label ID="Label17" runat="server" CssClass="auto-style35" Text="Search"></asp:Label>
                </strong>
        </span>
                </td>
                <td class="auto-style91">
                     <span class="auto-style42">
                    <strong>
                <asp:TextBox ID="TextBoxSearch" runat="server" AutoPostBack="True" CssClass="auto-style60" Height="41px" OnTextChanged="TextBoxSearch_TextChanged" TabIndex="20" ToolTip="Search" Width="225px" style="font-family: 'Segoe UI Variable Text'; font-weight: bold; color: #FFFFFF; background-color: #0000FF; font-size: x-large;"></asp:TextBox>
                </strong>
        </span>
                </td>
                <td class="auto-style81">
                    &nbsp;</td>
                <td class="auto-style41">
                    &nbsp;</td>
                <td class="auto-style38">
                     &nbsp;</td>
                <td class="auto-style75">
                     &nbsp;</td>
                <td class="auto-style33">
                     &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style67">
                    &nbsp;</td>
                <td class="auto-style91">
                    &nbsp;</td>
                <td colspan="5">
                     <span class="auto-style42">
                    <strong>
                <asp:GridView ID="GridViewSelect_Return" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="mydatagrid" Font-Bold="True" Font-Italic="True" Font-Names="Lateef" Font-Size="X-Large" GridLines="Vertical" HeaderStyle-CssClass="header" Height="33px" PagerStyle-CssClass="pager" RowStyle-CssClass="rows" Style="text-align: center; font-size: small; margin-top: 0; font-family: 'Segoe UI Variable Text'; margin-right: 0px;" Width="63%" Visible="False" OnSelectedIndexChanged="GridViewSelect_Return_SelectedIndexChanged1">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" />
                        <asp:BoundField DataField="Member_ID" HeaderText="Member ID" />
                        <asp:BoundField DataField="Full_Name" HeaderText="Full Name" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" />
                        <asp:BoundField DataField="Team_NAME" HeaderText="Team NAME" />
                        <asp:BoundField DataField="Member_Type" HeaderText="Member Type" />
                        <asp:BoundField DataField="JobName" HeaderText="JobName" />
                        <asp:BoundField DataField="Marital_Status" HeaderText="Marital Status" />
                        <asp:BoundField DataField="Address" HeaderText="Address" />
                        <asp:BoundField DataField="Card_ID_ON" HeaderText="Card ID ON" />
                        <asp:BoundField DataField="Joining_Date" HeaderText="Joining Date" DataFormatString="{0:dd/MM/yyyy}" />
                        <asp:BoundField DataField="Date_Birth" HeaderText="Birth Date" DataFormatString="{0:dd/MM/yyyy}" />
                        <asp:BoundField DataField="Subscription" HeaderText="Subscription" />
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
        </span>
                </td>
            </tr>
            <tr>
                <td class="auto-style67">
                    &nbsp;</td>
                <td class="auto-style91">
                     <span class="auto-style42">
                    <strong><span class="auto-style40">
                    <asp:Image ID="Image1" runat="server" Visible="false" Height="200px" Width="200px" />
                     <br />
                </span></strong>
                     <asp:Label ID="Label18" runat="server" CssClass="auto-style90"></asp:Label>
        </span>
                </td>
                <td colspan="5">
                     &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style68">
                    <asp:Label ID="LabelID" runat="server" Visible="False"></asp:Label>
                </td>
                <td class="auto-style88">
                    <strong>
                    <asp:Label ID="ID__id" runat="server" CssClass="auto-style92" Text="ID"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style79">
                    <strong>
                    <asp:Label ID="LabelMember_ID" runat="server" CssClass="auto-style28" Visible="False" style="color: #0000FF; font-weight: bold"></asp:Label>
        &nbsp; </strong>
                </td>
                <td class="auto-style52">
                    <strong>
                    <asp:Label ID="Label7" runat="server" Text="Date Birth  : " CssClass="auto-style43" Visible="False" style="font-size: large"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style53">
                     <strong>


                    <asp:Label ID="LabelDateBirth" runat="server" CssClass="auto-style48" Visible="False" style="color: #0000FF; font-weight: bold"></asp:Label>
                     </strong>
                </td>
                <td class="auto-style76">
                     <strong>
                    <asp:Label ID="Label11" runat="server" Text="Card ID ON  : " CssClass="auto-style43" Visible="False" style="font-size: large"></asp:Label>
                     </strong>
                    </td>
                <td class="auto-style55">
                     <strong>
                    <asp:Label ID="TextBoxCard_ID_ON" runat="server" CssClass="auto-style73" Visible="False" style="color: #0000FF; font-weight: bold; font-size: large"></asp:Label>
                     </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style69">
                    &nbsp;</td>
                <td class="auto-style89">
                    <strong>
                    <asp:Label ID="Label_Name" runat="server" Text="Full Name  :" CssClass="auto-style61" Visible="False" style="font-size: large"></asp:Label>
                    </strong>
                    </td>
                <td class="auto-style80">
                    <strong>
                    <asp:Label ID="TextBoxFull_Name" runat="server" CssClass="auto-style72" Visible="False" style="color: #0000FF; font-weight: bold; font-size: large"></asp:Label>
                    </strong>
                    </td>
                <td class="auto-style66">
                    <strong>
                    <asp:Label ID="Label4" runat="server" Text="Address  :" CssClass="auto-style61" Visible="False" style="font-size: large"></asp:Label>
                    </strong>
                    </td>
                <td class="auto-style59">
                     <strong>
                    <asp:Label ID="TextBoxAddress" runat="server" CssClass="auto-style72" Visible="False" style="color: #0000FF; font-weight: bold; font-size: large"></asp:Label>
                     </strong>
                    </td>
                <td class="auto-style77">
                     <strong>
                    <asp:Label ID="Label15" runat="server" Text="Select Member Type  :" CssClass="auto-style61" Visible="False" style="font-size: large"></asp:Label>
                     </strong>
                    </td>
                <td class="auto-style64">
                     <strong>
                    <asp:Label ID="MemberType" runat="server" CssClass="auto-style72" Visible="False" style="color: #0000FF; font-weight: bold; font-size: large"></asp:Label>
                     </strong>
                    </td>
            </tr>
            <tr>
                <td class="auto-style68">&nbsp;</td>
                <td class="auto-style88"><strong>
                    <asp:Label ID="Label8" runat="server" Text="Phone  :" CssClass="auto-style61" Visible="False" style="font-size: large"></asp:Label>
                    </strong></td>
                <td class="auto-style79"><strong>
                    <asp:Label ID="TextBoxPhone" runat="server" CssClass="auto-style72" Visible="False" style="color: #0000FF; font-weight: bold; font-size: large"></asp:Label>
                    </strong></td>
                <td class="auto-style52"><strong>
                    <asp:Label ID="Label12" runat="server" Text="Joining Date : " CssClass="auto-style43" Visible="False" style="font-size: large"></asp:Label>
                    </strong></td>
                <td class="auto-style53">
                     <strong>
                    <asp:Label ID="LabelJoiningDate" runat="server" CssClass="auto-style49" Visible="False" style="color: #0000FF; font-weight: bold"></asp:Label>
                     </strong>
                </td>
                <td class="auto-style76">
                     <strong>
                    <asp:Label ID="Label16" runat="server" Text="Job/Subscription" CssClass="auto-style61" Visible="False" style="font-size: large"></asp:Label>
                     </strong>
                    </td>
                <td class="auto-style55">
                     <strong>
                    <asp:Label ID="TextBoxsubscription" runat="server" CssClass="auto-style73" Visible="False" style="color: #0000FF; font-weight: bold; font-size: large"></asp:Label>
                     </strong>
                    </td>
            </tr>
            <tr>
                <td class="auto-style67">
                    </td>
                <td class="auto-style87">
                    <strong>
                    <asp:Label ID="Label6" runat="server" Text="Marital Status: " CssClass="auto-style43" Visible="False" style="font-size: large"></asp:Label>
                    </strong>
                    </td>
                <td class="auto-style84">
                    <strong>
                    <asp:Label ID="DropDownMarital_Status" runat="server" CssClass="auto-style72" Visible="False" style="color: #0000FF; font-weight: bold; font-size: large"></asp:Label>
                    </strong>
                    </td>
                <td class="auto-style86">
                    <strong>
                    <asp:Label ID="Label10" runat="server" Text="Team  :" CssClass="auto-style61" Visible="False" style="font-size: large"></asp:Label>
                    </strong>
                    </td>
                <td class="auto-style83">
                     <strong>
                    <asp:Label ID="DropDownTeam_ID" runat="server" CssClass="auto-style49" Visible="False" style="color: #0000FF; font-weight: bold"></asp:Label>
                     </strong>
                    </td>
                <td class="auto-style85">
                     <strong>
                    <asp:Label ID="LabelIDSubscription" runat="server" Text="Subscription value  :" CssClass="auto-style61" Visible="False" style="font-size: large"></asp:Label>
                     </strong>
                    </td>
                <td class="auto-style82">
                     <strong>
                    <asp:Label ID="LabelSubscription" runat="server" CssClass="auto-style71" Visible="False" style="color: #0000FF; font-weight: bold; font-size: large"></asp:Label>
                     </strong>
                    </td>
            </tr>
            <tr>
                <td class="auto-style67">&nbsp;</td>
                <td class="auto-style91">&nbsp;</td>
                <td class="auto-style81">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style38">
                    &nbsp;</td>
                <td class="auto-style75">
                    &nbsp;</td>
                <td class="auto-style33">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style67">
                    &nbsp;</td>
                <td class="auto-style91">
                     <span class="auto-style42">
                <strong><asp:Label ID="LabelUser_Name" runat="server" CssClass="auto-style9" style="color: #FFFFFF; font-size: large" Visible="False"></asp:Label>
                                </strong>
        </span>
                </td>
                <td class="auto-style81">
                    <strong><span class="auto-style40">
                    <asp:Label ID="Label14" runat="server" CssClass="auto-style50"></asp:Label>
                </span>
                    <asp:Label ID="lblMessage" runat="server" CssClass="auto-style22"></asp:Label>
                    </strong></td>
                <td class="auto-style41">
                    &nbsp;</td>
                <td class="auto-style38">
                    &nbsp;</td>
                <td class="auto-style75">
                     <span class="auto-style42">
                <strong>
                                <asp:Label ID="LabelTeam_ID" runat="server" CssClass="auto-style9" style="color: #FFFFFF; font-size: large" Visible="False"></asp:Label>
                                </strong>
        </span>
                    </td>
                <td class="auto-style33">
                    <strong>


        <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
                    </strong>
                    </td>
            </tr>
            </table>
        </span>
    </div>
</asp:Content>
