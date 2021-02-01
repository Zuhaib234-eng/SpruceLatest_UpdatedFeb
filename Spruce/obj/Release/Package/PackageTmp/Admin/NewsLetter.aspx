﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewsLetter.aspx.cs" Inherits="Spruce.Admin.NewsLetter" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin | Home</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css" />
    <link rel="stylesheet" href="Assets/css/datepicker-bs4.css" />
    <link rel="stylesheet" href="Assets/css/owl.carousel.css" />
    <link rel="stylesheet" href="Assets/css/style.css" />
    <link rel="stylesheet" href="Assets/css/side-bar.css" />
</head>
<body>
    <form runat="server" id="form1">
        <div class="wrapper d-flex align-items-stretch">
            <nav id="sidebar">
                <div class="custom-menu">
                    <button
                        type="button"
                        id="sidebarCollapse"
                        class="btn btn-primary">
                        <i class="fa fa-bars"></i>
                        <span class="sr-only">Toggle Menu</span>
                    </button>
                </div>
                <div class="p-4">
                    <h1>
                        <a href="admin.aspx" class="logo">Spruce <span>Custom Design Shirt</span></a>
                    </h1>
                    <ul class="list-unstyled components mb-5">
                        <li class="">
                            <a href="admin.aspx"><span class="fa fa-home mr-3"></span>Home</a>
                        </li>
                        <li>
                            <a href="AllProducts.aspx"><span class="fa fa-shopping-cart mr-3"></span>All
                        Products</a>
                        </li>
                        <li class="">
                            <a href="CustomShirtOrders.aspx"><span class="fa fa-shopping-cart mr-3"></span>Custom Shirt Orders<span class="Counts"></span></a>
                        </li>
                        <li class="">
                            <a href="Orders.aspx" class="newOrders"><span class="fa fa-shopping-cart mr-3"></span>Product Orders <span class="Count"></span></a>
                        </li>
                        <li>
                            <a href="Upload.aspx"><span class="fa fa-shopping-cart mr-3"></span>Upload
                        Products Or Fabrics</a>
                        </li>
                        <li>
                            <a href="Users.aspx"><span class="fa fa-user mr-3"></span>Users</a>
                        </li>
                        <li class="active">
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
                        <h1><b>NewsLetter Subscriptions</b></h1>
                    </div>
                    <div class="col-12 px-0">
                        <h4><b>Send Message</b></h4>
                        <div class="form-group">
                            <label for="">Enter Message</label>
                            <textarea
                                name=""
                                id=""
                                rows="4"
                                class="form-control"></textarea>
                        </div>
                        <div class="text-right mb-4">
                            <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Send" />
                        </div>
                    </div>
                    <h4><b>All Subscriptions Email</b></h4>
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th width="50">S.NO</th>
                                    <th>Email</th>
                                </tr>
                            </thead>
                            <tbody>

                                <asp:Repeater ID="EmailsRepeater" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Container.ItemIndex+1 %></td>
                                            <td><%#Eval("Email") %></td>
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
        <asp:HiddenField ID="CustomOrderHiddenField" runat="server" />
    </form>
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="Assets/js/owl.carousel.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/maphilight/1.4.0/jquery.maphilight.min.js"></script>
    <script src="Assets/js/datepicker-full.js"></script>
    <script src="Assets/js/script.js"></script>

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
