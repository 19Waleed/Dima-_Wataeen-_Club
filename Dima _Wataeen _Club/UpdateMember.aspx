<%@ Page Title="" Language="C#" MasterPageFile="~/Site_Club.Master" AutoEventWireup="true" CodeBehind="UpdateMember.aspx.cs" Inherits="Dima__Wataeen__Club.UpdateMember" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            background-color: #BDB09F;
        }
        .auto-style20 {
            font-size: xx-small;
            color: #FFFFFF;
            background-color: #FF3300;
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
    <div class="auto-style78">
        <table class="auto-style58">
            <tr>
                <td class="auto-style19" colspan="6">
                    &nbsp;</td>
            </tr>
            <span class="auto-style42">
                </span>
                     </strong>
                     </strong>
                     <span class="auto-style42">
            <tr>
                <td class="auto-style200">
                    <strong>
                <asp:Label ID="Label17" runat="server" CssClass="auto-style35" Text="Search" style="background-color: #BDB09F"></asp:Label>
                </strong>
                </td>
                <td class="auto-style208" colspan="4">
                    <strong>
                <asp:TextBox ID="TextBoxSearch" runat="server" AutoPostBack="True" CssClass="auto-style60" Height="41px" OnTextChanged="TextBoxSearch_TextChanged" TabIndex="20" ToolTip="Search" Width="225px" style="font-family: 'Segoe UI Variable Text'; font-weight: bold; color: #FFFFFF; background-color: #0000FF; font-size: large;"></asp:TextBox>
                </strong>
                </td>
                <td class="auto-style19">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style208" colspan="4">
                    <strong>
                     <span class="auto-style42">
                <asp:GridView ID="GridViewSelect_Return" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" Caption="It has been returned, please see note" CellPadding="3" CssClass="mydatagrid" Font-Bold="True" Font-Italic="True" Font-Names="Lateef" Font-Size="X-Large" GridLines="Vertical" HeaderStyle-CssClass="header" Height="33px" PagerStyle-CssClass="pager" RowStyle-CssClass="rows" Style="text-align: center; font-size: small; margin-top: 0; font-family: 'Segoe UI Variable Text'; margin-right: 0px; background-color: #BDB09F;" Width="8%" Visible="False" OnSelectedIndexChanged="GridViewSelect_Return_SelectedIndexChanged1">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
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
                        <asp:BoundField DataField="Note" HeaderText="Note" />
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
                <td class="auto-style19">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style200">
                    <asp:Label ID="LabelReturnnote" runat="server" CssClass="auto-style205" Text="Return note" Visible="False" style="background-color: #BDB09F; font-weight: bold; font-size: medium;"></asp:Label>
                </td>
                <td class="auto-style26">
                    <asp:Label ID="LabelNote" runat="server" CssClass="auto-style204" Visible="False" style="background-color: #BDB09F"></asp:Label>
                    </td>
                <td class="auto-style160">
                    &nbsp;</td>
                <td class="auto-style207">
                    <asp:Label ID="LabelID" runat="server" CssClass="auto-style204" style="background-color: #BDB09F; font-weight: bold; font-size: medium;"></asp:Label>
                    </td>
                <td class="auto-style206">
                    <asp:Label ID="LabelMember_ID" runat="server" CssClass="auto-style28" style="background-color: #BDB09F; font-weight: bold; font-size: medium;"></asp:Label>
                    </td>
                <td class="auto-style206">
                    <asp:Label ID="Mss_Save_Card_ID_ON" runat="server" CssClass="auto-style49" style="color: #FF0000; background-color: #BDB09F;"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style200">
                    <asp:Label ID="Label_Name" runat="server" Text="Full Name" CssClass="auto-style61" style="background-color: #BDB09F; font-weight: bold; font-size: medium;"></asp:Label>
                    </td>
                <td class="auto-style26">
                    <strong>
                    <asp:TextBox ID="TextBoxFull_Name" runat="server" CssClass="auto-style46" Height="34px" Width="267px" style="font-weight: bold; background-color: #0000FF; color: #FFFFFF; font-size: large;"></asp:TextBox>
                    </strong>
                    </td>
                <td class="auto-style160">
                    <asp:Label ID="Mss_Full_Name" runat="server" CssClass="auto-style49" style="color: #FF0000; background-color: #BDB09F;" ClientIDMode="AutoID"></asp:Label>
                    </td>
                <td class="auto-style207">
                    <asp:Label ID="Label11" runat="server" Text="Card ID ON" CssClass="auto-style43" style="background-color: #BDB09F; font-weight: bold; font-size: medium;"></asp:Label>
                    </td>
                <td class="auto-style162">
                    <strong>
                    <asp:TextBox ID="TextBoxCard_ID_ON" runat="server" CssClass="auto-style203" Height="38px" Width="261px" style="font-weight: bold; background-color: #0000FF; color: #FFFFFF; font-size: large;"></asp:TextBox>
                    </strong>
                    </td>
                <td class="auto-style164">
                    <asp:Label ID="Mss_Save_Address" runat="server" CssClass="auto-style49" style="color: #FF0000; background-color: #BDB09F;"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="auto-style200"><b>
                    <asp:Label ID="Label8" runat="server" Text="Phone" CssClass="auto-style61" style="background-color: #BDB09F; font-size: medium;"></asp:Label>
                    </b></td>
                <td class="auto-style26">
                    <strong>
                    <asp:TextBox ID="TextBoxPhone" runat="server" CssClass="auto-style46" Height="35px" Width="266px" style="font-weight: bold; background-color: #0000FF; color: #FFFFFF; font-size: large;"></asp:TextBox>
                    </strong>
                    </td>
                <td class="auto-style160">
                    <asp:Label ID="Mss_Save_Phone" runat="server" CssClass="auto-style49" style="color: #FF3300; background-color: #BDB09F;"></asp:Label>
                </td>
                <td class="auto-style207">
                    <asp:Label ID="Label4" runat="server" Text="Address" CssClass="auto-style61" style="background-color: #BDB09F; font-weight: bold; font-size: medium;"></asp:Label>
                    </td>
                <td class="auto-style162">
                    <strong>
                    <asp:TextBox ID="TextBoxAddress" runat="server" CssClass="auto-style46" Height="40px" Width="264px" style="font-weight: bold; background-color: #0000FF; color: #FFFFFF; font-size: large;"></asp:TextBox>
                    </strong>
                    </td>
                <td class="auto-style164">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style200">
                    <asp:Label ID="Label6" runat="server" Text="Select Married Not married" CssClass="auto-style43" style="background-color: #BDB09F; font-weight: bold; font-size: medium;"></asp:Label>
                    </td>
                <td class="auto-style26">
                    <strong>
                    <asp:DropDownList ID="DropDownMarital_Status" runat="server" Height="50px" Width="275px" CssClass="auto-style46" style="background-color: #0000FF; color: #FFFFFF; font-size: large;">
                        <asp:ListItem Selected="True" Value="0">Select Married</asp:ListItem>
                        <asp:ListItem Value="Single">Single</asp:ListItem>
                        <asp:ListItem Value="Married">Married</asp:ListItem>
                    </asp:DropDownList>
                    </strong>
                    </td>
                <td class="auto-style160">
                    <asp:Label ID="Mss_Save_Marital_Status" runat="server" CssClass="auto-style49" style="color: #FF0000; background-color: #BDB09F;"></asp:Label>
                    </td>
                <td class="auto-style207">
                    <asp:Label ID="Label16" runat="server" Text="Job/Subscription" CssClass="auto-style61" style="background-color: #BDB09F; font-weight: bold; font-size: medium;"></asp:Label>
                    </td>
                <td class="auto-style162">
                     <strong>
                    <asp:DropDownList ID="DropDownIsubscription" runat="server" CssClass="auto-style46" Height="36px" Width="272px" AutoPostBack="True" OnSelectedIndexChanged="DropDownIsubscription_SelectedIndexChanged" style="background-color: #0000FF; color: #FFFFFF; font-size: large;">
                    </asp:DropDownList>
                     </strong>
                    </td>
                <td class="auto-style164">
                    <asp:Label ID="Mss_Save_subscription" runat="server" CssClass="auto-style49" style="color: #FF0000; background-color: #BDB09F;"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <asp:Label ID="Label7" runat="server" Text="Date Birth" CssClass="auto-style43" style="background-color: #BDB09F; font-weight: bold; font-size: medium;"></asp:Label>
                </td>
                <td class="auto-style26">
                        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style43" OnClick="LinkButton2_Click" style="color: #0000FF; background-color: #BDB09F;">Select the day from the calendar</asp:LinkButton>

                </td>
                <td class="auto-style160">
                    <strong>


                    <asp:Label ID="LabelDateBirth" runat="server" CssClass="auto-style48" style="background-color: #BDB09F; color: #FFFFFF; font-size: large;"></asp:Label>
                    </strong> 
                    </td>
                <td class="auto-style207">
                    <asp:Label ID="LabelIDSubscription" runat="server" Text="Monthly subscription value:" CssClass="auto-style61" style="background-color: #BDB09F; font-weight: bold; font-size: medium;"></asp:Label>
                    </td>
                <td class="auto-style162">
                    <asp:Label ID="LabelSubscription" runat="server" CssClass="auto-style55" style="background-color: #BDB09F; font-weight: bold; font-size: medium;"></asp:Label>
                    </td>
                <td class="auto-style164">
                    <strong>


                    <asp:Label ID="Mss_JoiningDate" runat="server" CssClass="auto-style49" style="color: #FF0000; background-color: #BDB09F;"></asp:Label>
                    </strong>
                    </td>
            </tr>
            <tr>
                <td class="auto-style200">
                    &nbsp;</td>
                <td class="auto-style26">
                    <asp:Label ID="Mss_Save_DateBirth" runat="server" CssClass="auto-style49" style="color: #FF0000; background-color: #BDB09F;"></asp:Label>
                    </td>
                <td class="auto-style160">
                    <strong>
                     <span class="auto-style42">
                    <asp:Calendar ID="CalendarDateBirth" runat="server" BackColor="White" BorderColor="Black" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="16px" Width="16px" OnSelectionChanged="CalendarDateBirth_SelectionChanged" BorderStyle="Solid" CellSpacing="1" NextPrevFormat="ShortMonth" Visible="False">
                        <DayHeaderStyle Font-Bold="True" Height="8pt" Font-Size="8pt" ForeColor="#333333" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="White" Font-Bold="True" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" Font-Bold="True" Font-Size="12pt" ForeColor="White" BorderStyle="Solid" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar>
                    </span>
                </td>
                <td class="auto-style207">
                    <asp:Label ID="Label12" runat="server" Text="Joining Date" CssClass="auto-style43" style="background-color: #BDB09F; font-weight: bold; font-size: medium;"></asp:Label>
                    </td>
                <td class="auto-style162">
                     <strong>
                    <asp:Label ID="LabelJoiningDate" runat="server" CssClass="auto-style49" style="background-color: #BDB09F; color: #FFFFFF; font-size: large;"></asp:Label>
                     <span class="auto-style40">
                        <asp:LinkButton ID="LinkButton" runat="server" CssClass="auto-style43" OnClick="LinkButton_Click" style="color: #0000FF; background-color: #BDB09F;">Select the day from the calendar</asp:LinkButton>

                    </span></strong>
                    </td>
                <td class="auto-style164">
                    <strong>


                    <asp:Timer ID="Timer2" runat="server" Enabled="False" Interval="3000" OnTick="Timer1_Tick2">
                    </asp:Timer>
                    <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="3000" OnTick="Timer1_Tick1">
                    </asp:Timer>


        <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
                    </strong>
                    </td>
            </tr>
            <tr>
                <td class="auto-style19">
                        &nbsp;</td>
                <td class="auto-style26">
                    <strong>
                    <asp:Label ID="lblMessage" runat="server" CssClass="auto-style22" style="background-color: #BDB09F"></asp:Label>
                    <span class="auto-style40">
                    <asp:Label ID="Label14" runat="server" CssClass="auto-style50" style="background-color: #BDB09F"></asp:Label>
                    </span>
                    </strong>
                     <span class="auto-style42">
                    <strong><asp:FileUpload ID="FileUpload1" runat="server" Visible="False" AllowMultiple="True" BorderStyle="None" onchange="previewImage();" CssClass="auto-style23" style="background-color: #0000FF" Height="33px" />
                    </strong>
        </span>
                </td>
                <td class="auto-style160">
                     <span class="auto-style42">
                    <strong>
                    <span class="auto-style40">
<asp:Image ID="Image1" runat="server" Visible="false" Height="117px" Width="222px" CssClass="auto-style53" style="background-color: #BDB09F" />
                     <br />
                    </span>
                     <asp:Label ID="Label18" runat="server" CssClass="auto-style20" Text="Label"></asp:Label>
                    </strong>
        </span>
                </td>
                <td class="auto-style207">
                    <strong>
                    <asp:Label ID="Mss_Save_" runat="server" CssClass="auto-style144" style="color: #009933; background-color: #BDB09F; font-size: x-large;"></asp:Label>
                    </strong></td>
                <td class="auto-style162">
                    <strong><span class="auto-style40">
                    <asp:Calendar ID="CalendarJoiningDate" runat="server" BackColor="White" BorderColor="Black" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="21px" Width="92px" OnSelectionChanged="CalendarJoiningDate_SelectionChanged" BorderStyle="Solid" CellSpacing="1" NextPrevFormat="ShortMonth" Visible="False">
                        <DayHeaderStyle Font-Bold="True" Height="8pt" Font-Size="8pt" ForeColor="#333333" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="White" Font-Bold="True" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" Font-Bold="True" Font-Size="12pt" ForeColor="White" BorderStyle="Solid" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar>

                    </span></strong>
                    </td>
                <td class="auto-style19">
                     &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">
                        &nbsp;</td>
                <td class="auto-style26">
                     <span class="auto-style42">
                <strong><asp:Label ID="LabelUser_Name" runat="server" CssClass="auto-style9" style="color: #FFFFFF; font-size: large; background-color: #BDB09F;" Visible="False"></asp:Label>
                                </strong>
        </span>
                </td>
                <td class="auto-style160" colspan="2">
                    <asp:Button ID="But_UPDATE" runat="server" Height="61px" OnClick="But_UPDATE_Click" Text="Update" Width="435px" CssClass="auto-style47" Visible="False" style="background-color: #009933" />
                </td>
                <td class="auto-style162">
                     <span class="auto-style42">
                <strong>
                                <asp:Label ID="LabelTeam_ID" runat="server" CssClass="auto-style9" style="color: #FFFFFF; font-size: large; background-color: #BDB09F;" Visible="False"></asp:Label>
                                </strong>
        </span>
                    </td>
                <td class="auto-style19">
                     &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style19">
                    &nbsp;</td>
                <td class="auto-style19">
                     &nbsp;</td>
                <td class="auto-style19">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style19">
                    &nbsp;</td>
                <td class="auto-style162">
                    &nbsp;</td>
                <td class="auto-style19">
                    &nbsp;</td>
            </tr>
            </table>
        </span>
    </div>
</asp:Content>
