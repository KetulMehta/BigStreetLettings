<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.Master" AutoEventWireup="true" CodeBehind="addproperty.aspx.cs" Inherits="Ext_RealEstate.Client.addproperty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
        <div class="container">
            <section id="content">
                <form id="Form1" action="" runat="server">
                    <h1>Add Property</h1>
                    <div>
                        <asp:TextBox ID="price" placeholder="Price" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:TextBox ID="Property_Name" placeholder="Property Name" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:TextBox ID="address" placeholder="Address" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:TextBox ID="details" placeholder="Property Details" runat="server"></asp:TextBox>
                    </div>

                    <div>
                        <asp:TextBox ID="Area" placeholder="Property Area" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:TextBox ID="bed" placeholder="Bedroom" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:TextBox ID="Bath" placeholder="Bathroom" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <label class="control-label" style="font-size: large">Image</label>
                        <asp:Image ID="Property_Image" runat="server" />
                        <asp:FileUpload ID="FileUpload_Image" runat="server" /><br />
                    </div>
                    <div>
                        <asp:Button ID="Add_Property" runat="server" Text="Add Property" OnClick="Add_Property_Click" />

                    </div>
                </form>
                <!-- form -->
                <!-- button -->
            </section>
            <!-- content -->
        </div>
        <!-- container -->
    </body>
</asp:Content>
