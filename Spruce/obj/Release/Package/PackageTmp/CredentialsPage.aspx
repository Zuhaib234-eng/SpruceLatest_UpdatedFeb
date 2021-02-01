<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CredentialsPage.aspx.cs" Inherits="Spruce.CredentialsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        Old Username :
        <asp:TextBox ID="usernameTextBox" runat="server"></asp:TextBox>
        Old password :
        <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox>

        <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Button" />


        <asp:Panel ID="Panel1" Visible="false" runat="server">
            New user name and password :

           username = <asp:TextBox ID="NewUsernameTextBox" runat="server"></asp:TextBox>
           password = <asp:TextBox ID="NewPasswordTextBox" runat="server"></asp:TextBox>
            <asp:Button ID="UpdateButton" OnClick="UpdateButton_Click" runat="server" Text="Update" />
        </asp:Panel>
    </form>
</body>
</html>
