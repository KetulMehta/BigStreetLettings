<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Ext_RealEstate.Client.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div role="main" class="main pgl-bg-grey">
        <!-- Begin page top -->
        <section class="page-top">
            <div class="container">
                <div class="page-top-in">
                    <h2><span>Contact Us</span></h2>
                </div>
            </div>
        </section>
        <!-- End page top -->

        <!-- Begin content with sidebar -->
        <div class="container">
            <div class="row">
                <div class="col-md-9 content">

                    <div class="contact">
                        <p>We strongly believe that, no matter how good the property may be, but if it is not maintained properly, the chances are nearly nil of the property being let. That is why we are always in search of a quality and affordable workmen, and those who are an expert in their field.</p>
                        <%--<div id="contact-map" class="pgl-bg-light">--%>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3669.7310219408937!2d72.59273001454767!3d23.106940284910426!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e83c959d4de6f%3A0x748d0828c02cf9fa!2sVishwakarma+Government+Engineering+College!5e0!3m2!1sen!2sin!4v1491386265766" width="840" height="450" frameborder="0" style="border:0"></iframe>
                        <br />

                        <div class="row">
                            <div class="col-sm-6">
                                <strong>Your address</strong>
                                <address>VGEC, Chandkheda.</address>
                            </div>
                            <div class="col-sm-6">
                                <address>
                                    <strong>Phone.</strong> 012.666.999<br>
                                    <strong>Fax.</strong> 012.666.999<br>
                                    <strong>Email.</strong> projects@vgec.ac.in

								
                                </address>
                            </div>
                        </div>
                        <hr>
                        <form id="contact-form" name="form1" method="post" action="http://pixelgeeklab.com/html/realestast/send_contact.php">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <label for="name">Your Name*</label>
                                        <input type="text" name="name" id="name" class="form-control" data-msg-required="Please enter your name." required>
                                    </div>
                                    <div class="col-sm-6">
                                        <label for="customer_mail">Your Email*</label>
                                        <input type="email" name="customer_mail" id="customer_mail" class="form-control" data-msg-required="Please enter your email address." data-msg-email="Please enter a valid email address." required>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <label for="subject">Subject*</label>
                                        <input type="text" name="subject" id="subject" class="form-control" data-msg-required="Please enter the subject." required>
                                    </div>
                                    <div class="col-sm-6">
                                        <label for="website">Website</label>
                                        <input type="text" name="website" id="website" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="comments">Your Message*</label>
                                <textarea rows="9" name="comments" id="comments" class="form-control" data-msg-required="Please enter your message." required></textarea>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Submit" class="btn btn-primary min-wide" data-loading-text="Loading...">
                            </div>
                        </form>
                    </div>

                </div>
                <div class="col-md-3 sidebar">

                    <!-- Begin Our Agents -->
                    <aside class="block pgl-agents pgl-bg-light">
                        <h3>Our Agents</h3>
                        <div class="owl-carousel pgl-pro-slide pgl-agent-item" data-plugin-options='{"items": 1, "pagination": false, "autoHeight": true}'>

                            <div class="pgl-agent-item">
                                <div class="img-thumbnail-medium">
                                    <a href="agentprofile.html">
                                        <img src="images/agents/agent-icon-10.png" class="img-responsive" alt=""></a>
                                </div>
                                <div class="pgl-agent-info">
                                    <small>NO.1</small>
                                    <h4><a href="agentprofile.html">Preet Parikh</a></h4>
                                    <address>
                                        <i class="fa fa-map-marker"></i>Office : +91-9974245531<br>
                                        <i class="fa fa-phone"></i>Mobile :+91-8866447925<br>
                                        <i class="fa fa-fax"></i>Fax : +91-27500060<br>
                                        <i class="fa fa-envelope-o"></i>Mail: <a href="mailto:preetparikh8@yahoo.com">preetparikh8@yahoo.com</a>
                                    </address>
                                </div>
                            </div>

                            <div class="pgl-agent-item">
                                <div class="img-thumbnail-medium">
                                    <a href="agentprofile.html">
                                        <img src="images/agents/agent-icon-10.png" class="img-responsive" alt=""></a>
                                </div>
                                <div class="pgl-agent-info">
                                    <small>NO.2.1</small>
                                    <h4><a href="agentprofile.html">Ketul Mehta</a></h4>
                                    <address>
                                        <i class="fa fa-map-marker"></i>Office :800-666-8888<br>
                                        <i class="fa fa-phone"></i>Mobile : 800-666-6666<br>
                                        <i class="fa fa-fax"></i>Fax : 800-666-8888<br>
                                        <i class="fa fa-envelope-o"></i>Mail: <a href="mailto:MCCarthy@gmail.com">ketulmehta432@yahoo.com</a>
                                    </address>
                                </div>
                            </div>

                        </div>
                    </aside>
                    <!-- End Our Agents -->

                    <!-- Begin Tabs -->
                    <aside class="block tabs pgl-bg-light">
                        <ul class="nav nav-tabs second-tabs">
                            <li class="active"><a href="#popularPosts" data-toggle="tab"><i class="icon icon-star"></i>Popular</a></li>
                            <li><a href="#latestComments" data-toggle="tab">Comments</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="popularPosts">
                                <ul class="list-unstyled simple-post-list">
                                    <li>
                                        <div class="post-image">
                                            <a href="blog-single.html">
                                                <img class="img-responsive" src="images/blog/demo-thumb-7.jpg" alt="Blog"></a>
                                        </div>
                                        <div class="post-info">
                                            <a href="blog-single.html">Great Experiem</a>
                                            <div class="post-meta">
                                                <i class="fa fa-eye"></i>113 views
											
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="post-image">
                                            <a href="blog-single.html">
                                                <img class="img-responsive" src="images/blog/demo-thumb-6.jpg" alt="Blog"></a>
                                        </div>
                                        <div class="post-info">
                                            <a href="blog-single.html">Awesome Service</a>
                                            <div class="post-meta">
                                                <i class="fa fa-eye"></i>113 views
											
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="post-image">
                                            <a href="blog-single.html">
                                                <img class="img-responsive" src="images/blog/demo-thumb-5.jpg" alt="Blog"></a>
                                        </div>
                                        <div class="post-info">
                                            <a href="blog-single.html">Easy access</a>
                                            <div class="post-meta">
                                                <i class="fa fa-eye"></i>113 views
											
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="post-image">
                                            <a href="blog-single.html">
                                                <img class="img-responsive" src="images/blog/demo-thumb-4.jpg" alt="Blog"></a>
                                        </div>
                                        <div class="post-info">
                                            <a href="blog-single.html">Maintained Property</a>
                                            <div class="post-meta">
                                                <i class="fa fa-eye"></i>113 views
											
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="post-image">
                                            <a href="blog-single.html">
                                                <img class="img-responsive" src="images/blog/demo-thumb-3.jpg" alt="Blog"></a>
                                        </div>
                                        <div class="post-info">
                                            <a href="blog-single.html">Ac urna eu felis condimentum</a>
                                            <div class="post-meta">
                                                <i class="fa fa-eye"></i>113 views
											
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>

                            <div class="tab-pane" id="latestComments">
                                <ul class="list-unstyled simple-post-list">
                                    <li>
                                        <div class="post-image">
                                            <a href="blog-single.html">
                                                <img class="img-responsive" src="images/blog/agent-icon-10.png" alt="Blog"></a>
                                        </div>
                                        <div class="post-info">
                                            <a href="blog-single.html">Fabulous</a>
                                            <div class="post-meta">
                                                <i class="fa fa-eye"></i>213 views
											
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="post-image">
                                            <a href="blog-single.html">
                                                <img class="img-responsive" src="images/blog/demo-thumb-2.jpg" alt="Blog"></a>
                                        </div>
                                        <div class="post-info">
                                            <a href="blog-single.html">Great Facility and service</a>
                                            <div class="post-meta">
                                                <i class="fa fa-eye"></i>117 views
											
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="post-image">
                                            <a href="blog-single.html">
                                                <img class="img-responsive" src="images/blog/demo-thumb-3.jpg" alt="Blog"></a>
                                        </div>
                                        <div class="post-info">
                                            <a href="blog-single.html">Awesome</a>
                                            <div class="post-meta">
                                                <i class="fa fa-eye"></i>19 views
											
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="post-image">
                                            <a href="blog-single.html">
                                                <img class="img-responsive" src="images/blog/demo-thumb-4.jpg" alt="Blog"></a>
                                        </div>
                                        <div class="post-info">
                                            <a href="blog-single.html">Class aptent taciti sociosqu ad litora</a>
                                            <div class="post-meta">
                                                <i class="fa fa-eye"></i>113 views
											
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="post-image">
                                            <a href="blog-single.html">
                                                <img class="img-responsive" src="images/blog/demo-thumb-3.jpg" alt="Blog"></a>
                                        </div>
                                        <div class="post-info">
                                            <a href="blog-single.html">Ac urna eu felis condimentum</a>
                                            <div class="post-meta">
                                                <i class="fa fa-eye"></i>113 views
											
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </aside>
                    <!-- End Tabs -->

                </div>
            </div>
        </div>
        <!-- End content with sidebar -->

    </div>
    <!-- End content with sidebar -->

    
</asp:Content>
