<%@ Page Title="" Language="C#" MasterPageFile="~/contact data.master" AutoEventWireup="true" CodeFile="contactdetail.aspx.cs" Inherits="contactdetail" EnableEventValidation = "false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="w3l-table-info agile_info_shadow">
									  <h3 style="margin-top:130px;" class="w3_inner_tittle two">Contact Details</h3>

        <asp:Button ID="Button1" runat="server" Style="background-color: #f4511e;
  border: none;
  color: white;
  padding: 10px 32px;
  border-radius: 12px;
  text-align: center;
  font-size: 16px;                              
  margin: 4px 2px;
  opacity: 0.6;
  float:right;
  margin-bottom:10px;
  transition: 0.3s;
  display: inline-block;
  text-decoration: none;
  cursor: pointer;" Text="Export data" OnClick="Button1_Click" />
									
				<asp:ValidationSummary ValidationGroup="INSERT" ID="ValidationSummary1" ForeColor="Red"  runat="server" />
            <asp:ValidationSummary ID="ValidationSummary2" ForeColor="Red"  runat="server" />	

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" ShowFooter="True" >
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:LinkButton ID="lbInsert" ValidationGroup="INSERT" CommandName="Insert" OnClick="lbInsert_Click" runat="server">Insert</asp:LinkButton>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User Name" SortExpression="username">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("username") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvEditName" runat="server"
                                ErrorMessage="Name is a required field"
                                ControlToValidate="TextBox1" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("username") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertName" runat="server"
                                ErrorMessage="User Name is a required field"
                                ControlToValidate="txtName" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator> 
                        </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditEmail" runat="server"
                                ErrorMessage="User Name is a required field"
                                ControlToValidate="TextBox2" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertEmail" runat="server"
                                ErrorMessage="Email is a required field"
                                ControlToValidate="txtEmail" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator> 
                        </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Phone" SortExpression="phone">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("phone") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditPhone" runat="server"
                                ErrorMessage="Phone is a required field"
                                ControlToValidate="TextBox3" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                            <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertPhone" runat="server"
                                ErrorMessage="Email is a required field"
                                ControlToValidate="txtPhone" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator> 
                        </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Message" SortExpression="message">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("message") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditMessage" runat="server"
                                ErrorMessage="Message is a required field"
                                ControlToValidate="TextBox4" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("message") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                            <asp:TextBox ID="txtMessage" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertMessage" runat="server"
                                ErrorMessage="Message is a required field"
                                ControlToValidate="txtMessage" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator> 
                        </FooterTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="datetime" HeaderText="Date , Time" SortExpression="datetime" />
       
        </Columns>
    </asp:GridView>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Client LMSConnectionString %>" DeleteCommand="DELETE FROM [contactdetails] WHERE [ID] = @ID" InsertCommand="INSERT INTO [contactdetails] ([username], [email], [phone], [message], [datetime]) VALUES (@username, @email, @phone, @message, @datetime)" SelectCommand="SELECT * FROM [contactdetails]" UpdateCommand="UPDATE [contactdetails] SET [username] = @username, [email] = @email, [phone] = @phone, [message] = @message, [datetime] = @datetime WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="message" Type="String" />
            <asp:Parameter Name="datetime" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="message" Type="String" />
            <asp:Parameter Name="datetime" Type="DateTime" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
        
    </asp:SqlDataSource>
    	</div>

</asp:Content>

