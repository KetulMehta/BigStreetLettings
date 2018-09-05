<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="PropertyMain.aspx.cs" Inherits="Ext_RealEstate.Admin.PropertyMain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <%-- <script>
         function userValidproperty() {
             var address1;
             var address2;
             var propertyspecification;
             var sqft;
             var ratesqft;
             address1 = document.getElementById("<%=Property_addressline1.ClientID %>").value;
             address2 = document.getElementById("<%=Property_addressline2.ClientID %>").value;
             propertyspecification = document.getElementById("<%=Textbox_PropSpec.ClientID %>").value;
             sqft = document.getElementById("<%=Textbox_totsqft.ClientID %>").value;
             ratesqft = document.getElementById("<%=Textbox_rtsqft.ClientID %>").value;

             if (address1 || address2 == '') {
                 alert("Entry Required");
                 return false;
             }
             return true;
         }
              </script>--%>

           <%--  //if (!address1.match(/^[a-zA-Z0-9\_\- ]*$/) || !address2.match(/^[a-zA-Z0-9\_\- ]*$/) ) {
             //    alert("Invalid Data Entry");
             //    return false;
             //}

             //if (!sqft.match('^[0-9]*$') || !ratesqft.match('^[0-9]*$')) {
             //    alert("Invalid Numeric Entries");
             //    return false;
             //}--%>
            
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form id="form1" runat="server">
        <div class="mainpanel">
            <div class="pageheader">
                <div class="media">
                    <div class="pageicon pull-left">
                        <i class="fa fa-home fa-10x"></i>
                    </div>
                <div class="media-body">
                    <h4 style="margin: 16px 0 0 0">Manage Property</h4>
                </div>
                </div>
                <!-- media -->
            </div>
            <div class="contentpanel">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="panel-btns">
                                    <a href="#" class="panel-minimize tooltips" data-toggle="tooltip" title="Minimize Panel"><i class="fa fa-minus"></i></a>
                                    <a href="#" class="panel-close tooltips" data-toggle="tooltip" title="Close Panel"><i class="fa fa-times"></i></a>
                                </div>
                                <!-- panel-btns -->
                                <h4 class="panel-title">Add Property Details</h4>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label class="control-label">Property Type Details</label>
                                            <asp:DropDownList ID="PropertyType_Dropdown" class="form-control" runat="server" AutoPostBack="true">
                                                <asp:ListItem Value="">Select Property Type</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <!-- form-group -->

                                    </div>
                                </div>
                                <!-- col-sm-6 -->

                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="control-label">Country</label>
                                            <asp:DropDownList ID="PropertyCountry" class="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="PropertyCountry_SelectedIndexChanged">
                                                <asp:ListItem Value="">Select Country</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <!-- form-group -->
                                    </div>
                                    <!-- col-sm-6 -->


                                    <!-- row -->

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="control-label">State</label>
                                            <asp:DropDownList ID="PropertyState" class="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="PropertyState_SelectedIndexChanged1">
                                                <asp:ListItem Value="">---Select State---</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <!-- form-group -->
                                    </div>
                                    <!-- col-sm-6 -->
                                </div>


                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label class="control-label">City</label></br>
                                        <asp:DropDownList ID="PropertyCity" class="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="PropertyCity_SelectedIndexChanged">
                                            <asp:ListItem Value="">---Select City---</asp:ListItem>
                                        </asp:DropDownList>
                                        </div>
                                        <!-- form-group -->
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label class="control-label">Address Line 1</label>
                                            <asp:TextBox ID="Property_addressline1" class="form-control" runat="server"></asp:TextBox>
                                        </div>
                                        <!-- form-group -->
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label class="control-label">Address Line 2</label>
                                            <asp:TextBox ID="Property_addressline2" class="form-control" runat="server"></asp:TextBox>
                                        </div>
                                        <!-- form-group -->
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label class="control-label">Area</label>
                                            <asp:DropDownList ID="PropertyArea" class="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="PropertyArea_SelectedIndexChanged">
                                                <asp:ListItem Value="">---Select Area---</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <!-- form-group -->
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label class="control-label">Rate/Sq.Ft</label>
                                            <asp:TextBox ID="Textbox_rtsqft" class="form-control" placeholder="Numeric Entry" runat="server"></asp:TextBox>
                                        </div>
                                        <!-- form-group -->
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label class="control-label">Total Sq.Ft</label>
                                            <asp:TextBox ID="Textbox_totsqft" class="form-control" placeholder="Numeric Entry" runat="server" OnTextChanged="Textbox_totsqft_TextChanged" AutoPostBack="true"></asp:TextBox>
                                        </div>
                                        <!-- form-group -->
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label class="control-label">Total Rate</label>
                                            <asp:TextBox ID="Textbox_totrate" class="form-control" runat="server"></asp:TextBox>
                                        </div>
                                        <!-- form-group -->
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label class="control-label">Property Specification</label>
                                            <asp:TextBox ID="Textbox_PropSpec" class="form-control" runat="server"></asp:TextBox>
                                        </div>
                                        <!-- form-group -->
                                    </div>
                                </div>

                                <div class="col-sm-6">
                                    <!-- form-group -->
                                </div>
                                <!-- col-sm-6 -->
                            </div>
                            <!-- row -->
                        
                        <!-- panel-body -->
                        <div class="panel-footer">
                            <asp:Button ID="PropertyDetails_Submit" class="btn btn-primary" runat="server" Text="Submit" OnClick="PropertyDetails_Submit_Click1" OnClientClick="return userValidproperty();" />
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
