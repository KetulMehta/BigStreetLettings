<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.Master" AutoEventWireup="true" CodeBehind="Userupdate.aspx.cs" Inherits="Ext_RealEstate.Client.Userupdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
<div class="container">
	<section id="content">
		<form id="Form1" action="" runat="server">
			<h1>Update Details</h1>
            <div>
                <asp:TextBox ID="username" placeholder="Name" runat="server" ReadOnly="true"></asp:TextBox>
			</div>
            <div>
                <asp:TextBox ID="mobile_no" placeholder="Mobile Number" runat="server"></asp:TextBox>
			</div>
            <div>
                <asp:TextBox ID="email" placeholder="Email" runat="server"></asp:TextBox>
			</div>
			<div>
                <asp:TextBox ID="password" placeholder="Password" type="password" runat="server"></asp:TextBox>
			</div>
            
            <div>
                <asp:TextBox ID="confirmpassword" placeholder="Confirm Password" type="password" runat="server"></asp:TextBox>
			</div>

			<div>
                <asp:Button ID="Update" runat="server" Text="Update"/>
				
			</div>
		</form><!-- form -->
		<!-- button -->
	</section><!-- content -->
</div><!-- container -->
</body>
</asp:Content>
