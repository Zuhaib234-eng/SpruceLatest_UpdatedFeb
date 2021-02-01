<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Spruce.User.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #feedbackButton {
            display: none;
        }
    </style>
    <main>
        <div class="container-fluid">
            <div class="row m-0 mt-4">
                <div class="col-md-3">
                    <div class="user__sidebar">
                        <div class="welcome__user">
                            <h5>Welcome Guest</h5>
                        </div>
                        <ul>
                            <li class="user__item"><a class="user__active" href="Dashboard">Dashboard <i class="user__link fa fa-angle-right ml-2"></i></a>
                            </li>
                            <li class="user__item"><a class="user__link" href="CustomShirtOrders">Custom Shirt Orders <i class="fa fa-angle-right ml-2"></i></a></li>
                            <li class="user__item"><a href="ProductOrders">Product Order <i class="fa fa-angle-right ml-2"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-9">
                    <h1><b>Dashboard</b></h1>
                    <div class="text-right">
                        <a href="javascript:void(0)" class="edit__profile__btn">Edit Profile</a>
                    </div>
                    <div class="user__profile mt-5 mb-5">
                        <div class="table-responsive">
                            <table class="table">
                                <tr>
                                    <th>User Name
                                    </th>
                                    <td>
                                        <asp:Label ID="UsernameLabel" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <th>Email</th>
                                    <td>
                                        <asp:Label ID="EmailLabel" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <th>Phone No</th>
                                    <td>
                                        <asp:Label ID="PhoneNoLabel" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <th>Password</th>
                                    <td>
                                        <asp:Label ID="PasswordLabel" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <th>Address</th>
                                    <td>
                                        <asp:Label ID="AddressLabel" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="edit__profile mt-5 mb-5">
                        <div class="table-responsive">
                            <table class="table">
                                <tr>
                                    <th>Username</th>
                                    <td>
                                        <asp:TextBox ID="UsernameChangeTextbox" CssClass="form-control" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Email</th>
                                    <td>
                                        <asp:TextBox ID="EmailChangeTextbox" Enabled="false" CssClass="form-control" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Phone No</th>
                                    <td>
                                        <asp:TextBox runat="server" ID="PhoneNoChangeTextbox" TextMode="Number" CssClass="form-control">
                                        </asp:TextBox></td>
                                </tr>
                                <tr>
                                    <th>Password</th>
                                    <td>
                                        <asp:TextBox runat="server" ID="PasswordChangeTextbox" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Address</th>
                                    <td>
                                        <asp:TextBox runat="server" ID="AddressChangeTextbox" TextMode="MultiLine" Rows="4"
                                            CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="text-right">
                            <asp:Button ID="UpdateButton" OnClick="UpdateButton_Click" runat="server" Text="Update" CssClass="btn btn-main" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <asp:HiddenField ID="MessageHiddenField" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
    <script>
        $(document).ready(function () {
            var value = $('#<%=MessageHiddenField.ClientID%>').val();
            console.log(value);
            var message = document.querySelector('.messageBox h5');
            var messageImg = document.querySelector('.msgImg');
            var succesIcon = 'Assets/Images/succesIcon.jpg';
            var dangerIcon = 'Assets/Images/dangerIcon.png';
            if (value == "success") {
                message.innerHTML = 'Profile updated';
                messageImg.setAttribute('src', succesIcon);
                $('#notificationModal').modal('show');
            }
            $('#<%=MessageHiddenField.ClientID%>').val("");
        });
    </script>
    <script>
        $(".edit__profile").hide();
        $(".edit__profile__btn").click(() => {
            $(".edit__profile").toggle();
            $(".user__profile").toggle();
        })
    </script>
</asp:Content>
