<%@ Page Title="" Language="C#" MasterPageFile="~/Site_Club.Master" AutoEventWireup="true" CodeBehind="Approve_Player.aspx.cs" Inherits="Dima__Wataeen__Club.Approve_Player" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            background-color: #AFA597;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style2">
        <table class="auto-style13">
            <tr>
                <td class="auto-style26" colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26" colspan="4">
                <asp:GridView ID="GridViewSelect_Approve" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" Caption="Waiting for the application to be approved" CellPadding="4" CssClass="mydatagrid" Font-Bold="True" Font-Italic="True" Font-Names="Lateef" Font-Size="X-Large" HeaderStyle-CssClass="header" Height="35px" PagerStyle-CssClass="pager" RowStyle-CssClass="rows" Style="text-align: center; font-size: medium; margin-top: 0; font-family: 'Segoe UI Variable Text'; margin-right: 0px;" Width="100%" Visible="False" OnSelectedIndexChanged="GridViewSelect_Approve_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" />
                        <asp:BoundField DataField="Member_ID" HeaderText="Member ID" />
                        <asp:BoundField DataField="Full_Name" HeaderText="Full Name" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" />
                        <asp:BoundField DataField="Team_ID" HeaderText="Team_ID" />
                        <asp:BoundField DataField="Member_Type" HeaderText="Member Type" />
                        <asp:BoundField DataField="ID_subscription" HeaderText="ID subscription" />
                        <asp:BoundField DataField="Marital_Status" HeaderText="Marital Status" />
                        <asp:BoundField DataField="Address" HeaderText="Address" />
                        <asp:BoundField DataField="Card_ID_ON" HeaderText="Card ID ON" />
                        <asp:BoundField DataField="Joining_Date" HeaderText="Joining Date" DataFormatString="{0:dd/MM/yyyy}" />
                        <asp:BoundField DataField="Date_Birth" HeaderText="Birth Date" DataFormatString="{0:dd/MM/yyyy}" />
                        <asp:BoundField DataField="Subscription" HeaderText="Subscription" />
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
                <td class="auto-style36"><strong>
                    <asp:Label ID="LabelID" runat="server" CssClass="auto-style43" style="color: #FF3300; font-size: x-large"></asp:Label>
                    </strong></td>
                <td class="auto-style33" colspan="2"><strong><span class="auto-style58">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:Label ID="Mss_update" runat="server" CssClass="auto-style68" style="color: #FF0000; font-size: x-large;"></asp:Label>
                    </strong></td>
                <td class="auto-style35">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style36">&nbsp;</td>
                <td class="auto-style33"><strong>
                    <asp:Label ID="Mss_Notes" runat="server" CssClass="auto-style49" style="color: #FF3300; font-size: x-large;"></asp:Label>
                    </strong></td>
                <td class="auto-style34" rowspan="2">
                     <span class="auto-style42">
                    <strong><span class="auto-style40">
                    <asp:Image ID="Image1" runat="server" Visible="false" Height="200px" Width="258px" />
                </span></strong>
        </span></td>
                <td class="auto-style35"><strong>
                    <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="3000" OnTick="Timer1_Tick">
                    </asp:Timer>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>
                    <asp:Label ID="Label11" runat="server" CssClass="auto-style16" Text="Note" Visible="False"></asp:Label>
                    </strong></td>
                <td class="auto-style14"><strong>
                    <asp:TextBox ID="TextBoxNotes" runat="server" Height="46px" Width="570px" style="font-weight: bold; background-color: #0000FF; color: #FFFFFF; font-size: x-large;" CssClass="auto-style65" Visible="False"></asp:TextBox>
                    </strong></td>
                <td class="auto-style51">
                     <span class="auto-style42">
                    <asp:Label ID="Label18" runat="server" CssClass="auto-style90"></asp:Label>
        </span></td>
            </tr>
            <tr>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style24" colspan="2"><strong>
                    <asp:ScriptManager ID="ScriptManager2" runat="server">
                    </asp:ScriptManager>
                     <span class="auto-style42">
                    <asp:Label ID="lblMessage" runat="server" CssClass="auto-style22"></asp:Label>
                    <span class="auto-style40">
                    <asp:Label ID="Label14" runat="server" CssClass="auto-style50"></asp:Label>
                </span>
        </span>
                    </strong></td>
                <td class="auto-style25"><strong>
                    <asp:Timer ID="Timer3" runat="server" Enabled="False" Interval="3000" OnTick="Timer3_Tick">
                    </asp:Timer>
                    <asp:Timer ID="Timer2" runat="server" Enabled="False" Interval="3000" OnTick="Timer2_Tick">
                    </asp:Timer>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style24" colspan="2"><strong>
                    <asp:Label ID="Mss_Save" runat="server" CssClass="auto-style64" style="font-size: x-large; color: #339933"></asp:Label>
                    </strong></td>
                <td class="auto-style25">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21"></td>
                <td class="auto-style23"><strong><span class="auto-style58">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:Button ID="But_Save" runat="server" Height="52px" Text="Approval of the request" Width="416px" CssClass="auto-style62" style="font-weight: bold; font-size: x-large; background-color: #0066FF; color: #FFFFFF;" Visible="False" OnClick="But_Save_Click" />
                    </strong></td>
                <td class="auto-style21"><strong>
                    <asp:Button ID="But_Return" runat="server" Height="59px" Text="Return to the team" Width="329px" CssClass="auto-style62" Visible="False" style="font-weight: bold; font-size: x-large; background-color: #0066FF; color: #FFFFFF;" OnClick="But_Return_Click" />
                    </strong></td>
                <td class="auto-style21">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">
                     <span class="auto-style42">
                <strong><asp:Label ID="LabelUser_Name" runat="server" CssClass="auto-style9" style="color: #FFFFFF; font-size: large" Visible="False"></asp:Label>
                                </strong>
        </span>
                </td>
                <td class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style18"></td>
                <td class="auto-style18"><span class="auto-style42">
                    <strong>
                                <asp:Label ID="LabelTeam_ID" runat="server" CssClass="auto-style9" style="color: #FFFFFF; font-size: large" Visible="False"></asp:Label>
                                </strong>
        </span>
                </td>
            </tr>
            <tr>
                <td class="auto-style53" colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style67" colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style19" colspan="2"><strong><span class="auto-style58">&nbsp;&nbsp;&nbsp;&nbsp; </span></strong></td>
                <td class="auto-style58">&nbsp;</td>
            </tr>
            <span class="auto-style42"></span>
                     </strong>
                     <span class="auto-style42">
        </table>
        </span>
    </div>
</asp:Content>
