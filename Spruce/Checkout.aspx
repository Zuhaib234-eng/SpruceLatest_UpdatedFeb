<%@ Page Title="Checkout" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Spruce.Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <div class="container">
            <section id="CheckOut" class="pt-5 pb-5">
                <div class="checkoutHeader text-center">
                    <h1><b>Checkout</b></h1>
                </div>
                <div class="checkoutForm pt-4">
                    <div class="row m-0">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="">Enter Email</label>
                                <asp:TextBox runat="server" required TextMode="Email" ID="EmailTextbox" placeholder="Email" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="">Enter Password</label>
                                <asp:TextBox runat="server" required TextMode="Password" ID="PasswordTextBox" placeholder="Enter password" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="">Enter Name</label>
                                <asp:TextBox runat="server" required ID="NameTextBox" placeholder="Name" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="">Enter Phone Number</label>
                                <asp:TextBox runat="server" required TextMode="Number" placeholder="Phone no" ID="PhoneNoTextBox" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group addressFormGroup">
                                <label for="">Enter Address</label>
                                <asp:TextBox runat="server" required ID="AddressAreaTextBox" placeholder="Enter Address" TextMode="MultiLine" CssClass="form-control" Rows="4"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:CheckBox runat="server" ID="SameAs" />
                                <label for="MainContent_SameAs">Same as your first address?</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="cart-summary mt-5">

                                <div class="cart-summary-heading text-center">
                                    <h2>Summary</h2>
                                </div>
                                <div class="row m-0">
                                    <div class="col-6 p-0">
                                        <h6>Total</h6>
                                    </div>
                                    <div class="col-6 p-0 text-right">
                                        <p>
                                            Rs
                                            <asp:Label ID="TotalLabel" runat="server" Text="Label"></asp:Label>
                                        </p>
                                    </div>
                                </div>
                                <div class="row m-0">
                                    <div class="col-6 p-0">
                                        <h6>Delivery Method</h6>
                                    </div>
                                    <div class="col-6 p-0 text-right">
                                        <p>Cash on Delivery</p>
                                    </div>
                                </div>
                            </div>
                            <div class="Buy mt-4">
                                <asp:Button Text="Place Order" OnClick="BuyProd_Click" ID="BuyProd" CssClass="btn btn-main btn-block" runat="server" />
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        
    </main>
    <asp:HiddenField ID="CheckOutSucceedHiddenField" runat="server" />

    <script>
        $(document).ready(function () {
            var getValue = $("#<%=CheckOutSucceedHiddenField.ClientID%>").val();
           console.log(getValue);
           if (getValue == "success") {
               var message = document.querySelector('.messageBox h5');
               var messageImg = document.querySelector('.msgImg');
               var succesIcon = 'Assets/Images/succesIcon.jpg';
               var dangerIcon = 'Assets/Images/dangerIcon.png';
               if (getValue == "success") {
                   message.innerHTML = 'your order has been placed thankyou';
                   messageImg.setAttribute('src', succesIcon);
                   $('#notificationModal').modal('show');
               }
           };

       });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
