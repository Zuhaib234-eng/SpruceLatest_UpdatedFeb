<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderDetail.aspx.cs" Inherits="Spruce.Admin.OrderDetail" %>

<!doctype html>
<html lang="en">

<head>
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
                        <li class="active">
                            <a href="Orders.aspx"><span class="fa fa-shopping-cart mr-3"></span>Product Orders</a>
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
                <asp:HiddenField ID="NewOrderHiddenField" runat="server" />
            </nav>
            <!-- Page Content  -->
            <div id="content" class="p-0 p-md-5 pt-5">
                <div class="container-fluid">
                    <h1><strong>Product Order Details</strong></h1>
                    <div class="adminPanelContent">
                        <div class="row m-0 mt-5">
                            <div class="col-lg-8 p-0 p-md-2">
                                <div class="box">
                                    <h2>Order Details</h2>
                                    <p>Payment via cash on delivery</p>
                                    <div class="row m-0">
                                        <div class="col-md-4">
                                            <h5>General</h5>
                                            <div class="form-group">
                                                <label for="">Date Created:</label>
                                                <p>
                                                    <asp:Label ID="OrderDateLabel" runat="server" Text="Label"></asp:Label>
                                                </p>
                                            </div>
                                            <div class="form-group">
                                                <label for="">Status</label>
                                                <asp:DropDownList runat="server" CssClass="form-control" ID="StatusChangeDropdownList">
                                                    <asp:ListItem Text="Pending">Pending</asp:ListItem>
                                                    <asp:ListItem Text="Completed">Completed</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="form-group">
                                                <label for="">Customer Profile</label>
                                                <div>
                                                    <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" runat="server">View Profile</asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <h5>Billing</h5>
                                            <div class="form-group">
                                                <label>Customer Name:</label>
                                                <p class="m-0">
                                                    <asp:Label ID="CustomernameLabel" runat="server"></asp:Label>
                                                </p>
                                            </div>
                                            <div class="form-group">
                                                <label>Customer Email</label>
                                                <p class="m-0">
                                                    <a href="https://www.gmail.com/">
                                                        <asp:Label ID="CustomerEmailLabel" runat="server"></asp:Label></a>
                                                </p>
                                            </div>
                                            <div class="form-group">
                                                <label>Customer Phone No</label>
                                                <p class="m-0">
                                                    <a href="">
                                                        <asp:Label ID="CustomerPhoneNoLabel" runat="server"></asp:Label></a>
                                                </p>
                                            </div>
                                            <div class="form-group">
                                                <label>Customer Address</label>
                                                <p>
                                                    <asp:Label ID="CustomerAddressLabel" runat="server"></asp:Label>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="text-right">
                                        <asp:Button ID="UpdateButton" OnClick="UpdateButton_Click" CssClass="btn btn-primary" runat="server" Text="Update" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 mt-lg-0 mt-5 p-0 p-md-2">
                                <div class="box">
                                    <h4>Send Mail To Customer</h4>
                                    <div class="form-group">
                                        <label for="">Enter Subject</label>
                                        <asp:TextBox runat="server" ID="SubjectTextbox" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="">Enter Message</label>
                                        <asp:TextBox runat="server" TextMode="MultiLine" ID="MessageTextbox" Rows="6" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group text-right">
                                        <asp:Button Text="Send" OnClick="SendToCustomerBtn_Click" CssClass="btn btn-primary" ID="SendToCustomerBtn" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 mt-5 p-0 p-md-2 pb-2">
                                <div class="box">
                                    <h4>Items List</h4>
                                    <div class="table-responsive">
                                        <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th>S.No</th>
                                                    <th>Item Image</th>
                                                    <th>Item Name</th>
                                                    <th>Cost</th>
                                                    <th>Qty</th>
                                                    <th>Total</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <asp:Repeater ID="OrderRepeater" OnItemCommand="OrderRepeater_ItemCommand" runat="server">
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td><%#Container.ItemIndex + 1 %></td>
                                                            <td>
                                                                <asp:Image src='<%#Eval("Image") %>' CssClass="img-fluid tbImage" Width="50" ID="OrderImage" runat="server" />
                                                            </td>
                                                            <td>
                                                                <asp:LinkButton runat="server" CommandArgument='<%#Eval("ProductId") %>' ID="ProductLink"><%#Eval("ProductName") %></asp:LinkButton>
                                                            </td>
                                                            <td>PKR <%#Eval("Price") %>
                                                            </td>
                                                            <td><%#Eval("Quantity") %>
                                                            </td>
                                                            <td>PKR <%#Eval("Total")%></td>
                                                        </tr>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </tbody>
                                        </table>
                                        <hr>
                                        <div class="row m-0" style="justify-content: flex-end;">
                                            <div class="text-right col-md-3">
                                                <div class="row m-0 justify-content-between">
                                                    <p><b>Items Total:</b> </p>
                                                    <p>
                                                        Rs
                                                        <asp:Label ID="FullTotalLabel" runat="server"></asp:Label>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
        <script src="Assets/js/owl.carousel.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/maphilight/1.4.0/jquery.maphilight.min.js"></script>
        <script src="Assets/js/script.js"></script>
        <script>
            $(document).ready(function () {
                var getNewOrders = parseInt($('#<%=NewOrderHiddenField.ClientID%>').val());
                console.log(getNewOrders);
                if (getNewOrders > 0) {
                    var getValue = $(".newOrders").text();
                    console.log(getValue);
                    var newVal = getValue.concat("(" + getNewOrders + ")");
                    $(".newOrders").text(newVal);
                }

                //newOrders
            });
        </script>
    </form>
</body>
</html>
