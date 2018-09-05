<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Country.aspx.cs" Inherits="Ext_RealEstate.Admin.Country" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function userValid() {
            var Name;

            Name = document.getElementById("<%=Text_Country.ClientID %>").value;

              if (Name == '') {
                  alert("Enter Country Name");
                  return false;
              }
              if (!Name.match(/^[a-zA-Z\_\- ]*$/)) {
                  alert("Invalid characters");
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

                        <h4 style="margin:16px 0 0 0">Manage Country</h4>
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
                                <h4 class="panel-title">Add Country</h4>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label class="control-label" style="font-size: large">Country</label>
                                            <asp:TextBox ID="Text_Country" class="form-control" runat="server"></asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ControlToValidate="Text_Country" ID="Text_CountryValidator" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>--%>
                                        </div>
                                        <!-- form-group -->
                                    </div>
                                    <!-- col-sm-6 -->

                                    <div class="col-sm-6">

                                        <!-- form-group -->
                                    </div>
                                    <!-- col-sm-6 -->
                                </div>
                                <!-- row -->

                                <div class="row">
                                    <div class="col-sm-6">

                                        <!-- form-group -->
                                    </div>
                                    <!-- col-sm-6 -->

                                    <div class="col-sm-6">

                                        <!-- form-group -->
                                    </div>
                                    <!-- col-sm-6 -->
                                </div>
                                <!-- row -->
                            </div>
                            <!-- panel-body -->
                            <div class="panel-footer">
                                <asp:Button ID="Submit_Country" class="btn btn-primary" runat="server" Text="Submit" OnClick="Submit_Country_Click1" OnClientClick="return userValid();" />
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

                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    <asp:Repeater ID="Active_Country1" runat="server" OnItemCommand="Active_Country_ItemCommand1">
                                                        <ItemTemplate>
                                                            <tr>

                                                                <td>
                                                                    <%#Eval("CountryName") %>
                                                                </td>
                                                                <td>
                                                                    <%--<asp:LinkButton ID="lnkEdit" Text="Edit" CommandName="Edit" CommandArgument='<%#Eval("CountryId") %>' runat="server">Edit</asp:LinkButton>--%>
                                                                    <asp:LinkButton ID="lnkDelete" Text="Delete" CommandName="Delete" CommandArgument='<%#Eval("CountryId") %>' runat="server">Delete</asp:LinkButton>
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

                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    <asp:Repeater ID="Deactive_Country1" runat="server" OnItemCommand="Deactive_Country_ItemCommand">
                                                        <ItemTemplate>
                                                            <tr>

                                                                <td>
                                                                    <%#Eval("CountryName") %>
                                                                </td>
                                                                <td>
                                                                    <%--<asp:LinkButton ID="lnkEdit" Text="Edit" CommandName="Edit" CommandArgument='<%#Eval("CountryId") %>' runat="server">Edit</asp:LinkButton>--%>
                                                                    <asp:LinkButton ID="lnkDelete" Text="Delete" CommandName="Delete" CommandArgument='<%#Eval("CountryId") %>' runat="server">Delete</asp:LinkButton>
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
                            <!-- panel -->

                        </div>
                        <!-- col-md-6 -->
                    </div>
                    <!-- row -->

                </div>
                <!-- contentpanel -->
            </div>
        </div>
    </form>
</asp:Content>
