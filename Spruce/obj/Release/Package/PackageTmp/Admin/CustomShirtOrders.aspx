<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomShirtOrders.aspx.cs" Inherits="Spruce.Admin.CustomShirtOrders" %>

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
                        <li>
                            <a href="Admin.aspx"><span class="fa fa-home mr-3"></span>Home</a>
                        </li>
                        <li>
                            <a href="AllProducts.aspx"><span class="fa fa-shopping-cart mr-3"></span>All Products</a>
                        </li>
                        <li class="active">
                            <a href="CustomShirtOrders.aspx"><span class="fa fa-shopping-cart mr-3"></span>Custom Shirt Orders</a>
                        </li>
                        <li>
                            <a href="Orders.aspx"><span class="fa fa-shopping-cart mr-3"></span>Product Orders <span class="Count"></span></a>
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
                        <h1><b>Custom Shirt Order Details</b></h1>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>S.NO</th>
                                    <th>User Name</th>
                                    <th>Order Date</th>
                                    <th>Total</th>
                                    <th>Status</th>
                                    <th>Order Detail</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="CustomOrderRepeater" OnItemCommand="CustomOrderRepeater_ItemCommand" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Container.ItemIndex+1 %></td>
                                            <td><%#Eval("UserName") %></td>
                                            <td><%#Eval("Date") %></td>
                                            <td>PKR <%#Eval("Price") %></td>
                                            <td class="statusclass"><%#Eval("Status") %></td>
                                            <td class="ParentBtn">
                                                <asp:Button ID="Button1" CssClass="btn btn-success" CommandArgument='<%#Eval("Id") %>' runat="server" Text="Check Detail" />
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <asp:HiddenField ID="NewOrderHiddenField" runat="server" />
        <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/maphilight/1.4.0/jquery.maphilight.min.js"></script>
        <script src="js/datepicker-full.js"></script>
        <script src="Assets/js/script.js"></script>
        <script>
            $(document).ready(function () {
                $('.statusclass').each(function () {
                    var getval = $(this).text();
                    if (getval == "False") {
                        $(this).text("Pending");
                        var getSibling = $(this).siblings(".ParentBtn");
                        var getchildrenbutton = getSibling.children(".btn");
                        getchildrenbutton.removeClass("btn-success");
                        getchildrenbutton.addClass("btn-danger");
                    }
                    if (getval == "True") {
                        $(this).text("Delievered");
                    }
                });
            });

    </script>
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

            //newOrders
        });
        </script>
    </form>
</body>
</html>
