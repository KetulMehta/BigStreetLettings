<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.Master" AutoEventWireup="true" CodeBehind="agentregistration.aspx.cs" Inherits="Ext_RealEstate.Client.agentregistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/style.css" rel="stylesheet" />
    <script type="text/javascript">
        function Validate() {
            var password = document.getElementById("<%=password.ClientID %>").value;
            var confirmPassword = document.getElementById("<%=confirmpassword.ClientID %>").value;

            if (password != confirmPassword) {
                alert("Passwords do not match.");
                return false;
            }

            return true;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
<div class="container">
	<section id="content">
		<form id="Form1" action="" runat="server">
			<h1>Register</h1>
            <div>
                <asp:TextBox ID="username" placeholder="Name" runat="server"></asp:TextBox>
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
                <asp:Button ID="Register" runat="server" Text="Register" OnClick="Register_Click" OnClientClick="return Validate();"/>
				
			</div>
		</form><!-- form -->
		<!-- button -->
	</section><!-- content -->
</div><!-- container -->
</body>
</asp:Content>
