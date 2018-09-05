<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.Master" AutoEventWireup="true" CodeBehind="ouragents.aspx.cs" Inherits="Ext_RealEstate.Client.ouragents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div role="main" class="main pgl-bg-grey">
            <!-- Begin page top -->
            <section class="page-top">
                <div class="container">
                    <div class="page-top-in">
                        <h2><span>Our Agents</span></h2>
                    </div>
                </div>
            </section>
            <!-- End page top -->

            <!-- Begin Featured Agents -->
            <section class="pgl-agents">
                <div class="container">
                    <h2>Featured Agents</h2>
                    <div class="featured-agent">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="pgl-agent-item pgl-bg-light">
                                    <div class="row pgl-midnarrow-row">
                                        <div class="col-xs-5">
                                            <div class="img-thumbnail-medium">
                                                <a href="agentprofile.html">
                                                    <img class="img-responsive" src="images/IMG_8655.JPG" />
                                                    <%--<img class="img-responsive" alt="" src="images/agents/agent-icon-10.png"></a>--%>
                                            </div>
                                        </div>
                                        <div class="col-xs-7">
                                            <div class="pgl-agent-info">
                                               
                                                <h4><a href="agentprofile.html">Preet Parikh</a></h4>
                                                <address>
                                                    <i class="fa fa-map-marker"></i> Office : 1-800-666-8888<br>
                                                    <i class="fa fa-phone"></i> Mobile : 0800-666-6666<br>
                                                    <i class="fa fa-fax"></i> Fax : 1-800-666-8888<br>
                                                    <i class="fa fa-envelope-o"></i> Mail: <a href="mailto:preetparikh8@yahoo.com">preetparikh8@yahoo.com</a>
                                                </address>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="pgl-agent-item pgl-bg-light">
                                    <div class="row pgl-midnarrow-row">
                                        <div class="col-xs-5">
                                            <div class="img-thumbnail-medium">
                                                <a href="agentprofile.html">
                                                    <img class="img-responsive" src="images/IMG_8650.JPG" />
                                                    <%--<img class="img-responsive" alt="" src="images/agents/agent-icon-10.png"></a>--%>
                                            </div>
                                        </div>
                                        <div class="col-xs-7">
                                            <div class="pgl-agent-info">
                                                
                                                <h4><a href="agentprofile.html">Ketul Mehta</a></h4>
                                                <address>
                                                    <i class="fa fa-map-marker"></i> Office : 1-800-666-8888<br>
                                                    <i class="fa fa-phone"></i> Mobile : 0800-666-6666<br>
                                                    <i class="fa fa-fax"></i> Fax : 1-800-666-8888<br>
                                                    <i class="fa fa-envelope-o"></i> Mail: <a href="mailto:ketulmehta432@yahoo.com">ketulmehta432@yahoo.com</a>
                                                </address>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- End Featured Agents -->

                    <!-- Begin Our Agents -->
                    <div class="grid-agents">
                        <h2>Our Agents</h2>
                        <div class="row">
                            <div class="col-xs-6 col-md-3">
                                <div class="pgl-agent-item pgl-bg-light">
                                    <div class="img-thumbnail-medium">
                                        <a href="agentprofile.html">
                                            <img class="img-responsive" alt="" src="images/agents/agent-icon-10.png"></a>
                                    </div>
                                    <div class="pgl-agent-info">
                                       
                                        <h4><a href="agentprofile.html">Aesha</a></h4>
                                        <address>
                                            <i class="fa fa-map-marker"></i> Office : 1-800-666-8888<br>
                                            <i class="fa fa-phone"></i> Mobile : 0800-666-6666<br>
                                            <i class="fa fa-fax"></i> Fax : 1-800-666-8888<br>
                                            <i class="fa fa-envelope-o"></i> Mail: <a href="mailto:aesha223@gmail.com">aesha223@gmail.com</a>
                                        </address>
                                    </div>

                                </div>
                            </div>
                            <div class="col-xs-6 col-md-3">
                                <div class="pgl-agent-item pgl-bg-light">
                                    <div class="img-thumbnail-medium">
                                        <a href="agentprofile.html">
                                            <img class="img-responsive" src="images/IMG_8482.JPG" />
                                            <%--<img class="img-responsive" alt="" src="images/agents/agent-icon-10.png"></a>--%>
                                    </div>
                                    <div class="pgl-agent-info">
                                       
                                        <h4><a href="agentprofile.html">Akshay</a></h4>
                                        <address>
                                            <i class="fa fa-map-marker"></i> Office : 1-800-666-8888<br>
                                            <i class="fa fa-phone"></i> Mobile : 0800-666-6666<br>
                                            <i class="fa fa-fax"></i> Fax : 1-800-666-8888<br>
                                            <i class="fa fa-envelope-o"></i> Mail: <a href="mailto:akshaydave550@gmail.com">akshaydave@gmail.com</a>
                                        </address>
                                    </div>

                                </div>
                            </div>
                            <div class="col-xs-6 col-md-3">
                                <div class="pgl-agent-item pgl-bg-light">
                                    <div class="img-thumbnail-medium">
                                        <a href="agentprofile.html">
                                            <img class="img-responsive"  src="images/IMG_8420.JPG" />
                                            <%--<img class="img-responsive" alt="" src="images/agents/agent-icon-10.png"></a>--%>
                                    </div>
                                    <div class="pgl-agent-info">
                                        
                                        <h4><a href="agentprofile.html">Honey</a></h4>
                                        <address>
                                            <i class="fa fa-map-marker"></i> Office : 1-800-666-8888<br>
                                            <i class="fa fa-phone"></i> Mobile : 0800-666-6666<br>
                                            <i class="fa fa-fax"></i> Fax : 1-800-666-8888<br>
                                            <i class="fa fa-envelope-o"></i> Mail: <a href="mailto:honey17796@gmail.com">honey17796@gmail.com</a>
                                        </address>
                                    </div>

                                </div>
                            </div>
                            <div class="col-xs-6 col-md-3">
                                <div class="pgl-agent-item pgl-bg-light">
                                    <div class="img-thumbnail-medium">
                                        <a href="agentprofile.html">
                                            <img class="img-responsive" alt="" src="images/agents/agent-icon-10.png"></a>
                                    </div>
                                    <div class="pgl-agent-info">
                                        
                                        <h4><a href="agentprofile.html">Shivam</a></h4>
                                        <address>
                                            <i class="fa fa-map-marker"></i> Office : 1-800-666-8888<br>
                                            <i class="fa fa-phone"></i> Mobile : 0800-666-6666<br>
                                            <i class="fa fa-fax"></i> Fax : 1-800-666-8888<br>
                                            <i class="fa fa-envelope-o"></i> Mail: <a href="mailto:sraval07.sr@gmail.com">sraval07.sr@gmail.com</a>
                                        </address>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Our Agents -->

        </div>
</asp:Content>
