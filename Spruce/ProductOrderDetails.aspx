<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductOrderDetails.aspx.cs" Inherits="Spruce.User.ProductOrderDetails" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <div class="container-fluid">
            <div class="row m-0 mt-4">
                <div class="col-md-3">
                    <div class="user__sidebar">
                        <div class="welcome__user">
                            <h5>Welcome Guest</h5>
                        </div>
                        <ul>
                            <li class="user__item"><a class="user__link" href="Dashboard">Dashboard <i class="user__link fa fa-angle-right ml-2"></i></a>
                            </li>
                            <li class="user__item"><a class="user__link" href="CustomShirtOrders">Custom Shirt Orders <i class="fa fa-angle-right ml-2"></i></a></li>
                            <li class="user__item"><a class="user__link user__active" href="ProductOrders">Product Order <i class="fa fa-angle-right ml-2"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-9">
                    <h1><b>Product Order Details</b></h1>
                    <div class="row m-0 mt-5">
                        <div class="col-12 p-0 p-md-2">
                            <div class="box">
                                <h2>Order Details</h2>
                                <p>Payment via cash on delivery</p>
                                <div class="row m-0">
                                    <div class="col-md-4">
                                        <h5>General</h5>
                                        <div class="form-group">
                                            <label for="">Date Created:</label>
                                            <p>
                                                <asp:Label ID="DateLabel" runat="server" ></asp:Label>
                                            </p>
                                        </div>
                                        <div class="form-group">
                                            <label for="">Status</label>
                                            <p>
                                                <asp:Label ID="StatusLabel" runat="server"></asp:Label>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <h5>Billing</h5>
                                        <div class="form-group">
                                            <label>Name:</label>
                                            <p class="m-0">
                                                <asp:Label ID="NameLabel" runat="server"></asp:Label>
                                            </p>
                                        </div>
                                        <div class="form-group">
                                            <label>Email</label>
                                            <p class="m-0">
                                                <a href="mailto:zainrafay12@gmail.com">
                                                    <asp:Label ID="EmailLabel" runat="server" ></asp:Label></a>
                                            </p>
                                        </div>
                                        <div class="form-group">
                                            <label>Phone No</label>
                                            <p class="m-0">
                                                <a href="tel:0000000">
                                                    <asp:Label ID="PhoneLabel" runat="server"></asp:Label></a>
                                            </p>
                                        </div>
                                        <div class="form-group">
                                            <label>Address</label>
                                            <p>
                                                <asp:Label ID="AddressLabel" runat="server" Text="Label"></asp:Label></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 mt-4 mb-4 p-0 p-md-2 pb-2">
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
                                            <asp:Repeater ID="ProductsRepeater" OnItemCommand="ProductsRepeater_ItemCommand" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td><%#Container.ItemIndex+1 %></td>
                                                        <td>
                                                            <asp:Image ImageUrl='<%#Eval("Image") %>' CssClass="img-fluid tbImage" Width="50px" runat="server" />
                                                        </td>
                                                        <td>
                                                            <asp:LinkButton ID="LinkButton1" CommandArgument='<%#Eval("Id") %>' runat="server">'<%#Eval("ProductName") %>'</asp:LinkButton>                                                            
                                                        </td>
                                                        <td>PKR <%# Eval("Price") %>
                                                        </td>
                                                        <td><%# Eval("Quantity") %>
                                                        </td>
                                                        <td>PKR <%# Eval("Total") %></td>
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
                                                <p>Rs <asp:Label ID="TotalLabel" runat="server" Text="Label"></asp:Label></p>
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
    </main>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
