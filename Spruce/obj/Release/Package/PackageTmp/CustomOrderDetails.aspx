<%@ Page Title="Order Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomOrderDetails.aspx.cs" Inherits="Spruce.User.CustomOrderDetails" %>

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
                            <li><a href="Dashboard">Dashboard <i class="fa fa-angle-right ml-2"></i></a>
                            </li>
                            <li><a class="user__active" href="CustomShirtOrders">Custom Shirt Orders <i class="fa fa-angle-right ml-2"></i></a></li>
                            <li><a href="ProductOrders">Product Order <i class="fa fa-angle-right ml-2"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-9">
                    <h1><b>Custom Shirt Order Details</b></h1>
                    <div class="row m-0 mt-5">
                        <div class="col-md-12">
                            <div class="box">
                                <h2>Order Details</h2>
                                <p>Payment via cash on delivery</p>
                                <div class="row m-0">
                                    <div class="col-lg-2">
                                        <h5>General</h5>
                                        <div class="form-group">
                                            <label for="">Date Created:</label>
                                            <p>
                                                <asp:Label ID="DateLabel" runat="server"></asp:Label></p>
                                        </div>
                                        <div class="form-group">
                                            <label for="">Status</label>
                                            <p>Processing</p>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <h5>Custom Shirt Details</h5>
                                        <div class="row m-0 align-items-center justify-content-center">
                                            <div class="col-6">
                                                <div class="form-group">
                                                    <label for="">Collar Image</label>
                                                    <br class="mt-2">
                                                    <asp:Image ID="CollarImage" CssClass="img-fluid mt-2" Width="75" runat="server" />
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="form-group">
                                                    <label for="">Cuff Image</label>
                                                    <br class="mt-1">
                                                    <asp:Image ID="CuffImage" class="img-fluid mt-1" Width="75" runat="server" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row m-0">
                                            <div class="col-6">
                                                <div class="form-group">
                                                    <label for="">Button</label>
                                                    <br class="mt-1">
                                                    <asp:Image ID="ButtonImage" Width='75' class="img-fluid" runat="server" />
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="form-group">
                                                    <label for="">Pocket</label>
                                                    <br class="mt-1">
                                                    <asp:Image ID="PocketImage" Width='75' class="img-fluid" runat="server" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                      <div class="row m-0">
                                                <div class="col-4">
                                                    <div class="form-group">
                                                        <label for="">Button Color</label>
                                                        <br class="mt-1">
                                                        <div class="gap">
                                                            <asp:Button ID="ButtonColor" Width="30px" Height="30px" runat="server" />
                                                            <br />
                                                            <asp:Label ID="ButtonColorLabel" runat="server" Text="Label"></asp:Label>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-4">
                                                    <div class="form-group">
                                                        <label for="">Thread Color</label>
                                                        <br class="mt-1">
                                                        <asp:Button ID="ThreadColorButton" Width="30px" Height="30px" runat="server" />
                                                        <br />
                                                        <asp:Label ID="ThreadColorLabel" runat="server" Text="Label"></asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    <div class="col-md-5">
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
                                                <a href="mailto:https://www.gmail.com/">
                                                    <asp:Label ID="EmailLabel" runat="server"></asp:Label></>
                                            </p>
                                        </div>
                                        <div class="form-group">
                                            <label>Phone No</label>
                                            <p class="m-0">
                                                <a href="tel:000000">
                                                    <asp:Label ID="NoLabel" runat="server" ></asp:Label></a>
                                            </p>
                                        </div>
                                        <div class="form-group">
                                            <label>Address</label>
                                            <p>
                                                <asp:Label ID="AddressLabel" runat="server" ></asp:Label>
                                            </p>
                                        </div>
                                        
                                    </div>
                                    <div class="col-md-12">
                                        
                                        <div>
                                            <asp:Button ID="Button1" CssClass="btn btn-main btn-block" OnClick="Button1_Click" runat="server" Text="View Your Designed Shirt" />
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-12 mt-4">
                            <div class="box">
                                <div class="table-responsive mt-3">
                                    <table class="table tRounded table-hover" id="mytbl">
                                        <thead>
                                            <tr>
                                                <th>Collar Size</th>
                                                <th>Shoulder</th>
                                                <th>Chest</th>
                                                <th>Waist</th>
                                                <th>Sleeve Length</th>
                                                <th>Shirt Length</th>
                                            </tr>
                                        </thead>
                                        <tbody class="mytbody">
                                            <tr>
                                                <th>
                                                    <asp:Label ID="CollarSizeLabel" runat="server" ></asp:Label></th>
                                                <th>
                                                    <asp:Label ID="ShoulderLabel" runat="server" ></asp:Label>
                                                </th>
                                                <th><asp:Label ID="ChestLabel" runat="server" ></asp:Label></th>
                                                <th>
                                                    <asp:Label ID="WaistLabel" runat="server" ></asp:Label>
                                                </th>
                                                <th>
                                                    <asp:Label ID="SleeveLengthLabel" runat="server" ></asp:Label>
                                                </th>
                                                <th>
                                                    <asp:Label ID="ShirtLengthLabel" runat="server" ></asp:Label>
                                                </th>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                        </div>
                        <div class="col-12 mt-4 mb-5">
                            <div class="box">
                                <h4>Items List</h4>
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>S.No</th>
                                                <th>Fabric Image</th>
                                                <th>Fabric Name</th>
                                                <th>Cost</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>
                                                    <asp:Image ID="FabricImage" CssClass="img-fluid" Width="50px" runat="server" />
                                                </td>
                                                <td>
                                                    <asp:Label ID="FabricNameLabel" runat="server" ></asp:Label>
                                                </td>
                                                <td>PKR <asp:Label ID="CostLabel" runat="server" ></asp:Label>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <hr>
                                    <div class="row m-0" style="justify-content: flex-end;">
                                        <div class="text-right col-md-3">
                                            <div class="row m-0 justify-content-between">
                                                <p><b>Total:</b> </p>
                                                <p>Rs <asp:Label ID="TotalLabel" runat="server" ></asp:Label></p>
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
