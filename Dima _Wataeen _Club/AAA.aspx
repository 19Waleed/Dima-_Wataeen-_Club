
<%@ Page Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeBehind="AAA.aspx.cs" Inherits="Dima__Wataeen__Club.AAA" %>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 15%;
            height: 29px;
        }
        .auto-style2 {
            height: 29px;
        }
        .auto-style3 {
            width: 26%;
        }
        .auto-style4 {
            height: 29px;
            width: 26%;
        }
        .auto-style5 {
            width: 35%;
        }
        .auto-style6 {
            height: 29px;
            width: 35%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="Label">
                <table style="width: 100%;">
                    <tr>
                        <td class="auto-style5"></td>
                        <td class="auto-style3"></td>
                        <td style="width: 35%"></td>
                        <td style="width: 15%"></td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:Label ID="Label1" runat="server" Style="font-size: x-large; font-family: Lateef; font-weight: 700; text-align: center;"
                                Text="تسجيل الدخول " BackColor="#DF4430" Width="100%" ForeColor="White" Font-Bold="True" CssClass="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5"></td>
                        <td colspan="2">&nbsp;</td>
                        <td style="width: 15%"></td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;</td>
                        <td style="text-align: left" class="auto-style3">&nbsp;</td>
                        <td style="text-align: right">&nbsp;</td>
                        <td style="width: 15%">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
                            <asp:TextBox ID="txtUname" runat="server" class="form-control" Height="30px" Width="50%" Font-Names="Lateef" Font-Size="X-Large"
                                Style="padding: 5px; text-align: right;"></asp:TextBox>
                        </td>
                        <td style="text-align: left" class="auto-style3">
                            <asp:Label ID="lblUName" runat="server" Width="96%" Text="اسـم المستخدم" Font-Bold="True" Font-Names="Lateef" Font-Size="X-Large"
                                Style="text-align: left; padding: 10px;"></asp:Label>
                        </td>
                        <td style="text-align: right">
                            &nbsp;</td>
                        <td style="width: 15%"></td>
                    </tr>
                    <asp:Panel runat="server" ID="PanelPass" Width="100%">
                        <tr>
                            <td style="width: 15%">&nbsp;</td>
                            <td style="text-align: left">
                                <asp:Label ID="lblPass" runat="server" Width="30%" Text="كلمة المــرور" Font-Bold="True" Font-Names="Lateef" Font-Size="X-Large"
                                    Style="text-align: left; padding: 10px;"></asp:Label>
                            </td>
                            <td style="text-align: right">
                                <asp:TextBox ID="txtPass" runat="server" class="form-control" Height="30px" Width="50%" Font-Names="Lateef" Font-Size="X-Large"
                                    TextMode="Password" MaxLength="15" Style="padding: 5px;"></asp:TextBox>
                                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="الحد الاقصى لكلمة المرور اقل من 15 حروف"
                                    ControlToValidate="txtPass" ValidationExpression="^[a-zA-Z0-9-\s]{3,15}$" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>--%>
                            </td>
                            <td style="width: 15%"></td>
                        </tr>
                    </asp:Panel>
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="lblMSG" runat="server" Font-Bold="True" Font-Names="Lateef" Font-Size="Large" style="text-align: center" Width="50%"></asp:Label>
                        </td>
                        <td style="text-align: left" class="auto-style4">&nbsp;</td>
                        <td style="text-align: right" class="auto-style2">
                            &nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Button ID="butEnter" runat="server" Width="50%" Text="دخول" Font-Bold="True" Font-Size="X-Large" Font-Names="Lateef" Height="42px"
                                class="badge-pill badge-primary btn-primary" />
                        </td>
                        <td style="text-align: left" class="auto-style3">&nbsp;</td>
                        <td style="text-align: right">
                            &nbsp;</td>
                        <td style="width: 15%">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtPassFirst" runat="server" class="form-control" Height="30px" Width="50%" Font-Names="Lateef" Font-Size="X-Large"
                                TextMode="Password" MaxLength="15" Style="padding: 5px;" Visible="False"></asp:TextBox>
                        </td>
                        <td style="text-align: left" class="auto-style3">
                            <asp:Label ID="lblPassFirst" runat="server" Width="95%" Text="كلمة المــرور الجديدة" Font-Bold="True" Font-Names="Lateef" Font-Size="X-Large"
                                Style="text-align: left; padding: 10px;" Visible="False"></asp:Label>
                        </td>
                        <td style="text-align: right">
                            &nbsp;</td>
                        <td style="width: 15%">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtPassSecond" runat="server" class="form-control" MaxLength="15" Height="30px" Width="50%" Font-Names="Lateef"
                                Font-Size="X-Large" TextMode="Password" Style="padding: 5px;" Visible="False"></asp:TextBox>
                        </td>
                        <td class="auto-style3">
                            <asp:Label ID="lblPassSecond" runat="server" Width="94%" Text="إعادة كلمة المــرور الجديدة" Font-Bold="True" Font-Names="Lateef" Font-Size="X-Large"
                                Style="text-align: left; padding: 10px;" Visible="False"></asp:Label>
                        </td>
                        <td style="text-align: right">
                            &nbsp;</td>
                        <td style="width: 15%">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Button ID="butUpdatePass" runat="server" Width="50%" Text="تغير كلمة المرور" Font-Bold="True" Font-Size="X-Large" Font-Names="Lateef"
                                Height="42px" Visible="False" class="badge-pill badge-primary btn-primary" />
                        </td>
                        <td style="text-align: left" class="auto-style3">&nbsp;</td>
                        <td style="text-align: right">
                            &nbsp;</td>
                        <td style="width: 15%">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;</td>
                        <td style="text-align: left" class="auto-style3">&nbsp;</td>
                        <td style="text-align: right">
                            &nbsp;</td>
                        <td style="width: 15%">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;</td>
                        <td style="text-align: left" class="auto-style3">&nbsp;</td>
                        <td style="text-align: right">
                            &nbsp;</td>
                        <td style="width: 15%">&nbsp;</td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
    </asp:Content>