<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="Spruce.Admin.UserDetails" %>

<!doctype html>
<html lang="en">
<head runat="server">
    <title>Admin | Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
    <link rel="stylesheet" href="Assets/css/style.css">
    <link rel="stylesheet" href="Assets/css/side-bar.css">
</head>
<body>

    <form id="form1" runat="server">
        <div class="wrapper d-flex align-items-stretch">
            <nav id="sidebar">
                <div class="custom-menu">
                    <button type="button" id="sidebarCollapse" class="btn btn-primary">
                        <i class="fa fa-bars"></i>
                        <span class="sr-only">Toggle Menu</span>
                    </button>
                </div>
                <div class="p-4">
                    <h1><a href="admin.html" class="logo">Spruce <span>Custom Design Shirt</span></a></h1>
                    <ul class="list-unstyled components mb-5">
                        <li class="">
                            <a href="Admin.aspx"><span class="fa fa-home mr-3"></span>Home</a>
                        </li>
                        <li>
                            <a href="AllProducts.aspx"><span class="fa fa-shopping-cart mr-3"></span>All Products</a>
                        </li>
                        <li class="">
                            <a href="CustomShirtOrders.aspx"><span class="fa fa-shopping-cart mr-3"></span>Custom Shirt Orders</a>
                        </li>
                        <li class="">
                            <a href="Orders.aspx" class="newOrders"><span class="fa fa-shopping-cart mr-3"></span>Product Orders <span class="Count"></span></a>
                        </li>
                        <li>
                            <a href="Upload.aspx"><span class="fa fa-shopping-cart mr-3"></span>Upload Products Or Fabrics</a>
                        </li>
                        <li>
                            <a href="Users.aspx"><span class="fa fa-user mr-3"></span>Users</a>
                        </li>
                        <li>
                            <a href="NewsLetter.aspx"><span class="fa fa-user mr-3"></span>NewsLetter Subscriptions</a>
                        </li>
                        <li>
                            <a href="Feedbacks.aspx"><span class="fa fa-user mr-3"></span>Feed Back</a>
                        </li>
                    </ul>
                </div>
            </nav>
            <!-- Page Content  -->
            <div id="content" class="p-4 p-md-5 pt-5">
                <div class="container-fluid">
                    <div class="heading">
                        <h1><b>User Details</b></h1>
                    </div>
                    <div class="table-responsive">

                        <table class="table table-bordered table-hover">

                            <tr>
                                <th>Name</th>
                                <td>
                                    <asp:Label ID="UsernameLabel" runat="server" Text="Label"></asp:Label></td>
                            </tr>
                            <tr>
                                <th>Email</th>
                                <td>
                                    <asp:Label ID="EmailLabel" runat="server" Text="Label"></asp:Label>
                                /td>
                            </tr>
                            <tr>
                                <th>Phone No</th>
                                <td>
                                    <asp:Label ID="PhoneLabel" runat="server" Text="Label"></asp:Label></td>
                            </tr>
                            <tr>
                                <th>Password</th>
                                <td>
                                    <asp:Label ID="PasswordLabel" runat="server" Text="Label"></asp:Label></td>
                            </tr>
                            <tr>
                                <th>Address</th>
                                <td>
                                    <asp:Label ID="AddressLabel" runat="server" Text="Label"></asp:Label></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/maphilight/1.4.0/jquery.maphilight.min.js"></script>
        <script src="Assets/js/script.js"></script>
        <asp:HiddenField ID="NewOrderHiddenField" runat="server" />
        <asp:HiddenField ID="CustomOrderHiddenField" runat="server" />
        <asp:HiddenField ID="GetHiddenField" runat="server" />
        <script>
            var getNewOrders = $('#<%=GetHiddenField.ClientID%>').val();
            var div = getNewOrders.split(",");
            $(document).ready(function () {
                var Count = 0;
                $(".GetOrders").each(function () {
                    $(this).text(div[Count]);
                    Count++;
                });
            });
        </script>
        <script>
            $(document).ready(function () {
                var getNewOrders = parseInt($('#<%=NewOrderHiddenField.ClientID%>').val());
                if (getNewOrders > 0) {
                    var getValue = $(".Count").text();
                    var newVal = getValue.concat("(" + getNewOrders + ")");
                    $(".Count").text(newVal);
                }

            });

            var getCustomNewOrders = parseInt($('#<%=CustomOrderHiddenField.ClientID%>').val());
            if (getCustomNewOrders > 0) {
                var getValue = $(".Counts").text();
                var newVal = getValue.concat("(" + getCustomNewOrders + ")");
                $(".Counts").text(newVal);
            }
        </script>
    </form>
</body>
</html>
