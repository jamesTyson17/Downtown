<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestReview.aspx.cs" Inherits="TestReview" %>

<!DOCTYPE html>

    <head>
        <meta charset="utf-8">
        <title>Reviews Page - Travel by templatemo</title>
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
                                    <li class="active"><a href="TestReview.aspx">Reviews</a></li>
                                    <li><a href="deals.aspx">Deals</a></li>
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
                                <li class="active"><a href="TestReview.aspx">Reviews</a></li>
                                <li><a href="deals.aspx">Deals</a></li>
                                <li><a href="about.html">About Us</a></li>
                                <li><a href="login.aspx">Login</a></li>
                                <li><a href="register.aspx">Sign-Up</a></li>
                            </ul>
                        </div> <!-- /.menu-responsive -->
                    </div> <!-- /.col-md-12 -->
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div> <!-- /.site-header -->

        <div class="page-top" id="templatemo_services">
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
                            <h3 class="widget-title">Reviews</h3>
                            <div class="sample-thumb">
                                <h2 class="widget-title">Reviews on this restaurant:</h2>

                                <asp:DataList ID="DataList1" runat="server" DataKeyField="RID" DataSourceID="myDataSource">
                                    <ItemTemplate>
                                        <br />
                                        <b>Reviewed by:</b>
                                        <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                                        <br />
                                        <b>Restaurant being reviewed:</b>
                                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                        <br />
                                        <div style="border:ridge; width:350px; height:150px;">
                                        <asp:Label ID="TextLabel" runat="server" Text='<%# Eval("Text") %>' />
                                        </div>
                                        
                                        <br />
                                        
                                    </ItemTemplate>

                                </asp:DataList>
                                <br />
                                Write a review here!
                                <br />
                            </div>
                            &nbsp;<asp:TextBox ID="txtReview" runat="server" Columns="75" Rows="10" TextMode="MultiLine" style="resize:none;"></asp:TextBox>

                            <br />
                            <br />
                            
                            <asp:Button ID="submitBTN" runat="server" Text="Submit Review" OnClick="submitBTN_Click" />
                            <br />
                            <asp:Label ID="loginMessage" runat="server"></asp:Label>

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
                                <img src="images/RestAssiLogo.png" alt=""><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Restaurant AssistantConnectionString %>" SelectCommand="SELECT [Name], [RID] FROM [Restaurant]"></asp:SqlDataSource>

                            &nbsp;</a></div>
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
            </div>
            </div>
            <asp:SqlDataSource ID="myDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Restaurant AssistantConnectionString %>" SelectCommand="SELECT Restaurant.RID, Review.Text, Restaurant.Name, Review.REID, Usertab.Username
FROM [Review],[Restaurant],[Usertab] 
WHERE Restaurant.RID = Review.RID AND Restaurant.Name = @Name AND Usertab.UID = Review.UID " InsertCommand="INSERT INTO Review (UID, RID, Text) 
SELECT Usertab.UID, Restaurant.RID, @Text 
FROM Restaurant, Usertab 
WHERE Restaurant.Name = @Radio AND Usertab.Username = @User" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Review] WHERE [REID] = @original_REID AND [UID] = @original_UID AND [RID] = @original_RID AND (([Text] = @original_Text) OR ([Text] IS NULL AND @original_Text IS NULL))" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Review] SET [UID] = @UID, [RID] = @RID, [Text] = @Text WHERE [REID] = @original_REID AND [UID] = @original_UID AND [RID] = @original_RID AND (([Text] = @original_Text) OR ([Text] IS NULL AND @original_Text IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_REID" Type="Decimal" />
                    <asp:Parameter Name="original_UID" Type="Decimal" />
                    <asp:Parameter Name="original_RID" Type="Decimal" />
                    <asp:Parameter Name="original_Text" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtReview" Name="Text" PropertyName="Text" />
                    <asp:ControlParameter ControlID="RadioButtonList1" Name="Radio" PropertyName="SelectedValue" />
                    <asp:SessionParameter Name="User" SessionField="new" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="RadioButtonList1" Name="Name" PropertyName="SelectedValue" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UID" Type="Decimal" />
                    <asp:Parameter Name="RID" Type="Decimal" />
                    <asp:Parameter Name="Text" Type="String" />
                    <asp:Parameter Name="original_REID" Type="Decimal" />
                    <asp:Parameter Name="original_UID" Type="Decimal" />
                    <asp:Parameter Name="original_RID" Type="Decimal" />
                    <asp:Parameter Name="original_Text" Type="String" />
                </UpdateParameters>
        </asp:SqlDataSource>
        </form>
            <asp:SqlDataSource ID="userDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Restaurant AssistantConnectionString %>" SelectCommand="SELECT [UID] FROM [UserTab] WHERE ([Username] = @Username)">
                <SelectParameters>
                    <asp:SessionParameter Name="Username" SessionField="new" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </form>
            </body>
</html>
