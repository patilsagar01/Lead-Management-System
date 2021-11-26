<%@ Page Title="" Language="C#" MasterPageFile="~/table.master" AutoEventWireup="true" CodeFile="table.aspx.cs" Inherits="tabel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="w3l-table-info agile_info_shadow">
									  <h3 style="margin-top:130px;" class="w3_inner_tittle two">Registration Details</h3>
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

    <asp:gridview ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" ShowFooter="True">
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
            <asp:TemplateField HeaderText="Firstname" SortExpression="Firstname">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Firstname") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditName" runat="server"
                                ErrorMessage="First Name is a required field"
                                ControlToValidate="TextBox1" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Firstname") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertName" runat="server"
                                ErrorMessage="First Name is a required field"
                                ControlToValidate="txtName" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator> 
                        </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Lastname" SortExpression="Lastname">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Lastname") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvEditLname" runat="server"
                                ErrorMessage="Last Name is a required field"
                                ControlToValidate="TextBox2" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Lastname") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                            <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertLastname" runat="server"
                                ErrorMessage="Last Name is a required field"
                                ControlToValidate="txtLname" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator> 
                        </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Username" SortExpression="Username">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Username") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditUsername" runat="server"
                                ErrorMessage="User Name is a required field"
                                ControlToValidate="TextBox3" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Username") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertUsername" runat="server"
                                ErrorMessage="User Name is a required field"
                                ControlToValidate="txtUsername" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator> 
                        </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditEmail" runat="server"
                                ErrorMessage="Email is a required field"
                                ControlToValidate="TextBox4" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertEmail" runat="server"
                                ErrorMessage="Email is a required field"
                                ControlToValidate="txtEmail" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator> 
                        </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                <EditItemTemplate>
                     <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("Gender") %>'>
                                <asp:ListItem>Select Gender</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                           <asp:RequiredFieldValidator ID="rfvEditGender" runat="server"
                                ErrorMessage="Gender is a required field"
                                ControlToValidate="DropDownList1" Text="*" ForeColor="Red" InitialValue="Select Gender">
                            </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                            <asp:DropDownList ID="ddlGender" runat="server">
                                <asp:ListItem>Select Gender</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertGender" runat="server"
                                ErrorMessage="Gender is a required field"
                                ControlToValidate="ddlGender" Text="*" ForeColor="Red" InitialValue="Select Gender">
                            </asp:RequiredFieldValidator> 
                        </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Dob" SortExpression="Dob">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Dob") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvEditDob" runat="server"
                                ErrorMessage="Date of birth is a required field"
                                ControlToValidate="TextBox6" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Dob") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                            <asp:TextBox ID="txtDob" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertDob" runat="server"
                                ErrorMessage="Date of birth is a required field"
                                ControlToValidate="txtDob" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator> 
                        </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Addline1" SortExpression="Addline1">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Addline1") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditAddline1" runat="server"
                                ErrorMessage="Address Line 1 is a required field"
                                ControlToValidate="TextBox7" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("Addline1") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                            <asp:TextBox ID="txtAddline1" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertAddline1" runat="server"
                                ErrorMessage="Address Line 1 is a required field"
                                ControlToValidate="txtAddline1" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator> 
                        </FooterTemplate>    
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Addline2" SortExpression="Addline2">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Addline2") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditAddline2" runat="server"
                                ErrorMessage="Address Line 2 is a required field"
                                ControlToValidate="TextBox8" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("Addline2") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                            <asp:TextBox ID="txtAddline2" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertAddline2" runat="server"
                                ErrorMessage="Address Line 2 is a required field"
                                ControlToValidate="txtAddline2" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator> 
                        </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Zipcode" SortExpression="Zipcode">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Zipcode") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditZipcode" runat="server"
                                ErrorMessage="Zipcode is a required field"
                                ControlToValidate="TextBox9" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("Zipcode") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                            <asp:TextBox ID="txtZipcode" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertZipcode" runat="server"
                                ErrorMessage="Zipcode is a required field"
                                ControlToValidate="txtZipcode" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator> 
                        </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Country" SortExpression="Country">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("Country") %>'>
                                <asp:ListItem>Country</asp:ListItem>
                                <asp:ListItem>India</asp:ListItem>
                                <asp:ListItem>Vietnam</asp:ListItem>
                                <asp:ListItem>Malaysia</asp:ListItem>
                                <asp:ListItem>Pakistan</asp:ListItem>
                            </asp:DropDownList>
                           <asp:RequiredFieldValidator ID="rfvEditCountry" runat="server"
                                ErrorMessage="Country is a required field"
                                ControlToValidate="DropDownList2" Text="*" ForeColor="Red" InitialValue="Select Country">
                            </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("Country") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                            <asp:DropDownList ID="ddc" runat="server">
                                <asp:ListItem>Country</asp:ListItem>
                                <asp:ListItem>India</asp:ListItem>
                                <asp:ListItem>Vietnam</asp:ListItem>
                                <asp:ListItem>Malaysia</asp:ListItem>
                                <asp:ListItem>Pakistan</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertCountry" runat="server"
                                ErrorMessage="Country is a required field"
                                ControlToValidate="ddc" Text="*" ForeColor="Red" InitialValue="Select Country">
                            </asp:RequiredFieldValidator> 
                        </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Code" SortExpression="Code">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Code") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvEditCode" runat="server"
                                ErrorMessage="Code is a required field"
                                ControlToValidate="TextBox11" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("Code") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                            <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertCode" runat="server"
                                ErrorMessage="Code is a required field"
                                ControlToValidate="txtCode" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator> 
                        </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditPhone" runat="server"
                                ErrorMessage="Phone is a required field"
                                ControlToValidate="TextBox12" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label13" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                            <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertPhone" runat="server"
                                ErrorMessage="Phone is a required field"
                                ControlToValidate="txtPhone" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator> 
                        </FooterTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Datetime" HeaderText="Datetime" SortExpression="Datetime" />
        </Columns>
                                      </asp:gridview>

                                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Client LMSConnectionString %>" DeleteCommand="DELETE FROM [Contable] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Contable] ([Firstname], [Lastname], [Username], [Email], [Gender], [Dob], [Password], [Conpass], [Addline1], [Addline2], [Zipcode], [Place], [Country], [Code], [Phone], [Datetime]) VALUES (@Firstname, @Lastname, @Username, @Email, @Gender, @Dob, @Password, @Conpass, @Addline1, @Addline2, @Zipcode, @Place, @Country, @Code, @Phone, @Datetime)" SelectCommand="SELECT * FROM [Contable]" UpdateCommand="UPDATE [Contable] SET [Firstname] = @Firstname, [Lastname] = @Lastname, [Username] = @Username, [Email] = @Email, [Gender] = @Gender, [Dob] = @Dob, [Password] = @Password, [Conpass] = @Conpass, [Addline1] = @Addline1, [Addline2] = @Addline2, [Zipcode] = @Zipcode, [Place] = @Place, [Country] = @Country, [Code] = @Code, [Phone] = @Phone, [Datetime] = @Datetime WHERE [ID] = @ID">
                                          <DeleteParameters>
                                              <asp:Parameter Name="ID" Type="Int32" />
                                          </DeleteParameters>
                                          <InsertParameters>
                                              <asp:Parameter Name="Firstname" Type="String" />
                                              <asp:Parameter Name="Lastname" Type="String" />
                                              <asp:Parameter Name="Username" Type="String" />
                                              <asp:Parameter Name="Email" Type="String" />
                                              <asp:Parameter Name="Gender" Type="String" />
                                              <asp:Parameter Name="Dob" Type="String" />
                                              <asp:Parameter Name="Password" Type="String" />
                                              <asp:Parameter Name="Conpass" Type="String" />
                                              <asp:Parameter Name="Addline1" Type="String" />
                                              <asp:Parameter Name="Addline2" Type="String" />
                                              <asp:Parameter Name="Zipcode" Type="String" />
                                              <asp:Parameter Name="Place" Type="String" />
                                              <asp:Parameter Name="Country" Type="String" />
                                              <asp:Parameter Name="Code" Type="String" />
                                              <asp:Parameter Name="Phone" Type="String" />
                                              <asp:Parameter Name="Datetime" Type="DateTime" />
                                          </InsertParameters>
                                          <UpdateParameters>
                                              <asp:Parameter Name="Firstname" Type="String" />
                                              <asp:Parameter Name="Lastname" Type="String" />
                                              <asp:Parameter Name="Username" Type="String" />
                                              <asp:Parameter Name="Email" Type="String" />
                                              <asp:Parameter Name="Gender" Type="String" />
                                              <asp:Parameter Name="Dob" Type="String" />
                                              <asp:Parameter Name="Password" Type="String" />
                                              <asp:Parameter Name="Conpass" Type="String" />
                                              <asp:Parameter Name="Addline1" Type="String" />
                                              <asp:Parameter Name="Addline2" Type="String" />
                                              <asp:Parameter Name="Zipcode" Type="String" />
                                              <asp:Parameter Name="Place" Type="String" />
                                              <asp:Parameter Name="Country" Type="String" />
                                              <asp:Parameter Name="Code" Type="String" />
                                              <asp:Parameter Name="Phone" Type="String" />
                                              <asp:Parameter Name="Datetime" Type="DateTime" />
                                              <asp:Parameter Name="ID" Type="Int32" />
                                          </UpdateParameters>
                                      </asp:SqlDataSource>

    <asp:sqldatasource   runat="server" ConnectionString="<%$ ConnectionStrings:Client LMSConnectionString %>" DeleteCommand="DELETE FROM [Contable] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Contable] ([Firstname], [Lastname], [Username], [Email], [Gender], [Dob], [Password], [Conpass], [Addline1], [Addline2], [Zipcode], [Place], [Country], [Code], [Phone], [Datetime]) VALUES (@Firstname, @Lastname, @Username, @Email, @Gender, @Dob, @Password, @Conpass, @Addline1, @Addline2, @Zipcode, @Place, @Country, @Code, @Phone, @Datetime)" SelectCommand="SELECT * FROM [Contable]" UpdateCommand="UPDATE [Contable] SET [Firstname] = @Firstname, [Lastname] = @Lastname, [Username] = @Username, [Email] = @Email, [Gender] = @Gender, [Dob] = @Dob, [Password] = @Password, [Conpass] = @Conpass, [Addline1] = @Addline1, [Addline2] = @Addline2, [Zipcode] = @Zipcode, [Place] = @Place, [Country] = @Country, [Code] = @Code, [Phone] = @Phone, [Datetime] = @Datetime WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Firstname" Type="String" />
            <asp:Parameter Name="Lastname" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Dob" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Conpass" Type="String" />
            <asp:Parameter Name="Addline1" Type="String" />
            <asp:Parameter Name="Addline2" Type="String" />
            <asp:Parameter Name="Zipcode" Type="String" />
            <asp:Parameter Name="Place" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="Code" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Datetime" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Firstname" Type="String" />
            <asp:Parameter Name="Lastname" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Dob" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Conpass" Type="String" />
            <asp:Parameter Name="Addline1" Type="String" />
            <asp:Parameter Name="Addline2" Type="String" />
            <asp:Parameter Name="Zipcode" Type="String" />
            <asp:Parameter Name="Place" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="Code" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Datetime" Type="DateTime" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
                                      </asp:sqldatasource>



</div>

</asp:Content>

