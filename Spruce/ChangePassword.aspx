<%@ Page Title="Change Password" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Spruce.ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <div class="container">
            <div id="signIn">
                <div class="row m-0 fl-reverse">
                    <div class="col-lg-6">
                        <div class="newCustomer">
                            <h2>New Customer ?</h2>
                            <p>By creating account, you can now purchase products and design your own custom shirts</p>
                            <a href="SignUp" class="btn btn-main d-block">Create An Account</a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="existingCustomer mt-4">
                            <h2>Change Password</h2>
                            <div class="signInFields">
                                <div class="form-group">
                                    <label for="">Enter New Password</label>
                                    <asp:TextBox ID="New_Password_TextBox" TextMode="Password" CssClass="form-control" required runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="">Confirm New Password</label>
                                    <asp:TextBox ID="Confirm_New_Password" TextMode="Password" CssClass="form-control" required runat="server"></asp:TextBox>
                                </div>
                                <!-- <div class="forget"><a href="#">Forget Password ?</a></div> -->
                                <asp:Button ID="NewPasswordBtn" onClick="NewPasswordBtn_Click" CssClass="btn btn-main mt-4 btn-block" runat="server" Text="Change Password" />
                                
                            </div>
                        </div>
                        <hr class="d-lg-none">
                    </div>
                    
                </div>
            </div>
        </div>
    </main>
    <asp:HiddenField ID="SignInHiddenField" runat="server" />
     <script>
         $(document).ready(function () {
             var value = $('#<%=SignInHiddenField.ClientID%>').val();
            console.log(value);
            var message = document.querySelector('.messageBox h5');
            var messageImg = document.querySelector('.msgImg');
            var succesIcon = 'Assets/Images/succesIcon.jpg';
            var dangerIcon = 'Assets/Images/dangerIcon.png';
            if (value == "success") {
                message.innerHTML = 'Email or password is incorrect';
                messageImg.setAttribute('src', dangerIcon);
                $('#notificationModal').modal('show');
            }
            $('#<%=SignInHiddenField.ClientID%>').val("");
        });
     </script>
    <script>

</script>
</asp:Content>
