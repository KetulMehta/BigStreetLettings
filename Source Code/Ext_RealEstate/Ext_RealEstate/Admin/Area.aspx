<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Area.aspx.cs" Inherits="Ext_RealEstate.Admin.Area" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script>
         function userValidarea() {
             var Name;
             var pinval;
             Name = document.getElementById("<%=Text_Area.ClientID %>").value;
             pinval = document.getElementById("<%=Text_PinCode.ClientID %>").value;
             if (pinval == '') {
                 alert("Entry Required");
                 return false;
             }

             if (!Name.match(/^[a-zA-Z]+$/)) {
                 alert("Invalid Area Name");
                 return false;
             }

             if (!pinval.match('^[0-9]*$') ){
                 alert("Invalid Pincode");
                 return false;
             }
             return true;
         }
         
              </script>

  

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="mainpanel">
            <div class="pageheader">
                <div class="media">
                    <div class="pageicon pull-left">
                        <i class="fa fa-map-marker fa-10x"></i>
                    </div>
                    <div class="media-body">

                        <h4 style="margin: 16px 0 0 0">Manage Area</h4>
                    </div>
                </div>
                <!-- media -->
            </div>
            <!-- pageheader -->

            <div class="contentpanel">


                <!-- panel -->


                <!-- row -->

                <div class="row">

                    <!-- col-md-6 -->

                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="panel-btns">
                                    <a href="#" class="panel-minimize tooltips" data-toggle="tooltip" title="Minimize Panel"><i class="fa fa-minus"></i></a>
                                    <a href="#" class="panel-close tooltips" data-toggle="tooltip" title="Close Panel"><i class="fa fa-times"></i></a>
                                </div>
                                <!-- panel-btns -->
                                <h4 class="panel-title">Add Area</h4>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="control-label">Country</label>
                                            <asp:DropDownList ID="Country_Dropdown" class="form-control" runat="server" Width="485px" Height="40px" AutoPostBack="true" OnSelectedIndexChanged="Country_Dropdown_SelectedIndexChanged">
                                                <asp:ListItem Value="">Select Country</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <!-- form-group -->
                                    </div>
                                    <!-- col-sm-6 -->

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="control-label">State</label>
                                            <asp:DropDownList ID="State_Dropdown" class="form-control" runat="server" Width="485px" Height="40px" AutoPostBack="true" OnSelectedIndexChanged="State_Dropdown_SelectedIndexChanged">
                                                <asp:ListItem Value="">Select State</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <!-- form-group -->
                                    </div>
                                    <!-- col-sm-6 -->
                                </div>
                                <!-- row -->
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="control-label">City</label>
                                            <asp:DropDownList ID="City_Dropdown" class="form-control" runat="server" Width="485px" Height="40px">
                                                <asp:ListItem Value="">---Select City---</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <!-- form-group -->
                                    </div>
                                    <!-- col-sm-6 -->


                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="control-label">Area</label>
                                            <asp:TextBox ID="Text_Area" class="form-control" placeholder="Enter Area" runat="server" Width="485px" Height="40px"></asp:TextBox>
                                        </div>
                                        <!-- form-group -->
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="control-label">Pincode</label>
                                            <asp:TextBox ID="Text_PinCode" class="form-control" placeholder="Enter Pincode" runat="server" Width="485px" Height="40px" onkeypress="NameValidation(this)"></asp:TextBox>
                                        </div>
                                        <!-- form-group -->
                                    </div>
                                    <!-- col-sm-6 -->
                                </div>
                                <div class="col-sm-6">

                                    <!-- form-group -->
                                </div>
                                <!-- col-sm-6 -->
                            </div>
                            <!-- row -->
                        </div>
                        <!-- panel-body -->
                        <div class="panel-footer">
                            <asp:Button ID="Area_Submit" class="btn btn-primary" runat="server" Text="Submit" OnClick="Area_Submit_Click" OnClientClick="return userValidarea();" />
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs nav-primary">
                                    <li class="active"><a href="#home4" data-toggle="tab"><strong>Active Records</strong></a></li>
                                    <li><a href="#profile4" data-toggle="tab"><strong>Inactive Records</strong></a></li>
                                </ul>

                                <!-- Tab panes -->
                                <div class="tab-content tab-content-primary mb30">
                                    <div class="tab-pane active" id="home4">
                                        <h4 class="nomargin"></h4>
                                        <table id="basicTable" class="table table-striped table-bordered responsive">
                                            <thead class="">
                                                <tr>
                                                    <th>Country</th>
                                                    <th>State</th>
                                                    <th>City</th>
                                                    <th>Area</th>
                                                    <th>PinCode</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <asp:Repeater ID="Active_Area" runat="server" OnItemCommand="Active_Area_ItemCommand">
                                                    <ItemTemplate>
                                                        <tr>

                                                            <td>
                                                                <%#Eval("CountryName") %>
                                                            </td>

                                                            <td>
                                                                <%#Eval("StateName") %>
                                                            </td>

                                                            <td>
                                                                <%#Eval("CityName") %>
                                                            </td>
                                                            <td>
                                                                <%#Eval("AreaTitle") %>
                                                            </td>
                                                            <td>
                                                                <%#Eval("PinCode") %>
                                                            </td>
                                                            <td>
                                                                <%--<asp:LinkButton ID="lnkEdit" Text="Edit" CommandName="Edit" CommandArgument='<%#Eval("CountryId") %>' runat="server">Edit</asp:LinkButton>--%>
                                                                <asp:LinkButton ID="lnkDelete" Text="Delete" CommandName="Delete" CommandArgument='<%#Eval("AreaId") %>' runat="server">Delete</asp:LinkButton>
                                                            </td>
                                                        </tr>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- tab-pane -->

                                    <div class="tab-pane" id="profile4">
                                        <h4 class="nomargin"></h4>
                                        <table id="Table1" class="table table-striped table-bordered responsive">
                                            <thead class="">
                                                <tr>
                                                    <th>Country</th>
                                                    <th>State</th>
                                                    <th>City</th>
                                                    <th>Area</th>
                                                    <th>PinCode</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <asp:Repeater ID="Deactive_Area" runat="server" OnItemCommand="Deactive_Area_ItemCommand">
                                                    <ItemTemplate>
                                                        <tr>

                                                            <td>
                                                                <%#Eval("CountryName") %>
                                                            </td>

                                                            <td>
                                                                <%#Eval("StateName") %>
                                                            </td>

                                                            <td>
                                                                <%#Eval("CityName") %>
                                                            </td>
                                                            <td>
                                                                <%#Eval("AreaTitle") %>
                                                            </td>
                                                            <td>
                                                                <%#Eval("PinCode") %>
                                                            </td>


                                                            <td>
                                                                <%--<asp:LinkButton ID="lnkEdit" Text="Edit" CommandName="Edit" CommandArgument='<%#Eval("CountryId") %>' runat="server">Edit</asp:LinkButton>--%>
                                                                <asp:LinkButton ID="lnkDelete" Text="Delete" CommandName="Delete" CommandArgument='<%#Eval("AreaId") %>' runat="server">Delete</asp:LinkButton>
                                                            </td>
                                                        </tr>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- tab-pane -->

                                </div>
                                <!-- tab-content -->

                            </div>
                            <!-- panel-footer -->
                        </div>
                        <!-- panel-footer -->
                    </div>
                    <!-- panel -->

                </div>
                <!-- col-md-6 -->
            </div>
            <!-- row -->

        </div>
        <!-- contentpanel -->
        </div>
    </form>
</asp:Content>
