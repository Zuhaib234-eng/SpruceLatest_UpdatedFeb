<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductOrders.aspx.cs" Inherits="Spruce.User.ProductOrders" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
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
                            <li class="user__item"><a class="user__link" href="Dashboard">Dashboard <i class="user__link fa fa-angle-right ml-2"></i></a>
                            </li>
                            <li class="user__item"><a class="user__link" href="CustomShirtOrders">Custom Shirt Orders <i class="fa fa-angle-right ml-2"></i></a></li>
                            <li class="user__item"><a class="user__link user__active" href="ProductOrders">Product Order <i class="fa fa-angle-right ml-2"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-9">
                    <h1><b>Product Orders</b></h1>

                    <div class="mt-5">
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>S.NO</th>
                                        <th>Date</th>
                                        <th>Total</th>
                                        <th>Status</th>
                                        <th>Detail</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="ProductRepeater" OnItemCommand="ProductRepeater_ItemCommand" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%#Container.ItemIndex+1 %></td>
                                                <td><%#Eval("Date") %></td>
                                                <td><%#Eval("Total") %></td>
                                                <td class="StatusChange"><%#Eval("Status") %></td>         
                                                <td class="siblingColor">
                                                    <asp:Button ID="Button1" CssClass="myColor" CommandArgument='<%#Eval("Id") %>' runat="server" Text="Check Details" />
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
        </div>
    </main>
    <script>
        $(document).ready(function () {
            $(".StatusChange").each(function () {
                var myValue = $(this).text();
                if (myValue == "True") {
                    $(this).text("Proccessing");
                    $(this).addClass("Proccessing");
                    $(this).siblings(".siblingColor").children(".myColor").addClass("btn btn-success");
                }
                else
                {
                    $(this).text("Pending");
                    $(this).addClass("Pending");
                    $(this).siblings(".siblingColor").children(".myColor").addClass("btn btn-danger");
                }
            });
        });
    </script>
    <style>
        .Proccessing {
            color:green;         
        }
        .Pending {
            color:red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
