<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.Master" AutoEventWireup="true" CodeBehind="agentsprofile.aspx.cs" Inherits="Ext_RealEstate.Client.agentsprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div role="main" class="main pgl-bg-grey">
        <!-- Begin page top -->
        <section class="page-top">
            <div class="container">
                <div class="page-top-in">
                    <h2><span>Agent Profile</span></h2>
                </div>
            </div>
        </section>
        <!-- End page top -->

        <!-- Begin Featured Agents -->
        <section class="pgl-agents">
            <div class="container">
                <h2>Agent Profile</h2>
                <div class="agent-profile">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="pgl-agent-item pgl-bg-light">
                                <div class="row pgl-midnarrow-row">
                                    <div class="col-xs-3">
                                        <div class="img-thumbnail-medium">
                                            <a href="agentsprofile.aspx">
                                                <img src="images/IMG_8655.JPG"  height="200px"  width="259px" alt="" /></a>
                                                <%--<img src="images/agents/agent-icon-10.png" class="img-responsive" alt=""></a>--%>
                                        </div>
                                    </div>
                                    <div class="col-xs-9">
                                        <div class="pgl-agent-info">
                                            
                                            <h4><a href="agentsprofile.aspx">Preet Parikh</a></h4>
                                            <address>
                                                <i class="fa fa-map-marker"></i> Office : +91-9974245531<br>
                                                <i class="fa fa-phone"></i> Mobile : +91-8866447925<br>
                                                <i class="fa fa-fax"></i> Fax : +91-25638254<br>
                                                <i class="fa fa-envelope-o"></i> Mail: <a href="mailto:ketulmehta432@yahoo.com">preeparikh8@yahoo.com</a>
                                            </address>
                                            <p>Made more than 100 dealings. Great Experience. Trustworthy.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="agent-profile">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="pgl-agent-item pgl-bg-light">
                                <div class="row pgl-midnarrow-row">
                                    <div class="col-xs-3">
                                        <div class="img-thumbnail-medium">
                                            <a href="agentsprofile.aspx">
                                                <img src="images/IMG_8650.JPG"  height="200px"  width="259px" alt="" /></a>
                                                <%--<img src="images/agents/agent-icon-10.png" class="img-responsive" alt=""></a>--%>
                                        </div>
                                    </div>
                                    <div class="col-xs-9">
                                        <div class="pgl-agent-info">
                                            
                                            <h4><a href="agentsprofile.aspx">Ketul Mehta</a></h4>
                                            <address>
                                                <i class="fa fa-map-marker"></i> Office : +91-9825056656<br>
                                                <i class="fa fa-phone"></i> Mobile : +91-9898989855<br>
                                                <i class="fa fa-fax"></i> Fax : +91-25638254<br>
                                                <i class="fa fa-envelope-o"></i> Mail: <a href="mailto:ketulmehta432@yahoo.com">ketulmehta432@yahoo.com</a>
                                            </address>
                                            <p>Made more than 100 dealings. Great Experience. Trustworthy.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Featured Agents -->

                <!-- Begin Our Agents -->
                <section class="pgl-properties">
                    <h2>Agent's Properties</h2>
                    <div class="properties-full">
                        <div class="row">
                            <div class="col-xs-6 col-md-3 animation">
                                <div class="pgl-property">
                                    <div class="property-thumb-info">
                                        <div class="property-thumb-info-image">
                                            <img alt="" class="img-responsive" src="images/properties/property-1.jpg">
                                            <span class="property-thumb-info-label">
                                                <span class="label price">$358,000</span>
                                                <span class="label forrent">Rent</span>
                                            </span>
                                        </div>
                                        <div class="property-thumb-info-content">
                                            <h3><a href="property-detail_1.aspx">Poolside character home on a wide 422sqm</a></h3>
                                            <address>Ferris Park, Jersey City Land in Sales</address>
                                        </div>
                                        <div class="amenities clearfix">
                                            <ul class="pull-left">
                                                <li><strong>Area:</strong> 450<sup>m2</sup></li>
                                            </ul>
                                            <ul class="pull-right">
                                                <li><i class="icons icon-bedroom"></i>3</li>
                                                <li><i class="icons icon-bathroom"></i>2</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6 col-md-3 animation">
                                <div class="pgl-property">
                                    <div class="property-thumb-info">
                                        <div class="property-thumb-info-image">
                                            <img alt="" class="img-responsive" src="images/properties/property-2.jpg">
                                            <span class="property-thumb-info-label">
                                                <span class="label price">$358,000</span>
                                            </span>
                                        </div>
                                        <div class="property-thumb-info-content">
                                            <h3><a href="property-detail_2.aspx">Presidential Parcel Frames Command Views</a></h3>
                                            <address>Ferris Park, Jersey City Land in Sales</address>
                                        </div>
                                        <div class="amenities clearfix">
                                            <ul class="pull-left">
                                                <li><strong>Area:</strong> 450<sup>m2</sup></li>
                                            </ul>
                                            <ul class="pull-right">
                                                <li><i class="icons icon-bedroom"></i>3</li>
                                                <li><i class="icons icon-bathroom"></i>2</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6 col-md-3 animation">
                                <div class="pgl-property">
                                    <div class="property-thumb-info">
                                        <div class="property-thumb-info-image">
                                            <img alt="" class="img-responsive" src="images/properties/property-3.jpg">
                                            <span class="property-thumb-info-label">
                                                <span class="label price">$358,000</span>
                                                <span class="label forsold">Sold</span>
                                            </span>
                                        </div>
                                        <div class="property-thumb-info-content">
                                            <h3><a href="property-detail_3.aspx">Californian Class, Grand Family Proportions</a></h3>
                                            <address>Ferris Park, Jersey City Land in Sales</address>
                                        </div>
                                        <div class="amenities clearfix">
                                            <ul class="pull-left">
                                                <li><strong>Area:</strong> 450<sup>m2</sup></li>
                                            </ul>
                                            <ul class="pull-right">
                                                <li><i class="icons icon-bedroom"></i>3</li>
                                                <li><i class="icons icon-bathroom"></i>2</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6 col-md-3 animation">
                                <div class="pgl-property">
                                    <div class="property-thumb-info">
                                        <div class="property-thumb-info-image">
                                            <img alt="" class="img-responsive" src="images/properties/property-3.jpg">
                                            <span class="property-thumb-info-label">
                                                <span class="label price">$358,000</span>
                                                <span class="label forsold">Sold</span>
                                            </span>
                                        </div>
                                        <div class="property-thumb-info-content">
                                            <h3><a href="property-detail_3.aspx">Californian Class, Grand Family Proportions</a></h3>
                                            <address>Ferris Park, Jersey City Land in Sales</address>
                                        </div>
                                        <div class="amenities clearfix">
                                            <ul class="pull-left">
                                                <li><strong>Area:</strong> 450<sup>m2</sup></li>
                                            </ul>
                                            <ul class="pull-right">
                                                <li><i class="icons icon-bedroom"></i>3</li>
                                                <li><i class="icons icon-bathroom"></i>2</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-md-3 animation">
                                <div class="pgl-property">
                                    <div class="property-thumb-info">
                                        <div class="property-thumb-info-image">
                                            <img alt="" class="img-responsive" src="images/properties/property-4.jpg">
                                            <span class="property-thumb-info-label">
                                                <span class="label price">$358,000</span>
                                                <span class="label forrent">Rent</span>
                                            </span>
                                        </div>
                                        <div class="property-thumb-info-content">
                                            <h3><a href="property-detail_4.aspx">Chatham St NW, Roanoke, VA 24012</a></h3>
                                            <address>Ferris Park, Jersey City Land in Sales</address>
                                        </div>
                                        <div class="amenities clearfix">
                                            <ul class="pull-left">
                                                <li><strong>Area:</strong> 450<sup>m2</sup></li>
                                            </ul>
                                            <ul class="pull-right">
                                                <li><i class="icons icon-bedroom"></i>3</li>
                                                <li><i class="icons icon-bathroom"></i>2</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6 col-md-3 animation">
                                <div class="pgl-property">
                                    <div class="property-thumb-info">
                                        <div class="property-thumb-info-image">
                                            <img alt="" class="img-responsive" src="images/properties/property-5.jpg">
                                            <span class="property-thumb-info-label">
                                                <span class="label price">$358,000</span>
                                            </span>
                                        </div>
                                        <div class="property-thumb-info-content">
                                            <h3><a href="property-detail_5.aspx">Chatham St NW, Roanoke, VA 24012</a></h3>
                                            <address>Ferris Park, Jersey City Land in Sales</address>
                                        </div>
                                        <div class="amenities clearfix">
                                            <ul class="pull-left">
                                                <li><strong>Area:</strong> 450<sup>m2</sup></li>
                                            </ul>
                                            <ul class="pull-right">
                                                <li><i class="icons icon-bedroom"></i>3</li>
                                                <li><i class="icons icon-bathroom"></i>2</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6 col-md-3 animation">
                                <div class="pgl-property">
                                    <div class="property-thumb-info">
                                        <div class="property-thumb-info-image">
                                            <img alt="" class="img-responsive" src="images/properties/property-6.jpg">
                                            <span class="property-thumb-info-label">
                                                <span class="label price">$358,000</span>
                                            </span>
                                        </div>
                                        <div class="property-thumb-info-content">
                                            <h3><a href="property-detail_1.aspx">Chatham St NW, Roanoke, VA 24012</a></h3>
                                            <address>Ferris Park, Jersey City Land in Sales</address>
                                        </div>
                                        <div class="amenities clearfix">
                                            <ul class="pull-left">
                                                <li><strong>Area:</strong> 450<sup>m2</sup></li>
                                            </ul>
                                            <ul class="pull-right">
                                                <li><i class="icons icon-bedroom"></i>3</li>
                                                <li><i class="icons icon-bathroom"></i>2</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6 col-md-3 animation">
                                <div class="pgl-property">
                                    <div class="property-thumb-info">
                                        <div class="property-thumb-info-image">
                                            <img alt="" class="img-responsive" src="images/properties/property-4.jpg">
                                            <span class="property-thumb-info-label">
                                                <span class="label price">$358,000</span>
                                                <span class="label forrent">Rent</span>
                                            </span>
                                        </div>
                                        <div class="property-thumb-info-content">
                                            <h3><a href="property-detail.aspx">Chatham St NW, Roanoke, VA 24012</a></h3>
                                            <address>Ferris Park, Jersey City Land in Sales</address>
                                        </div>
                                        <div class="amenities clearfix">
                                            <ul class="pull-left">
                                                <li><strong>Area:</strong> 450<sup>m2</sup></li>
                                            </ul>
                                            <ul class="pull-right">
                                                <li><i class="icons icon-bedroom"></i>3</li>
                                                <li><i class="icons icon-bathroom"></i>2</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <ul class="pagination">
                            <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">Next</a></li>
                        </ul>

                    </div>
            </div>
    </div>
</asp:Content>
