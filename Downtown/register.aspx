<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        Registration page<br />
        &nbsp;Username:
        <asp:TextBox ID="username" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="Username Required" ForeColor="Red" ControlToValidate="username"></asp:RequiredFieldValidator>
        &nbsp;<br />
        Password:
        <asp:TextBox ID="password" runat="server" style="margin-left: 0px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Password Required" ForeColor="Red" ControlToValidate="password"></asp:RequiredFieldValidator>
        <br />
        <br />
    
        <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />
    
        <br />
        <br />
        <br />
        <br />
    
        <asp:SqlDataSource ID="Users" runat="server" ConnectionString="<%$ ConnectionStrings:Users %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
