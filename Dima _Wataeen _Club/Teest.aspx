<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teest.aspx.cs" Inherits="Dima__Wataeen__Club.Teest" %>

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
        <div>
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtUname" runat="server" class="form-control" Font-Names="Lateef" Font-Size="X-Large" Height="30px" Style="padding: 5px; text-align: right;" Width="50%"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblUName" runat="server" Font-Bold="True" Font-Names="Lateef" Font-Size="X-Large" Style="text-align: left; padding: 10px;" Text="اسـم المستخدم" Width="30%"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblMSG" runat="server" Font-Bold="True" Font-Names="Lateef" Font-Size="Large" style="text-align: center" Width="50%"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="butEnter" runat="server" Class="badge-pill badge-primary btn-primary" Font-Bold="True" Font-Names="Lateef" Font-Size="X-Large" Height="42px" Text="دخول" Width="50%" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtPassFirst" runat="server" class="form-control" Font-Names="Lateef" Font-Size="X-Large" Height="30px" MaxLength="15" Style="padding: 5px;" TextMode="Password" Visible="False" Width="50%"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblPassFirst" runat="server" Font-Bold="True" Font-Names="Lateef" Font-Size="X-Large" Style="text-align: left; padding: 10px;" Text="كلمة المــرور الجديدة" Visible="False" Width="41%"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtPassSecond" runat="server" class="form-control" Font-Names="Lateef" Font-Size="X-Large" Height="30px" MaxLength="15" Style="padding: 5px;" TextMode="Password" Visible="False" Width="50%"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblPassSecond" runat="server" Font-Bold="True" Font-Names="Lateef" Font-Size="X-Large" Style="text-align: left; padding: 10px;" Text="إعادة كلمة المــرور الجديدة" Visible="False" Width="50%"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="butUpdatePass" runat="server" Class="badge-pill badge-primary btn-primary" Font-Bold="True" Font-Names="Lateef" Font-Size="X-Large" Height="42px" Text="تغير كلمة المرور" Visible="False" Width="50%" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
