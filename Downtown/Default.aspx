<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
        <title>ECU Restaurant Assistant</title>
        <meta name="description" content=""/>
<!-- 
Travel Template 
http://www.templatemo.com/preview/templatemo_409_travel 
-->
        <meta name="viewport" content="width=device-width"/>
		<meta name="author" content="templatemo"/>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,800,700,600,300' rel='stylesheet' type='text/css'/>
        
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/font-awesome.css"/>
        <link rel="stylesheet" href="css/animate.css"/>
        <link rel="stylesheet" href="css/templatemo_misc.css"/>
        <link rel="stylesheet" href="css/templatemo_style.css"/>

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
                                <a href="#">
                                    <img src="images/RestAssiLogo.png" alt="Restaurants Assistant logo" title="" />
                                </a>
                            </div> <!-- /.logo -->
                        </div> <!-- /.col-md-4 -->
                        <div class="col-md-8 col-sm-6 col-xs-2">
                            <div class="main-menu">
                                <ul class="visible-lg visible-md">
                                    <li class="active"><a href="index.html">Home</a></li>
                                    <li><a href="Testreview.aspx">Reviews</a></li>
                                    <li><a href="deals.aspx">Deals</a></li>
                                    <li><a href="about.html">About Us</a></li>
                                    <li><a href="login.aspx">Login</a></li>
                                    <li><a href="register.aspx">Sign-in</a></li>
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
                                <li class="active"><a href="index.html">Home</a></li>
                                <li><a href="testreviews.aspx">Reviews</a></li>
                                <li><a href="deals.aspx">Deals</a></li>
                                <li><a href="about.html">About Us</a></li>
                                <li><a href="login.aspx">Login</a></li>
                                <li><a href="register.aspx">Sign-in</a></li>
                            </ul>
                        </div> <!-- /.menu-responsive -->
                    </div> <!-- /.col-md-12 -->
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div> <!-- /.site-header -->


        <div class="flexslider">
            <ul class="slides">
                <li>
                    <div class="overlay"></div>
                    <img src="images/templatemo_slide_1.jpg" alt="Special 1" />
                    <div class="container">
                        <div class="row">
                            <div class="col-md-5 col-lg-4">
                                <div class="flex-caption visible-lg">
                                    <span class="price">Deals</span>
                                    
                                    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" DataKeyField="DID">
                                        <ItemTemplate>
                                            <br />
                                           <h2>
                                            Title:
                                            <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                                            <br />
                                            Description:
                                            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                                            <br />
<br /> </h2>
                                        </ItemTemplate>
                                    </asp:DataList>

                                    <h3>View all of our amazing deals for <span class="blue">Restaurants</span> in <span class="green">Greenville, NC</span>. <br /> </h3>
                                    <a href="Deals.aspx" class="slider-btn">Go to Deals Page</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="overlay"></div>
                    <img src="images/templatemo_slide_2.jpg" alt="Special 2" />
                    <div class="container">
                        <div class="row">
                            <div class="col-md-5 col-lg-4">
                                <div class="flex-caption visible-lg">
                                    <span class="price">Reviews</span>
                                    
                                    <asp:DataList ID="DataList1" runat="server" DataKeyField="REID" DataSourceID="SqlDataSource2">
            <ItemTemplate>
                <br />
                
                Random Reviewer Says this about Sup Dogs!
                <h2><asp:Label ID="TextLabel" runat="server" Text='<%# Eval("Text") %>' /></h2>
                <br />
<br />
            </ItemTemplate>
                </asp:DataList>
                                    <h3>View the Reviews for your favorite <span class="blue">Restaurants</span> in <span class="green">Greenville, NC</span>. <br /> </h3>
                                    <a href="TestReivews.aspx" class="slider-btn">View Reviews</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="overlay"></div>
                    <img src="images/templatemo_slide_3.jpg" alt="Special 3">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-5 col-lg-4">
                                <div class="flex-caption visible-lg">
                                    <span class="price">About Our Team</span>
                                    <hr />
                                    <p>Learn More about the Restaurant Assistant Team</p>
                                    <a href="about.html" class="slider-btn">About Us</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div> <!-- /.flexslider -->

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Users %>" SelectCommand="SELECT * FROM [Deals] WHERE ([DID] = @DID)">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="DID" Type="Decimal" />
            </SelectParameters>
            
                </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Users %>" SelectCommand="SELECT * FROM [Review] WHERE ([REID] = @REID)">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="REID" Type="Decimal" />
            </SelectParameters>
                </asp:SqlDataSource>
        
        

		<div class="middle-content"></div>

        

		

        

        <script src="js/vendor/jquery-1.11.0.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.0.min.js"><\/script>')</script>
        <script src="js/bootstrap.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>
        <!-- templatemo 409 travel -->
    
    </form>
</body>
</html>
