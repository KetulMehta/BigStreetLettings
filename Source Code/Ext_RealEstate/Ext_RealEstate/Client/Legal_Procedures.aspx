<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.Master" AutoEventWireup="true" CodeBehind="Legal_Procedures.aspx.cs" Inherits="Ext_RealEstate.Client.Legal_Procedures" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!-- Begin page top -->
    <section class="page-top">
        <div class="container">
            <div class="page-top-in">
                <h2><span>Legal Advisors</span></h2>
            </div>
        </div>
    </section>
    <!-- End page top -->

    <!-- Begin Featured Agents -->
    <section class="pgl-agents">
        <div class="container">
            <h2>Advisor Profile</h2>
            <div class="agent-profile">
                <div class="row">
                    <div class="col-md-12">
                        <div class="pgl-agent-item pgl-bg-light">
                            <div class="row pgl-midnarrow-row">
                                <div class="col-xs-3">
                                    <div class="img-thumbnail-medium">
                                        <a href="agentprofile.html">
                                            <img src="images/agents/agent-icon-10.png" class="img-responsive" alt=""></a>
                                    </div>
                                </div>
                                <div class="col-xs-9">
                                    <div class="pgl-agent-info">
                                        <small>NO.1</small>
                                        <h4><a href="agentprofile.html">Honey Modi</a></h4>
                                        <address>
                                            <i class="fa fa-map-marker"></i>Office : +91-9825056656<br>
                                            <i class="fa fa-phone"></i>Mobile : +91-9898989855<br>
                                            <i class="fa fa-fax"></i>Fax : +91-25638254<br>
                                            <i class="fa fa-envelope-o"></i>Mail: <a href="mailto:honey123@yahoo.com">honey123@yahoo.com</a>
                                        </address>
                                        <p>Serves as legal advisor on all major real estate and business transactions. Great Experience. Trustworthy.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Featured Agents -->
</asp:Content>
