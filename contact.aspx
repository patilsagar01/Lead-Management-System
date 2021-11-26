<%@ Page Title="" Language="C#" MasterPageFile="~/contact master.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
      <span class="big-circle"></span>
      <img src="img/shape.png" class="square" alt="" />
        
      <div class="form">
        <div class="contact-info">
        <asp:Label ID="Label3" forecolor="red" runat="server" Text=""></asp:Label>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Email Address" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+" ForeColor="Red"></asp:RegularExpressionValidator>
         &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Not Valid Format" ControlToValidate="phone" ValidationExpression="[0-9]{10}" ForeColor="Red" ></asp:RegularExpressionValidator>
          <h3 class="title">Let's get in touch</h3>
          <p class="text">
           
          </p>

          <div class="info">
            <div class="information">
              <img src="img/location.png" class="icon" alt="" />
              <p></p>
            </div>
            <div class="information">
              <img src="img/email.png" class="icon" alt="" />
              <p></p>
            </div>
            <div class="information">
              <img src="img/phone.png" class="icon" alt="" />
              <p></p>
            </div>
          </div>

          <div class="social-media">
            <p>Connect with us :</p>
            <div class="social-icons">
              <a href="#">
                <i class="fab fa-facebook-f"></i>
              </a>
              <a href="#">
                <i class="fab fa-twitter"></i>
              </a>
              <a href="#">
                <i class="fab fa-instagram"></i>
              </a>
              <a href="#">
                <i class="fab fa-linkedin-in"></i>
              </a>
            </div>
          </div>
        </div>

        <div class="contact-form">
          <span class="circle one"></span>
          <span class="circle two"></span>

          <form action="index.html" autocomplete="off">
            <h3 class="title">Contact us</h3>
            <div class="input-container">
              <asp:textbox ID="txtname" runat="server" type="text" name="name" class="input" required=""></asp:textbox>
              <label for="">Username</label>
              <span>Username</span>
            </div>
            <div class="input-container">
              <asp:textbox ID="txtemail" runat="server" input type="email" name="email" class="input" required="" TextMode="Email"></asp:textbox>
              <label for="">Email</label>

              <span>Email</span>
            </div>

            

            <div class="input-container">
              <asp:textbox ID="phone" runat="server" type="phone" name="phone" class="input" required=""></asp:textbox>
              <label for="">Phone</label>
              <span>Phone</span>
            </div>
            <div class="input-container textarea">
              <asp:TextBox ID="txtmsg" runat="server" name="message" class="input" TextMode="MultiLine" required=""></asp:TextBox>
              <label for="">Message</label>
              <span>Message</span>
            </div>
            
    <asp:button ID="btn" runat="server" text="Submit" type="submit" value="Send" class="btn" OnClick="btn_Click" />
          </form>
        </div>
      </div>
    </div>
</asp:Content>

