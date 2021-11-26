<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 55%;
            height: 153px;
            background-color: #FFFF66;
        }
        .auto-style2 {
            width: 141px;
        }
        .auto-style3 {
            width: 224px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Change Your Password"></asp:Label>
    
    </div>
        <p>
            &nbsp;</p>
        <p>
            Hello
            <asp:Label ID="Label2" runat="server" ForeColor="#FF3300"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <table border="1" class="auto-style1">
            <tr>
                <td class="auto-style2">Old Password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" Height="31px" TextMode="Password" Width="248px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">New Password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" Height="31px" TextMode="Password" Width="248px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Conform Password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox3" runat="server" Height="31px" TextMode="Password" Width="248px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Change " />
                    <br />
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
