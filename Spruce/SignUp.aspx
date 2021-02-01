<%@ Page Title="SignUp" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Spruce.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <div class="container">
            <div id="signUp">
                <div class="row m-0 fl-reverse">
                    <div class="col-lg-6">
                        <div class="existingCustomer">
                            <h2>Existing Customer ?</h2>
                            <p>Have an account ? Click below to Login</p>
                            <a href="SignIn" class="btn btn-main d-block">Sign in</a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="newCustomer mt-4">
                            <h2>New Customer</h2>
                            <p>Enter your information to create an account</p>
                            <div class="signInFields">
                                <div class="form-group">
                                    <label for="">Full Name</label>
                                    <asp:TextBox ID="NameTextBox" placeholder="Enter Full Name" CssClass="form-control" required runat="server"></asp:TextBox>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-lg-6 p-1">
                                        <label for="">Email</label>
                                        <asp:TextBox TextMode="Email" ID="EmailTextbox" placeholder="Enter Email" required CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-lg-6 p-1">
                                        <label for="">Phone No</label>
                                        <asp:TextBox TextMode="Number" ID="PhoneTextbox" placeholder="Enter Phone No" required CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-lg-6 p-1">
                                        <label for="">Password</label>
                                        <asp:TextBox TextMode="Password" ID="PasswordTextbox" placeholder="Enter Password" required CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-lg-6 p-1">
                                        <label for="">Confirm Password</label>
                                        <asp:TextBox TextMode="Password" ID="ConfirmPasswordTextbox" required placeholder="Confirm Password" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:CompareValidator ID="CompareValidator1" ControlToValidate="ConfirmPasswordTextbox" ControlToCompare="PasswordTextbox" runat="server" ErrorMessage="Password missmatch"></asp:CompareValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="">Address</label>
                                    <asp:TextBox TextMode="MultiLine" ID="AddressTextBox" required placeholder="Enter Address" Rows="3" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <asp:Button ID="SignUpBtn" OnClick="SignUpBtn_Click" CssClass="btn btn-main mt-4 btn-block" runat="server" Text="Sign Up" />
                            </div>
                        </div>
                        <hr class="d-lg-none">
                    </div>

                </div>
            </div>
        </div>
    </main>
    <asp:HiddenField ID="PopupMessage" runat="server" />
    <script>        
        $(document).ready(function () {
            var value = $('#<%=PopupMessage.ClientID%>').val();
                console.log(value);
                var message = document.querySelector('.messageBox h5');
                var messageImg = document.querySelector('.msgImg');
                var succesIcon = 'Assets/Images/succesIcon.jpg';
                var dangerIcon = 'Assets/Images/dangerIcon.png';
            if (value == "success") {
                message.innerHTML = 'Your account is registered';
                messageImg.setAttribute('src', succesIcon);
                $('#notificationModal').modal('show');
            } else if (value == "fail") {
                message.innerHTML = 'This product is already in cart';
                messageImg.setAttribute('src', dangerIcon);
                $('#notificationModal').modal('show');
            }
            else if (value == "your account is already registed") {
                message.innerHTML = 'your account is already registed';
                messageImg.setAttribute('src', dangerIcon);
                $('#notificationModal').modal('show');
            }
                $('#<%=PopupMessage.ClientID%>').val(" ");
            });
    </script>
</asp:Content>
