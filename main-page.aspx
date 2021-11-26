<%@ Page Title="" Language="C#" MasterPageFile="~/main-page.master" AutoEventWireup="true" CodeFile="main-page.aspx.cs" Inherits="main_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <!-- /inner_content-->
				<div class="inner_content">
				    <!-- /inner_content_w3_agile_info-->
					<div class="inner_content_w3_agile_info">
					<!-- /agile_top_w3_grids-->
                    <h3>
                            <asp:Label ID="Label3" runat="server" Text=""></asp:Label></h3><div class="right-w3l">
                                <asp:Button ID="btnsubmit" Style="color: white;
    background: #E53238;
    border: none;
    padding: 8px 0px;
    outline: none;
    width: 15%;
    font-size: 1.1em;
    cursor: pointer;
    letter-spacing: 2px;
    font-weight: 400;
    font-family: 'Oleo Script', cursive;" runat="server" Text="Logout" OnClick="btnsubmit_Click" />
							</div>
					   <div class="agile_top_w3_grids">
					          <ul class="ca-menu">
									<li>
										<a href="table.aspx">
											
											<i class="fa fa-building-o" aria-hidden="true"></i>
											<div class="ca-content">
                                             
												
												<h3 class="ca-sub">Add User Manually</h3>
											</div>
										</a>
									</li>
									<li>
										<a href="#">
										  <i class="fa fa-user" aria-hidden="true"></i>
											<div class="ca-content">
												
												<h3 class="ca-sub one">New User Details</h3>
											</div>
										</a>
									</li>
									<li>
										<a href="#">
											
                                           
                                            <i class="fas fa-phone-alt" aria-hidden="true"></i>
											<div class="ca-content">
											
												<h3 class="ca-sub two">Contact Details of User</h3>
											</div>
										</a>
									</li>
									
										
									<div class="clearfix"></div>
								</ul>
					   </div>
					 <!-- //agile_top_w3_grids-->
						<!-- /agile_top_w3_post_sections-->
                        <br /><br />
                        <!-- /weather_w3_agile_info-->
						<div class="weather_w3_agile_info agile_info_shadow">
						  <div class="weather_w3_inner_info">
						      
							     <div class="over_lay_agile">
								  <h3 class="w3_inner_tittle">Weather Report</h3>
						       	  <ul>
									<li>
										<figure class="icons">
											<canvas id="partly-cloudy-day" width="60" height="60"></canvas>
										</figure>
										<h3>25 °C</h3>
										<div class="clearfix"></div>
									</li>
									<li>
										<figure class="icons">
											<canvas id="clear-day" width="60" height="60"></canvas>
										</figure>
										<div class="weather-text">
											<h4>WED</h4>
											<h5>27 °C</h5>
										</div>
										<div class="clearfix"></div>
									</li>
									<li>
										<figure class="icons">
											<canvas id="snow" width="60" height="60"></canvas>
										</figure>
										<div class="weather-text">
											<h4>THU</h4>
											<h5>13 °C</h5>
										</div>
										<div class="clearfix"></div>
									</li>
									<li>
										<figure class="icons">
											<canvas id="partly-cloudy-night" width="60" height="60"></canvas>
										</figure>
										<div class="weather-text">
											<h4>FRI</h4>
											<h5>18 °C</h5>
										</div>
										<div class="clearfix"></div>
									</li>
									<li>
										<figure class="icons">
											<canvas id="cloudy" width="60" height="60"></canvas>
										</figure>
										<div class="weather-text">
											<h4>SAT</h4>
											<h5>15 °C</h5>
										</div>
										<div class="clearfix"></div>
									</li>
									<li>
										<figure class="icons">
											<canvas id="fog" width="60" height="60"></canvas>
										</figure>
										<div class="weather-text">
											<h4>SUN</h4>
											<h5>11 °C</h5>
										</div>
										<div class="clearfix"></div>
									</li>
								</ul>
								</div>
							</div>	
						</div>
                        </div>
                        </div>
                        
                        
						<!-- //weather_w3_agile_info-->
                        <br /><br />
                      

</asp:Content>

