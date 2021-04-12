<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ValidationControls.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title></title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
       <div class="jumbotron">
  <h1> Register New User</h1>
  <p>Please Enter values of New User</p>
</div>
        <div>
        <table class="table table-bordered table-hover">
        <tr>
            <td style="width:30%; font-size:x-large;">Please Enter your name</td>
            <td  style="width:30%;">
                <asp:TextBox ID="txtUserName" CssClass="form-control" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" EnableClientScript="False" ErrorMessage="Name is missing" Font-Size="XX-Large" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width:30%; font-size:x-large;">Please Enter your Password</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" EnableClientScript="False" ErrorMessage="Password is missing" Font-Size="XX-Large" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width:30%; font-size:x-large;"> 
                Please confirm your password
            </td>
            <td>
                <asp:TextBox ID="txtConfirmPassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtConfirmPassword" EnableClientScript="False" ErrorMessage="Confirm your password" Font-Size="XX-Large" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" EnableClientScript="False" ErrorMessage="Passwords are different" Font-Size="XX-Large" ForeColor="#CC0000">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>Please enter age of your child</td>
            <td>
                <asp:TextBox ID="txtAge" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" EnableClientScript="False" ErrorMessage="Age is not valid" Font-Size="XX-Large" ForeColor="#CC0000" MaximumValue="8" MinimumValue="4" SetFocusOnError="True">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>Please Enter your email </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" EnableClientScript="False" ErrorMessage="Email is not valid" Font-Size="XX-Large" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Enter your CNIC</td>
            <td>
                <asp:TextBox ID="txtCNIC" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCNIC" EnableClientScript="False" ErrorMessage="CNIC is not valid" Font-Size="XX-Large" ForeColor="#CC0000" ValidationExpression="\d(5)-\d(7)-\d(1)">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td> <asp:Button ID="btnRegister" CssClass="btn btn-primary btn-lg" runat="server" Text="Register New User" OnClick="btnRegister_Click" /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="XX-Large" ForeColor="#CC0000" />
            </td>
        </tr>
    </table>
  </div>
</form>
</body>
</html>
