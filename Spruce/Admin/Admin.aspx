<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Spruce.Admin.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin - Spruce</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css" />
    <link rel="stylesheet" href="Assets/css/datepicker-bs4.css" />
    <link rel="stylesheet" href="Assets/css/owl.carousel.css" />
    <link rel="stylesheet" href="Assets/css/style.css" />
    <link rel="stylesheet" href="Assets/css/side-bar.css" />
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
                        <li class="active">
                            <a href="Admin.aspx"><span class="fa fa-home mr-3"></span>Home</a>
                        </li>
                        <li>
                            <a href="AllProducts.aspx"><span class="fa fa-shopping-cart mr-3"></span>All Products</a>
                        </li>
                        <li class="">
                            <a href="CustomShirtOrders.aspx" class="customOrders"><span class="fa fa-shopping-cart mr-3"></span>Custom Shirt Orders<span class="Counts"></span></a>
                        </li>
                        <li>
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
                <div class="container">
                    <h1><strong>Admin Panel</strong></h1>
                    <div class="adminPanelContent">
                        <div class="row m-0 mt-5 align-items-center">
                            <div class="col-md-8 p-0">
                                <div class="row m-0 align-items-center">
                                    <div class="col-md-6">
                                        <div class="box">
                                            <div class="row m-0 align-items-center">
                                                <div class="col-6">
                                                    <h1><b>
                                                        <asp:Label ID="NewOrderLabel" runat="server" Text="Label"></asp:Label></b></h1>
                                                    <h6><b>New Orders</b></h6>
                                                </div>
                                                <div class="col-6">
                                                    <div class="text-right">
                                                        <img src="../Assets/Images/shopping-cart-icon.png" width="100"
                                                            class="img-fluid" alt="" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--  -->
                                    <div class="col-md-6">
                                        <div class="box">
                                            <div class="row m-0 align-items-center">
                                                <div class="col-6">
                                                    <h1><b>
                                                        <asp:Label ID="TotalOrdersLabel" runat="server" Text="Label"></asp:Label></b></h1>
                                                    <h6><b>Total Orders</b></h6>
                                                </div>
                                                <div class="col-6">
                                                    <div class="text-right">
                                                        <img src="../Assets/Images/shopping-cart-icon.png" width="100"
                                                            class="img-fluid" alt="" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 mt-4">
                                        <div class="box">
                                            <div class="row m-0 align-items-center">
                                                <div class="col-6">
                                                    <h1><b>
                                                        <asp:Label ID="StockAvailableLabel" runat="server" Text="Label"></asp:Label></b></h1>
                                                    <h6><b>Stock Available</b></h6>
                                                </div>
                                                <div class="col-6">
                                                    <div class="text-right">
                                                        <img src="../Assets/Images/shopping-cart-icon.png" width="100"
                                                            class="img-fluid" alt="" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="box">
                                    <div class="row m-0 align-items-center">
                                        <div class="col-12">
                                            <div class="text-right">
                                                <img src="../Assets/Images/user_add.png"
                                                    class="img-fluid" alt="" />
                                            </div>
                                        </div>

                                        <div class="col-12">
                                            <h1><b>
                                                <asp:Label ID="TotalUsersLabel" runat="server" Text="Label"></asp:Label></b></h1>
                                            <h6><b>Total Users</b></h6>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <asp:HiddenField ID="NewOrderHiddenField" runat="server" />
        <asp:HiddenField ID="CustomOrderHiddenField" runat="server" />
        <!-- Scripts -->
        <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
        <script src="Assets/js/owl.carousel.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/maphilight/1.4.0/jquery.maphilight.min.js"></script>
        <script src="Assets/js/datepicker-full.js"></script>
        <script src="Assets/js/script.js"></script>
    </form>
    <script>
        $(document).ready(function () {
            var getNewOrders = parseInt($('#<%=NewOrderHiddenField.ClientID%>').val());
            console.log(getNewOrders);
            if (getNewOrders > 0) {
                var getValue = $(".Count").text();
                console.log(getValue);
                var newVal = getValue.concat("(" + getNewOrders + ")");
                $(".Count").text(newVal);
            }


            var getCustomNewOrders = parseInt($('#<%=CustomOrderHiddenField.ClientID%>').val());
            console.log(getNewOrders);
            if (getCustomNewOrders > 0) {
                var getValue = $(".Counts").text();
                console.log(getValue);
                var newVal = getValue.concat("(" + getCustomNewOrders + ")");
                $(".Counts").text(newVal);
            }
        });
    </script>
</body>
</html>
