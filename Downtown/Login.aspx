<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<link rel="stylesheet" href="style.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            background-color: #66FF66;
        }
    </style>
</head>
<body>
    
        <div>
    <p class="auto-style1">Please provide proper login information




    </p>
            <form id="Form1" runat="server">
                <div class="auto-style1">
            Username:
                    <asp:TextBox ID="un" runat="server"></asp:TextBox>
                    <br />
            Password: 
                    <asp:TextBox ID="pw" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="login" runat="server" Text="Login" OnClick="login_Click1" />
                    <br />
                    <br />
                </div>
            </form>
    </div>

</body>
</html>
