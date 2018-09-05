<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Ext_RealEstate.Admin._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

            <div class="mainpanel">
                <div class="pageheader">
                    <div class="media">
                        <div class="pageicon pull-left">
                            <i class="fa fa-home"></i>
                        </div>
                        <div class="media-body">
                           <%-- <ul class="breadcrumb">
                                <li><a href="#"><i class="glyphicon glyphicon-home"></i></a></li>
                                <li>Dashboard</li>
                            </ul>--%>
                             <h4 style="margin: 16px 0 0 0">Home Page</h4>
                        </div>
                    </div>
                    <!-- media -->
                </div>
                <!-- pageheader -->

                <div class="contentpanel">
<h2 style="text-align:center">Trending Now!!!</h2><br />
                    
                   
                    <%--<p style="font-family:Arial; font-size:larger"><br /> The admin page gives the control from the administration side to store data and information about various property titles along with the property details and specifications.<br/> <br/> It also maintains the database of the admin's information like the admin's personal details along with property details.</p>--%>

                    <img src="images/newprop1.jpg" height="300"  width="525"/>
                    <img src="images/newprop2.jpg" height="300"  width="525" /><br />
                    <br />
                    <img src="images/newprop3.jpg" height="300"  width="525"/>
                    <img src="images/newprop4.jpg" height="300"  width="525" />
                    <!-- row -->

                </div>
                <!-- contentpanel -->

            </div>
            <!-- mainpanel -->
       
</asp:Content>
