<%@ Page Title="" Language="C#" MasterPageFile="~/Login_Club.Master" AutoEventWireup="true" CodeBehind="LoginApp.aspx.cs" Inherits="Dima__Wataeen__Club.LoginApp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            width: 561px;
        }
        .auto-style20 {
            width: 561px;
            height: 22px;
        }
        .auto-style22 {
            vertical-align: top;
            width: 713px;
            height: 22px;
            margin-top: 0px;
   
        text-align: right;
    }
        .auto-style23 {
            width: 1431px;
            background-color: #BDB09F;
        }
        .auto-style26 {
            width: 561px;
            height: 58px;
        }
        .auto-style27 {
            text-align: center;
            width: 565px;
        }
        .auto-style28 {
            vertical-align: top;
            width: 565px;
            height: 22px;
            margin-top: 0px;

        }
        .auto-style30 {
            vertical-align: top;
            width: 565px;
            height: 58px;
            margin-top: 0px;

        }
        .auto-style32 {
            vertical-align: top;
            width: 561px;
            margin-top: 0px;

        }
    .auto-style36 {
        color: #0000FF;

    }
    .auto-style37 {
        color: #FFFFFF;
            background-color: #0000FF;
        }
    .auto-style38 {
        vertical-align: top;
        width: 861px;
        margin-top: 0px;

        }
    .auto-style39 {
        width: 861px;
        height: 22px;
    }
    .auto-style40 {
        width: 861px;
    }
    .auto-style41 {
        width: 861px;
        height: 58px;
    }
    .auto-style42 {
        vertical-align: top;
        width: 565px;
        margin-top: 0px;

    }
    .auto-style43 {
        width: 565px;
    }
    .auto-style44 {
        vertical-align: top;
        width: 615px;
        margin-top: 0px;

        }
    .auto-style45 {
        width: 615px;
        height: 22px;
    }
    .auto-style46 {
        width: 615px;
    }
    .auto-style47 {
        width: 615px;
        height: 58px;
    }
    .auto-style50 {
        vertical-align: top;
        width: 713px;
        margin-top: 0px;

    }
    .auto-style51 {
        vertical-align: top;
        width: 713px;
        height: 58px;
        margin-top: 0px;

    }
    .auto-style53 {
        font-size: xx-large;
    }
    .auto-style54 {
        width: 713px;
        text-align: right;
    }
    .auto-style55 {
        vertical-align: top;
        width: 713px;
        margin-top: 0px;
        text-align: right;
    }
    .auto-style56 {
        vertical-align: top;
        height: 27px;
        width: 73px;
        margin-top: 0px;

    }
    .auto-style57 {
        text-align: left;
        margin-top: 0px;
        width: 586px;
        font-size: x-large;
    }
        .auto-style58 {
            font-family: Impact, Haettenschweiler, "Arial Narrow Bold", sans-serif;
            font-size: xx-large;
        }
        .auto-style59 {
            margin-left: 0px;
            color: #009933;
            font-size: larger;
        }
        .auto-style60 {
            vertical-align: top;
            width: 565px;
            margin-top: 0px;
            height: 42px;
        }
        .auto-style61 {
            vertical-align: top;
            width: 713px;
            margin-top: 0px;
            height: 42px;
            text-align: left;
        }
        .auto-style62 {
            height: 42px;
        }
        .auto-style64 {
            width: 561px;
            height: 42px;
        }
        .auto-style65 {
            margin-left: 0px;
            color: #FF3300;
            font-size: large;
        }
        .auto-style66 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style23">
        <tr>
            <td class="auto-style27"></td>
            <td class="auto-style54"><strong>
                <asp:Label ID="lblUName" runat="server" Font-Bold="True" Font-Names="Lateef" Font-Size="X-Large" Style="text-align: left; padding: 10px;" Text="Enter the user name" Width="84%" Height="45px" ToolTip="Enter the user name" CssClass="auto-style58"></asp:Label>
            </td>
            <td class="auto-style38">
                <strong>
                <asp:TextBox ID="txtUname" runat="server" class="form-control" Font-Names="Lateef" Font-Size="X-Large" Height="42px" Style="padding: 5px; text-align: right;" Width="98%" ToolTip="Enter the user name " CssClass="auto-style53"></asp:TextBox>
                </strong>
            </td>
            <td class="auto-style44"></td>
            <td class="auto-style32"></td>
        </tr>
        <tr>
            <td class="auto-style28"></td>
            <td class="auto-style22">
                <strong>
                <asp:Label ID="lblPass" runat="server" Font-Bold="True" Font-Names="Lateef" Font-Size="X-Large" Style="text-align: left; padding: 10px;" Text="Enter the password" Width="84%" Height="45px" ToolTip="Enter the password" CssClass="auto-style58"></asp:Label>
            </td>
            <td class="auto-style39">
                <p class="auto-style66">
                <asp:TextBox ID="txtPass" runat="server" class="form-control" Font-Names="Lateef" Font-Size="X-Large" Height="33px" MaxLength="15" Style="padding: 5px;" TextMode="Password" Width="99%"></asp:TextBox>
                </p>
            </td>
            <td class="auto-style45"><strong>
                    <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="3000" OnTick="Timer1_Tick1">
                    </asp:Timer>
                    </strong></td>
            <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style42">&nbsp;</td>
            <td class="auto-style50"><strong>
                    <asp:Timer ID="Timer2" runat="server" Enabled="False" Interval="3000" OnTick="Timer2_Tick">
                    </asp:Timer>
                    </strong></td>
            <td class="auto-style66" colspan="2">
                <p class="auto-style66">
                    <asp:Label ID="Mss_Login" runat="server" Font-Bold="True" Font-Names="Lateef" Font-Size="XX-Large" style="text-align: center" Width="98%" CssClass="auto-style59"></asp:Label>
                </p>
            </td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style51"><strong>
                    <asp:Timer ID="Timer4" runat="server" Enabled="False" Interval="3000" OnTick="Timer4_Tick">
                    </asp:Timer>
                    </strong></td>
            <td class="auto-style41">
                <asp:Button ID="butEnter" runat="server" Class="badge-pill badge-primary btn-primary" Font-Bold="True" Font-Names="Lateef" Font-Size="X-Large" Height="54px" OnClick="butEnter_Click" Text="Login" Width="99%" CssClass="auto-style37" />
            </td>
            <td class="auto-style47"><strong>
                    <asp:Timer ID="Timer3" runat="server" Enabled="False" Interval="3000" OnTick="Timer3_Tick">
                    </asp:Timer>
                    </strong></td>
            <td class="auto-style26">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style60"></td>
            <td class="auto-style61">&nbsp;</td>
            <td class="auto-style62" colspan="2">
                <p class="auto-style66">
                <asp:Label ID="Mss_Login0" runat="server" Font-Bold="True" Font-Names="Lateef" Font-Size="XX-Large" style="text-align: center" Width="95%" CssClass="auto-style65"></asp:Label>
                </p>
            </td>
            <td class="auto-style64"></td>
        </tr>
        <tr>
            <td class="auto-style43">&nbsp;</td>
            <td class="auto-style54">
                <asp:Label ID="lblPassFirst" runat="server" Font-Bold="True" Font-Names="Lateef" Font-Size="X-Large" Height="28px" Style="text-align: left; padding: 10px;" Text="New Password" Visible="False" Width="85%" CssClass="auto-style58"></asp:Label>
            </td>
            <td class="auto-style40">
                <p class="auto-style66">
                <asp:TextBox ID="txtPassFirst" runat="server" class="form-control" Font-Names="Lateef" Font-Size="X-Large" Height="30px" MaxLength="15" Style="padding: 5px;" TextMode="Password" Visible="False" Width="98%"></asp:TextBox>
                </p>
            </td>
            <td class="auto-style46">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style42">&nbsp;</td>
            <td class="auto-style55">
                <asp:Label ID="lblPassSecond" runat="server" Font-Bold="True" Font-Names="Lateef" Font-Size="X-Large" Height="33px" Style="text-align: left; padding: 10px;" Text="Password matching" Visible="False" Width="90%" CssClass="auto-style58"></asp:Label>
            </td>
            <td class="auto-style40">
                <p class="auto-style66">
                <asp:TextBox ID="txtPassSecond" runat="server" class="form-control" Font-Names="Lateef" Font-Size="X-Large" Height="30px" MaxLength="15" Style="padding: 5px;" TextMode="Password" Visible="False" Width="98%"></asp:TextBox>
                </p>
            </td>
            <td class="auto-style46">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style42">&nbsp;</td>
            <td class="auto-style50">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td class="auto-style40">
                <asp:Button ID="butUpdatePass" runat="server" Class="badge-pill badge-primary btn-primary" Font-Bold="True" Font-Names="Lateef" Font-Size="X-Large" Height="50px" Text="Change Password" Visible="False" Width="96%" CssClass="auto-style36" OnClick="butUpdatePass_Click" />
                </strong></td>
            <td class="auto-style46">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style42">&nbsp;</td>
            <td class="auto-style50">
                &nbsp;</td>
            <td colspan="2">
            <p class="auto-style57"><strong>Forgot your password or username ? </strong> <a href="https://wa.me/99446197"><img src="img\whatsapp-.png" alt="WhatsApp" style="vertical-align: middle;" class="auto-style56"/></a>
            </p>
            </td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style42">&nbsp;</td>
            <td class="auto-style50">
                &nbsp;</td>
            <td class="auto-style40">
                &nbsp;</td>
            <td class="auto-style46">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
