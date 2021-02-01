<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExcepionHandeling.aspx.cs" Inherits="Spruce.ExcepionHandeling" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           Username : <asp:TextBox ID="UsernameTextBox" runat="server"></asp:TextBox>
           Password : <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Button" />
        </div>
        <asp:Panel ID="Panel1" Visible="false" runat="server">
            <div>
                <asp:CheckBox ID="CheckBox1" runat="server" />
                <asp:Button ID="Button2" OnClick="Button2_Click" runat="server" Text="Check to block website" />
            </div>
        </asp:Panel>
    </form>
</body>
</html>
