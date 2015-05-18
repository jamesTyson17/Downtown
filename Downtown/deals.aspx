<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deals.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html class="no-js">
    <head>
        <meta charset="utf-8">
        <title>Deals Page </title>
        <meta name="description" content="">
<!-- 
Travel Template 
http://www.templatemo.com/preview/templatemo_409_travel 
-->
        <meta name="viewport" content="width=device-width">
		<meta name="author" content="templatemo">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,800,700,600,300' rel='stylesheet' type='text/css'>
        
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/templatemo_misc.css">
        <link rel="stylesheet" href="css/templatemo_style.css">

        <script src="js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>
    </head>
    <body>
        <form id="form1" runat="server">
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->

		<div class="site-header">
            <div class="container">
                <div class="main-header">
                    <div class="row">
                        <div class="col-md-4 col-sm-6 col-xs-10">
                            <div class="logo">
                                <a href="Default.aspx">
                                    <img src="images/RestAssiLogo.png" alt="travel html5 template" title="travel html5 template">
                                </a>
                            </div> <!-- /.logo -->
                        </div> <!-- /.col-md-4 -->
                        <div class="col-md-8 col-sm-6 col-xs-2">
                            <div class="main-menu">
                                <ul class="visible-lg visible-md">
                                    <li><a href="Default.aspx">Home</a></li>
                                    <li><a href="TestReview.aspx">Reviews</a></li>
                                    <li class="active"><a href="deals.aspx">Deals</a></li>
                                	<li><a href="about.html">About Us</a></li>
                                    <li><a href="login.aspx">Login</a></li>
                                    <li><a href="register.aspx">Sign-Up</a></li>
                                </ul>
                                <a href="#" class="toggle-menu visible-sm visible-xs">
                                    <i class="fa fa-bars"></i>
                                </a>
                            </div> <!-- /.main-menu -->
                        </div> <!-- /.col-md-8 -->
                    </div> <!-- /.row -->
                </div> <!-- /.main-header -->
                <div class="row">
                    <div class="col-md-12 visible-sm visible-xs">
                        <div class="menu-responsive">
                            <ul>
                                <li><a href="Default.aspx">Home</a></li>
                                <li><a href="TestReview.aspx">Reviews</a></li>
                                <li class="active"><a href="deals.aspx">Deals</a></li>
                                <li><a href="about.html">About Us</a></li>
                                <li><a href="login.aspx">Login</a></li>
                                <li><a href="register.aspx">Sign-Up</a></li>
                            </ul>
                        </div> <!-- /.menu-responsive -->
                    </div> <!-- /.col-md-12 -->
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div> <!-- /.site-header -->

        <div class="page-top" id="templatemo_events">
        </div> <!-- /.page-header -->

        <div class="middle-content">
            <div class="container">
            
                <div class="row"><!-- first row -->
                
                	<div class="col-md-4"><!-- first column -->
                    
                        <div class="widget-item">
                        
                            <h3 class="widget-title">Filters</h3>
                            <div class="service-item">
                                <div>
                                    
                                </div> <!-- /.service-icon -->
                              <div class="service-content">
     
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" AutoPostBack="True">
                                    </asp:RadioButtonList>
                              
                                </div> 
                                <!-- /.service-content -->
                            </div> <!-- /.service-item -->
                            
                            <div class="service-item">
                                <div>
                                    
                                </div> <!-- /.service-icon -->
                                <div class="service-content">
                                    
                                </div> <!-- /.service-content -->
                            </div> <!-- /.service-item -->
                            
                            <div class="service-item">
                                <div>
                                  
                                </div> <!-- /.service-icon -->
                                <div class="service-content">
                                                                 
                                </div> <!-- /.service-content -->
                            </div> <!-- /.service-item -->
                            
                            <div class="service-item">
                                <div>
                                    
                                </div> <!-- /.service-icon -->
                                <div class="service-content">
                                    
                                </div> <!-- /.service-content -->
                            </div> <!-- /.service-item -->
                            
                        </div> <!-- /.widget-item -->
                        
                    </div> <!-- /.col-md-4 -->
                    
                    <div ><!-- second column -->
                        <div class="widget-item">
                            <h3 class="widget-title">Deals</h3>
                            <div class="sample-thumb">
                                
                                <asp:DataList ID="dlDeals" runat="server" DataKeyField="DID" DataSourceID="SqldbDeals" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                    <ItemTemplate>
                                        Restaurant:
                                        <asp:Label ID="RestaurantLabel" runat="server" Text='<%# Eval("Name") %>' />
                                        <br />
                                        Title:
                                        <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                                        <br />
                                        Description:
                                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                                        <br />
                                        <br />
                                    </ItemTemplate>
                                    <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                </asp:DataList></div>

                            <asp:SqlDataSource ID="SqldbDeals" runat="server" ConnectionString="<%$ ConnectionStrings:Restaurant AssistantConnectionString %>"
                                 SelectCommand="SELECT DID, Restaurant.RID, Title, Description, Restaurant.Name FROM Deals, Restaurant WHERE Deals.RID = Restaurant.RID AND Name = @Name">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="RadioButtonList1" Name="Name" PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                            
                            <br />
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Restaurant AssistantConnectionString %>" SelectCommand="SELECT [Name], [RID] FROM [Restaurant]"></asp:SqlDataSource>

                            
                        </div> <!-- /.widget-item -->
                    </div> <!-- /.col-md-4 -->
                    
                                   
                    
                    
               
                
            </div> <!-- /.container -->
        </div> <!-- /.middle-content -->

        <div class="site-footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <div class="footer-logo">
                            <a href="Default.aspx">
                                <img src="images/RestAssiLogo.png" alt="">
                            </a>
                        </div>
                    </div> <!-- /.col-md-4 -->
                    <div class="col-md-4 col-sm-4">
                        <div class="copyright">
                            <span>Copyright &copy; 2015 <a href="Default.aspx">Restaurant Assistant</a></span>
                        </div>
                    </div> <!-- /.col-md-4 -->
                    
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div> <!-- /.site-footer -->

        <script src="js/vendor/jquery-1.11.0.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.0.min.js"><\/script>')</script>
        <script src="js/bootstrap.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>
        <!-- templatemo 409 travel -->
        </form>
    </body>
</html>
