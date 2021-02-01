// Table Link To Another
document.addEventListener("DOMContentLoaded", () => {
    const rows = document.querySelectorAll("tr[data-href]");
    rows.forEach(row => {
        row.addEventListener("click", () => {
            window.location.href = row.dataset.href;
        });
    });
});

// Custom Form
$(".custom-file-input").on("change", function () {
      var fileName = $(this).val().split("\\").pop();
      $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
});

// side-bar-js
(function ($) {

      "use strict";

      var fullHeight = function () {

            $('.js-fullheight').css('height', $(window).height());
            $(window).resize(function () {
                  $('.js-fullheight').css('height', $(window).height());
            });

      };
      fullHeight();

      $('#sidebarCollapse').on('click', function () {
            $('#sidebar').toggleClass('active');
      });

})(jQuery);

// toggle-blur
$(document).ready(function () {
      $('#sidebar').addClass('cst_sidebar_menu');
      $('#sidebar').addClass('active')
});

// Map HighLight //
$('.map').maphilight();
//

// Slider 
$('.owl-carousel').owlCarousel({
      loop: true,
      margin: 10,
      nav: true,
      responsive: {
            0: {
                  items: 1
            },
            600: {
                  items: 5
            },
            1000: {
                  items: 5
            },
      },
});
$(document).ready(function () {
      $('.owl-prev').html('<a><i class="fas fa-angle-left"></i></a>');
      $('.owl-next').html('<a><i class="fas fa-angle-right"></i></a>');
});

(function () {
    'use strict';
    window.addEventListener('load', function () {
        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.getElementsByClassName('needs-validation');
        // Loop over them and prevent submission
        var validation = Array.prototype.filter.call(forms, function (form) {
            form.addEventListener('submit', function (event) {
                if (form.checkValidity() === false) {
                    event.preventDefault();
                    event.stopPropagation();
                }
                form.classList.add('was-validated');
            }, false);
        });
    }, false);
})();