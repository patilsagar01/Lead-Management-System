<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="js1/jquery.vide.min.js"></script>
	<!-- main -->
	<div data-vide-bg="video/Ipad">
		<div class="center-container">
			<!--header-->
			<div class="header-w3l">
				<h1>Welcome Admin</h1>
           <!--     <h3><asp:Label ID="txtlbl" runat="server" Text="Authentication Failed , Check Your Username Or Password"></asp:Label></h3>-->
			</div>
			<!--//header-->
			<div class="main-content-agile">
				<div class="sub-main-w3">	
					<div class="wthree-pro">
						<h2>Login</h2>
                        
					</div>
					<form action="#" method="post">
                        <asp:TextBox ID="TextBox1" class="user" runat="server" placeholder="Username or E-mail" name="Name" type="email" required="" ></asp:TextBox>
                        
						<span class="icon1"><i class="fa fa-user" aria-hidden="true"></i></span><br><br>
                        <asp:TextBox ID="TextBox2" class="pass" runat="server" placeholder="Password" name="Name" type="password" required="" ></asp:TextBox>

						<span class="icon2"><i class="fa fa-unlock" aria-hidden="true"></i></span><br>
						<div class="sub-w3l">
							<h6>
                               <br />
							<div class="right-w3l">
                                <asp:Button ID="btnsubmit" runat="server" Text="Login" OnClick="btnsubmit_Click" />
							</div>
						</div>
					</form>
				</div>
			    <br />
			</div>
			<!--//main-->

            <!--footer-->
			<div class="footer">
				<p>&copy; 2021  All rights reserved | Design by <a href="http://www.webnetiz.com/">WebNetiz Solution pvt.Ltd</a></p>
			</div>
			<!--//footer-->
		</div>
	</div>

</asp:Content>

