<%@ Page Title="" Language="C#" MasterPageFile="~/Site_Club.Master" AutoEventWireup="true" CodeBehind="PaymentSubscriptions.aspx.cs" Inherits="Dima__Wataeen__Club.PaymentSubscriptions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style22 {
            font-size: x-large;
            color: #FF3300;
        }
        .auto-style23 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style24 {
            font-size: x-large;
            color: #0000FF;
        }
        .auto-style29 {
            width: 248px;
        }
        .auto-style30 {
            vertical-align: top;
            width: 1375px;
            margin-top: 0px;
            background-color: #BDB09F;
        }
        .auto-style31 {
            width: 144px;
        }
        .auto-style35 {
            font-weight: bold;
            font-size: x-large;
            width: 114px;
        }
        .auto-style40 {
            font-weight: bold;
            font-size: x-large;
            width: 116px;
        }
        .auto-style41 {
            font-weight: bold;
            font-size: x-large;
            width: 204px;
        }
        .auto-style42 {
            font-size: x-large;
            width: 139px;
            text-align: center;
        }
        .auto-style43 {
            width: 1649px;
        }
        .auto-style44 {
            width: 1375px;
        }
        .auto-style47 {
            width: 248px;
            height: 53px;
        }
        .auto-style48 {
            width: 144px;
            height: 53px;
        }
        .auto-style49 {
            font-weight: bold;
            font-size: x-large;
            width: 204px;
            height: 53px;
        }
        .auto-style50 {
            font-size: xx-small;
        }
        .auto-style51 {
            width: 144px;
            text-align: center;
        }
        .auto-style52 {
            width: 248px;
            text-align: right;
        }
        .auto-style53 {
            padding-bottom: 0px;
        }
    </style>
    <script type="text/javascript">
        function previewImage() {
            var fileUpload = document.getElementById('<%= FileUpload1.ClientID %>');
            var image = document.getElementById('<%= Image1.ClientID %>');
            if (fileUpload.files && fileUpload.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    image.src = e.target.result;
                    image.style.display = 'block';
                    image.style.width = '200px'; 
                    image.style.height = '200px'; 
                }
                reader.readAsDataURL(fileUpload.files[0]);
            } else {
                image.style.display = 'none';
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style44">
        <table class="auto-style30"/>
            <tr>
                <td class="auto-style52">
                    <strong>
                <asp:Label ID="Label11" runat="server" Text="Search " CssClass="auto-style59" style="font-size: x-large; font-family: 'Segoe UI Variable Text'"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style31">
                <asp:TextBox ID="TextBoxSearch" runat="server" AutoPostBack="True" CssClass="auto-style60" Height="41px" OnTextChanged="TextBoxSearch_TextChanged" TabIndex="20" ToolTip="Search" Width="512px" style="font-size: x-large; font-family: 'Segoe UI Variable Text'; font-weight: bold; color: #FFFFFF; background-color: #0000FF;"></asp:TextBox>
                </td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style35">
                    &nbsp;</td>
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
                <td class="auto-style29"><strong>
                    <asp:Label ID="LabelID" runat="server" CssClass="auto-style43" style="color: #FF3300; font-size: x-large"></asp:Label>
                    </strong></td>
                <td class="auto-style31">
                    <strong>
                    <asp:Label ID="LabelFull_Name" runat="server" CssClass="auto-style24"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style41">
                    <strong>
                    <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="3000" OnTick="Timer1_Tick">
                    </asp:Timer>
                    </strong>
                </td>
                <td class="auto-style35">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style47"></td>
                <td class="auto-style48"><strong>
                    <asp:Label ID="Mss_Save" runat="server" CssClass="auto-style64" style="font-size: x-large; color: #339933"></asp:Label>
                    </strong></td>
                <td class="auto-style49">&nbsp;</td>
                <td class="auto-style35" rowspan="8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">
                    <strong>
                    <asp:Label ID="Label12" runat="server" Text="Enter payment date" CssClass="auto-style43" Visible="False" style="font-size: x-large"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style31">
                    <strong>
                    <asp:Label ID="LabelPayment_Date" runat="server" CssClass="auto-style49" style="font-size: x-large; color: #0000FF"></asp:Label>
                    </strong>
                    </td>
                <td class="auto-style41">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29"><strong>
                    <asp:Timer ID="Timer3" runat="server" Enabled="False" Interval="3000" OnTick="Timer3_Tick">
                    </asp:Timer>
                    </strong></td>
                <td class="auto-style31">
                    <strong>
                    <asp:Label ID="Mss_Payment_Date" runat="server" CssClass="auto-style49" style="color: #FF3300; font-size: x-large;"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style41"><strong>
                    <asp:ScriptManager ID="ScriptManager2" runat="server">
                    </asp:ScriptManager>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style29"><strong><span class="auto-style40">
                    <asp:Calendar ID="CalendarPayment_Date" runat="server" BackColor="White" BorderColor="Black" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="75px" Width="92px" OnSelectionChanged="CalendarJoiningDate_SelectionChanged" BorderStyle="Solid" CellSpacing="1" NextPrevFormat="ShortMonth" Visible="False">
                        <DayHeaderStyle Font-Bold="True" Height="8pt" Font-Size="8pt" ForeColor="#333333" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="White" Font-Bold="True" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" Font-Bold="True" Font-Size="12pt" ForeColor="White" BorderStyle="Solid" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar>
                    </span></strong></td>
                <td class="auto-style31"><strong><asp:FileUpload ID="FileUpload1" runat="server" Visible="False" AllowMultiple="True" BorderStyle="None" onchange="previewImage();" CssClass="auto-style23" />
                    </strong></td>
                <td class="auto-style41"><strong><span class="auto-style40">
                    <asp:Label ID="Label14" runat="server" CssClass="auto-style50"></asp:Label>
<asp:Image ID="Image1" runat="server" Visible="false" Height="16px" Width="16px" CssClass="auto-style53" />
                    </span></strong></td>
            </tr>
            <tr>
                <td class="auto-style29"><strong>
                    <asp:Label ID="Label13" runat="server" Text="Proof of payment" CssClass="auto-style43" Visible="False" style="font-size: x-large"></asp:Label>
                    </strong></td>
                <td class="auto-style31"><strong>
                    <asp:Label ID="Mss_update" runat="server" CssClass="auto-style68" style="color: #FF0000; font-size: x-large;"></asp:Label>
                    </strong></td>
                <td class="auto-style41"><strong>
                    <asp:Label ID="lblMessage" runat="server" CssClass="auto-style22"></asp:Label>
                    </strong>            
                </td>
            </tr>
            <tr>
                <td class="auto-style29"><strong>
                    <asp:Timer ID="Timer2" runat="server" Enabled="False" Interval="3000" OnTick="Timer2_Tick">
                    </asp:Timer>
                    </strong></td>
                <td class="auto-style51"><strong>
                    <asp:Button ID="But_Save" runat="server" Height="52px" Text="Save Payment Details" Width="416px" CssClass="auto-style62" style="font-weight: bold; font-size: x-large; background-color: #0066FF; color: #FFFFFF;" Visible="False" OnClick="But_Save_Click" />
                    </strong></td>
                <td class="auto-style41">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style41">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style31">&nbsp;            </td>
                <td class="auto-style41">
                    &nbsp;</td>
            </tr>
            <span class="auto-style42"></span>
                     </strong>
                     <span class="auto-style42">
        </table>
        </span>

    </div>

</asp:Content>
