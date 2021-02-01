<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Spruce.Admin.Login" %>

<!DOCTYPE html>
<html lang="en" runat="server">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
    <link rel="stylesheet" href="Assets/css/side-bar.css">
    <link rel="stylesheet" href="Assets/css/style.css">
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server" class="needs-validation" novalidate>
        <div class="container">
            <div class="row m-0 justify-content-center mt-5">
                <div class="col-lg-4 col-md-5 col-sm-8 col-12 mt-5">
                    <div class='mt-5 text-center'>
                        <img src="/Assets/Images/Logo-black.png" class="img-fluid" width='200' alt="">
                    </div>
                    <div class="box mt-5">
                        <div class="form-group">
                            <label for="">Email</label>
                            <asp:TextBox runat="server" required TextMode="Email" ID="UsernameTextbox" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="">Password</label>
                            <asp:TextBox runat="server" required ID="PasswordTextbox" TextMode="Password" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Button Text="Login" OnClick="AdminLoginButton_Click" CssClass="btn btn-primary btn-block" ID="AdminLoginButton" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
         <div
            class="modal fade"
            id="notificationModal"
            tabindex="-1"
            aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="text-center">
                            <img class="msgImg" width="75" alt="" />
                        </div>
                        <div class="messageBox text-center mt-4">
                            <h5></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

        <script src="Assets/js/script.js"></script>
        <asp:HiddenField ID="MessageHiddenField" runat="server" />
    </form>
    <script>
        $(document).ready(function () {
            var value = $('#<%=MessageHiddenField.ClientID%>').val();
            console.log(value);
             console.log(value);
             var message = document.querySelector('.messageBox h5');
             var messageImg = document.querySelector('.msgImg');
             var succesIcon = 'Images/succesIcon.jpg';
             var dangerIcon = 'Images/dangerIcon.png';
             if (value == "success") {
                 message.innerHTML = 'Username or password is incorrect';
                 messageImg.setAttribute('src', dangerIcon);
                 $('#notificationModal').modal('show');
             }
             $('#<%=MessageHiddenField.ClientID%>').val("");
         });
    </script>
</body>
</html>
