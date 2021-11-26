<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
	<title>New Registration</title>
	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- Font-->
	<link rel="stylesheet" type="text/css" href="css2/montserrat-font.css">
	<link rel="stylesheet" type="text/css" href="fonts2/material-design-iconic-font/css/material-design-iconic-font.min.css">
	<!-- Main Style Css -->
    <link rel="stylesheet" href="css2/style.css"/>
</head>
<body class="form-v10">

    <div class="page-content">
        
		<div class="form-v10-content">
        
	       <form id="myform" runat="server" class="form-detail" action="#" method="post">
    	
				<div class="form-left">

					<h2>General Infomation</h2>
				    <asp:Label ID="Label3" forecolor="red" runat="server" Text=""></asp:Label>	
					<div class="form-group">
						<div class="form-row form-row-1">
                            <asp:TextBox ID="txtfname" runat="server" type="text" name="first_name" class="input-text" placeholder="First Name" required=""></asp:TextBox>
						</div>
						<div class="form-row form-row-2">
                            <asp:TextBox ID="txtlname" runat="server" type="text" name="last_name" class="input-text" placeholder="Last Name" required></asp:TextBox>
						</div>
					</div>
                    <div class="form-row">
                        <asp:TextBox ID="txtusername" runat="server" type="text" name="username" class="company" placeholder="Username" required=""></asp:TextBox>
					</div>
					<div class="form-row">
                        <asp:TextBox ID="txtemail" runat="server" type="email" name="email" class="company" placeholder="Email" TextMode="Email"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Email Address" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+"></asp:RegularExpressionValidator>

					</div>
				<div class="form-row">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem value="0">--- Select Gender---</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                        <span class="select-btn">
						  	<i class="zmdi zmdi-chevron-down"></i>
						</span>
					</div>
					<div class="form-group">
						<div class="form-row form-row-3">
                            <asp:TextBox ID="txtDob" runat="server" name="begin" value="" class="company" placeholder="dd-mm-yyyy" required="" ></asp:TextBox>
						</div>
				
					</div>
                    <div class="form-row">
                        <asp:TextBox ID="txtpass" runat="server" type="pass" name="pass" class="company" placeholder="Password" required="" TextMode="Password"></asp:TextBox>
					</div>
                    <div class="form-row">
                        <asp:TextBox ID="txtconpass" runat="server" type="pass" name="con pass" class="company" placeholder="Confirm Password" required="" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Opps Password Are Not Match"
                        ControlToValidate="txtconpass" ControlToCompare="txtpass"
                        Operator="Equal" Type="String" ForeColor="Red"
                        ></asp:CompareValidator>
					</div>
				</div>
				<div class="form-right">
					<h2>Contact Details</h2>
					<div class="form-row">
                        <asp:TextBox ID="txtadd" runat="server" type="text" name="street" class="street" placeholder="Adress Line1" required=""></asp:TextBox>
					</div>
					<div class="form-row">
                        <asp:TextBox ID="txtadd2" runat="server" type="text" name="additional" class="additional" placeholder="Address Line2"></asp:TextBox>
					</div>
					<div class="form-group">
						<div class="form-row form-row-1">
                            <asp:TextBox ID="txtzip" runat="server" type="text" name="zip" class="zip" placeholder="Zip Code" required=""></asp:TextBox>
						</div>
						<div class="form-row form-row-2">
							<asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem value="0">Place</asp:ListItem>
                        <asp:ListItem>District</asp:ListItem>
                        <asp:ListItem>City</asp:ListItem>
                        </asp:DropDownList>
							<span class="select-btn">
							  	<i class="zmdi zmdi-chevron-down"></i>
							</span>
						</div>
					</div>
					<div class="form-row">
						<asp:DropDownList ID="DropDownList4" runat="server">
                        <asp:ListItem value="0">Country</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>Vietnam</asp:ListItem>
                        <asp:ListItem>Malaysia</asp:ListItem>
                        <asp:ListItem>Pakistan</asp:ListItem>
                        </asp:DropDownList>
						<span class="select-btn">
						  	<i class="zmdi zmdi-chevron-down"></i>
						</span>
					</div>
					<div class="form-group">
						<div class="form-row form-row-1">
                            <asp:TextBox ID="txtcode" runat="server" type="text" name="code" class="code" placeholder="Code +" required=""></asp:TextBox>
						</div>
						<div class="form-row form-row-2">
                            <asp:TextBox ID="txtphone" runat="server" type="text" name="phone" class="phone" placeholder="Phone Number" required="" MaxLength="10"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Not Valid Format" ControlToValidate="txtphone" ValidationExpression="^([7-9]{1})([0-9]{9})$" forecolor="Red" ></asp:RegularExpressionValidator>
						</div>
					</div>
					
					<div class="form-checkbox">
						<label class="container" required=""><p>I do accept the <a href="#" class="text">Terms and Conditions</a> of your site.</p>
						  	<input type="checkbox" name="checkbox">
						  	<span class="checkmark"></span>
						</label>
					</div>
					<div class="form-row-last">
                        <asp:Button ID="btn" runat="server" Text="Register" type="submit" name="register" class="register" OnClick="btn_Click" />
                        
					</div>
				</div>
			
    </form>
		</div>
	</div>
    
    
    
</body>
</html>
