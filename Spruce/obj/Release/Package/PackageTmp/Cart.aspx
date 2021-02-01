<%@ Page Title="Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Spruce.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section id="cart">
            <div class="container">
                <div class="cartInner">
                    <div class="cartHeading text-center">
                        <h2>Shopping Cart</h2>
                    </div>
                    <div class="row m-0">
                        <div class="col-lg-8">
                            <div class="removeAll">
                                <asp:LinkButton runat="server" OnClick="RemoveAllCartItems_Click" ID="RemoveAllCartItems">
                                    <h6><i class="fa fa-trash-o"></i>
                                        Remove All</h6>
                                </asp:LinkButton>
                            </div>
                            <hr>
                            <!-- CART PRODUCT ROW -->
                            <div class="cartContainer">
                                <asp:Repeater ID="ProductRepeater" OnItemCommand="ProductRepeater_ItemCommand" runat="server">
                                    <ItemTemplate>
                                        <div class="cartRow">
                                            <div class="row m-0">
                                                <div class="col-3 pl-1">
                                                    <div class="cart-pr-img">
                                                        <asp:Image src='<%#Eval("Image") %>' ID="Image2" CssClass="img-fluid" runat="server" />
                                                    </div>
                                                </div>
                                                <div class="col-9">
                                                    <div class="content-items-table">
                                                        <h5><b><%#Eval("ProductName") %></b></h5>
                                                        <p>
                                                            <%#Eval("Description") %>
                                                        </p>
                                                        <div class="parentclassForprice">
                                                            <h5><b>Price</b></h5>
                                                            <p class="priceCart">PKR <%#Eval("Price") %></p>
                                                        </div>
                                                        <div class="quantityCalc">
                                                            <div class="row m-0 align-items-center">
                                                                <p class="m-0 mr-2 bold">Quantity :</p>
                                                                <a href="javascript:void(0)" id="SubtractQuantity" class="quantityIcon sub">
                                                                    <i class="fa fa-minus"></i>
                                                                </a>
                                                                <div class="quantityForm">
                                                                    <asp:TextBox ID="QuantityTextBox" CssClass="quantityElement QuantityCounter" Text="1" runat="server"></asp:TextBox>
                                                                </div>
                                                                <a href="javascript:void(0)" id="AddQuantity" class="quantityIcon add">
                                                                    <i class="fa fa-plus"></i>
                                                                </a>
                                                                <asp:LinkButton runat="server" ID="DeleteProduct" CommandName="DeleteProduct" CommandArgument='<%#Eval("Id") %>' CssClass="delete-btn removeCartRow">
                                                            <i class="fa fa-trash-o"></i>
                                                                </asp:LinkButton>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <hr>
                            </div>
                            <%--                            <div class="upCart text-right">
                                <asp:Button ID="updateCartBtn" OnClick="updateCartBtn_Click" CssClass="btn btn-main" runat="server" Text="Update Cart" />
                            </div>--%>
                        </div>
                        <div class="col-lg-4">
                            <div class="cart-summary mt-5">
                                <div class="cart-summary-heading text-center">
                                    <h2>Summary</h2>
                                </div>
                                <%-- <div class="row m-0">
                                    <div class="col-6 p-0">
                                        <h6>Shipping Charges</h6>
                                    </div>
                                    <div class="col-6 p-0 text-right">
                                        <p>Rs 0</p>
                                    </div>
                                </div>--%>
                                <div class="row m-0">
                                    <div class="col-6 p-0">
                                        <h6>Total</h6>
                                    </div>
                                    <div class="col-6 p-0 text-right">
                                        <p>
                                            Rs
                                            <asp:Label ID="TotalLabel" CssClass="Total" runat="server"></asp:Label>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="delivery-method">
                                <h4 class="text-center">Payment Options</h4>
                                <%--<div class="visaDel form-check p-0 mt-4 methodDisabled" data-toggle="popover" data-content="This option is disabled for some reason">
                                    <label for="visa" class="w-100 form-check-label">
                                        <span class="row m-0 justify-content-between align-items-center">
                                            <span class="form-check">
                                                <input type="radio" disabled name="delivery-method" class="form-check-input mt-0" id="visa">
                                                <span class="m-0">Visa</span>
                                            </span>
                                            <img src="/Assets/Images/visaLogo.png" width="64" class="img-fluid" alt="VisaLogo">
                                        </span>
                                    </label>
                                </div>
                                <div class="cod-del p-0 mt-4 methodDisabled" data-toggle="popover" data-content="This option is disabled for some reason">
                                    <label for="mstCard" class="w-100 form-check-label">
                                        <span class="row m-0 justify-content-between align-items-center">
                                            <span class="form-check">
                                                <input type="radio" disabled name="delivery-method" class="form-check-input mt-0" id="mstCard">
                                                <span class="m-0">Master Card</span>
                                            </span>
                                            <img src="/Assets/Images/mstcard.png" width="64" class="img-fluid" alt="VisaLogo">
                                        </span>
                                    </label>
                                </div>--%>
                                <div class="cod-del form-check p-0">
                                    <label for="cod" class="w-100 form-check-label">
                                        <span class="row m-0 justify-content-between align-items-center">
                                            <span class="form-check">
                                                <asp:RadioButton Checked="true" ID="cod" name="delivery-method" CssClass="form-check-input mt-0" runat="server" />
                                                <span class="m-0">Cash On Delivery</span>
                                            </span>
                                            <img src="/Assets/Images/cod.png" width="64" class="img-fluid" alt="VisaLogo">
                                        </span>
                                    </label>
                                </div>
                            </div>
                            <div class="proceedToCheckout text-center mt-2">
                                <asp:LinkButton runat="server" OnClick="prToCheckoutBtn_Click" ID="prToCheckoutBtn" CssClass="btn btn-main d-block prs">Proceed To Checkout</asp:LinkButton>
                            </div>
                            <div class="text-center mt-2 mb-2">
                                <span>OR</span>
                            </div>
                            <div class="ContinueShopping text-center">
                                <asp:LinkButton runat="server" OnClick="ctToSopping_Click" ID="ctToSopping" CssClass="btn btn-main d-block">Continue Shopping</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <asp:HiddenField ID="CounterHiddenField" runat="server" />
    <asp:HiddenField ID="CartQuantityHiddenField" runat="server" />
    <asp:HiddenField ID="QuantityHiddenField" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
    <script>
        $(document).ready(function () {
            var getValue = $('#<%=QuantityHiddenField.ClientID%>').val();
            if (getValue != "") {
                console.log(getValue);
                $("#MainContent_ProductRepeater_QuantityTextBox_0").val(getValue);
            }
        });
    </script>
    <script>
        $('[data-toggle="popover"]').popover({
            trigger: 'hover',
        }
        );
    </script>
    <script>
        $(document).ready(function () {
            getTotalCost();
            function getTotalCost() {
                var grandTotal = 0;
                $(".add").each(function () {
                    var getSibling = $(this).siblings(".quantityForm");
                    var getChildren = getSibling.children(".quantityElement");
                    var value = parseInt(getChildren.val());
                    var getthisParent = $(this).parent(".row.m-0.align-items-center");
                    var getp = getthisParent.parent(".quantityCalc");
                    var parent = getp.siblings(".parentclassForprice");
                    var price = parent.children(".priceCart");
                    var splitprice = price.text().split(' ');
                    var getprice = splitprice[1];
                    var Total = parseInt(getprice) * parseInt(value);
                    grandTotal += Total;
                });
                $(".Total").text(grandTotal);
            }
            $(".add").click(function () {
                var getSibling = $(this).siblings(".quantityForm");
                var getChildren = getSibling.children(".quantityElement");
                var value = parseInt(getChildren.val());
                value++;
                getChildren.val(value);
                getTotalCost();
                //Total work
                /*    var getthisParent = $(this).parent(".row.m-0.align-items-center");
                    var getp = getthisParent.parent(".quantityCalc");
                    var parent = getp.siblings(".parentclassForprice");
                    var price = parent.children(".priceCart");
                    var splitprice = price.text().split(' ');
                    var getprice = splitprice[1];
                    var Total = parseInt(getprice) * parseInt(value);
    
                    if (firsttotal == 0) {
                        firsttotal = $(".Total").text();                    
                    }
                    var min = parseInt(firsttotal) - parseInt(getprice);
                    $(".Total").text(Total+min);
                    */



                //fill total
                //                var gettotal = $(".Total").text();
                //              var TotalPrice = parseInt(gettotal) + parseInt(getrealmoney);                
                //             $(".Total").text(TotalPrice);

                //var price = value * price;
            });
            $(".sub").click(function () {
                var getSibling = $(this).siblings(".quantityForm");
                var getChildren = getSibling.children(".quantityElement");
                var value = parseInt(getChildren.val());
                if (value > 1) {
                    value--;
                    getChildren.val(value);
                }
                getTotalCost();
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            var adder = "";
            $(".prs").click(function () {
                $(".QuantityCounter").each(function () {
                    adder += $(this).val() + ",";

                });
                console.log(adder);
                $('#<%=CartQuantityHiddenField.ClientID%>').val(adder);
            });
        });
    </script>
</asp:Content>
