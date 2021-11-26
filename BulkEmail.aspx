<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BulkEmail.aspx.cs" Inherits="BulkEmail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bulk Email</title>
    <style type="text/css">
        .auto-style1 {
            width: 60%;
            height: 196px;
            background-color: #CCFFFF;
        }
        .auto-style2 {
            width: 231px;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style3">
    
        <br />
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Send Bulk Emails To Selected Customer/Leads"></asp:Label>
    
    </div>
        <p>
            &nbsp;</p>
        <table border="1" class="auto-style1">
            <tr>
                <td class="auto-style2">Email Subject</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="342px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Message</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="82px" TextMode="MultiLine" Width="339px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p>
            Select Your Target&#39;s :</p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
                <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Dob" HeaderText="Dob" SortExpression="Dob" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Conpass" HeaderText="Conpass" SortExpression="Conpass" />
                <asp:BoundField DataField="Addline1" HeaderText="Addline1" SortExpression="Addline1" />
                <asp:BoundField DataField="Addline2" HeaderText="Addline2" SortExpression="Addline2" />
                <asp:BoundField DataField="Zipcode" HeaderText="Zipcode" SortExpression="Zipcode" />
                <asp:BoundField DataField="Place" HeaderText="Place" SortExpression="Place" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="Code" HeaderText="Code" SortExpression="Code" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Datetime" HeaderText="Datetime" SortExpression="Datetime" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <br />
        <asp:Button ID="Button1" runat="server" BackColor="#CCFFFF" Height="44px" OnClick="Button1_Click" Text="Send Email" Width="126px" />
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Client LMSConnectionString %>" SelectCommand="SELECT * FROM [Contable]"></asp:SqlDataSource>
    </form>
</body>
</html>
