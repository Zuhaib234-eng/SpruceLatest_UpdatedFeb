    
    // Show Modal On Start
    $("#ShirtSave").click(function () {
      var radioValue = $("input[name='ShirtStyleSelection']:checked").val();
      if (radioValue == "ShirtStyleNormal") {
        $(".ShirtStylesContainer #SimpleShirt").appendTo(".cnvInv");
        $(".startModal").modal("toggle");
      } else if (radioValue == "ShirtStyleLongBottom") {
        $(".ShirtStylesContainer #LongBottomShirtDesign").appendTo(".cnvInv");
        $(".startModal").modal("toggle");
      }
    });
    document.addEventListener("DOMContentLoaded", () => {
      const rows = document.querySelectorAll("tr[data-href]");
      rows.forEach(row => {
        row.addEventListener("click", () => {
          window.location.href = row.dataset.href;
        });
      });
    });

    
    //  Fade
    $(".bgFd").hide();
    // 
    // Navbar hide show on click 
    $(".csNavToggle").click(() => {
      $(".dragBar").toggleClass("trnsfrm");
      $(".bgFd").show();
      $(".clickHere").hide();
    })
    $(".bgFd").click(() => {
      $(".dragBar").removeClass("trnsfrm");
      $(".bgFd").hide();
      // $(".clickHere").show();
    })
    undo = [];
    // Add Class active class to drag in inner_drag_bar
    $(".inner_drag_bar .collars").each(function () {
      $(this).click(() => {
        $(".collars").removeClass("dgAct");
        $(this).addClass("dgAct")
        // alert("hello");
      })
    })
    $(".inner_drag_bar .cuffs").each(function () {
      $(this).click(() => {
        $(".cuffs").removeClass("dgAct");
        $(this).addClass("dgAct")
        // alert("hello");
      })
    })
    $(".inner_drag_bar .pocket").each(function () {
      $(this).click(() => {
        $(".pocket").removeClass("dgAct");
        $(this).addClass("dgAct")
        // alert("hello");
      })
    })

    var NonDisplayElements = $(".nonDisplayElements");
    var cnvInv = $(".cnvInv");

    // Cuffs Adding to Canvas On Click // .. .. .. .. .. .. .. .. .. .. . . . .. . . . .. . . . .
    $(".inner_drag_bar .cuffs").each(function () {
      $(this).click(() => {
        if ($(".cnvInv .cuffs").length <= 1) {
          var appendCuff;
          var adCuff;
          var adCuffClone;
          var anotherCuffSide;
          if ($(".cnvInv .cuffs").length < 1) {
            appendCuff = $(this).clone().appendTo(NonDisplayElements);
            adCuff = appendCuff.css({
              "width": "0",
              "height": "0"
            });
            adCuffClone = adCuff.clone().appendTo(".cnvInv");
            anotherCuffSide = $(".cnvInv .CuffSides").clone().appendTo(".cnvInv .CuffSideFlex");
          } else if ($(".cnvInv .cuffs").length == 1) {
            replaceNon = $(".nonDisplayElements .cuffs").replaceWith($(this).clone());
            $(".nonDisplayElements .cuffs").css({
              "width": "0",
              "height": "0"
            });
            var replaceToCanvas = $(".cnvInv .cuffs").replaceWith($(".nonDisplayElements .cuffs").clone());
            replaceToCanvas;
            anotherRCSide = $(".cnvInv .CuffSides").clone().appendTo(".cnvInv .CuffSideFlex");

          }
        } else {
          return;
        }
      });

    });

    // Collars Adding to Canvas On Click // .. .. .. .. .. .. .. .. .. .. . . . .. . . . .. . . . .
    $(".inner_drag_bar .collars").each(function () {
      var nonDisplayElemCollars = $(".nonDisplayElements .collars");
      $(this).click(() => {
        if ($(".cnvInv .collars").length < 1) {
          appendCollar = $(this).clone().appendTo(".nonDisplayElements");
          adCollar = appendCollar.css({
            "width": "0",
            "height": "0"
          });
          console.log("this is 1")
          adCollarClone = adCollar.clone().appendTo(cnvInv);
        } else if ($(".cnvInv .collars").length == 1) {
          replaceCollarsNon = $(".nonDisplayElements .collars").replaceWith($(this).clone());
          $(".nonDisplayElements .collars").css({
            "width": "0",
            "height": "0"
          });
          ReplaceCollarFromCanvas = $(".cnvInv .collars").replaceWith($(".nonDisplayElements .collars").clone());

        } else {
          return;
        }
      })
    })

    // Button Adding to Canvas On Click // .. .. .. .. .. .. .. .. .. .. . . . .. . . . .. . . . .
    $(".inner_drag_bar .buttons").each(function () {
      $(this).click(() => {
        if ($(".cnvInv .buttons").length < 1) {
          var btnClone = $(this).clone().appendTo(".cnvInv");
          if ($(".cnvInv .buttonContainer").length <= 1) {
            for (var i = 0; i < 6; i++) {
              $(".inner_drag_bar .btnContainerInner").clone().appendTo(".cnvInv .buttonContainer");
            }
          }
        }
        $(".removeButtons").click(() => {
          $(".cnvInv .buttons").remove();
        });
      })
    })
    $(".inner_drag_bar .pocket").each(function () {
      $(this).click(() => {
        if ($(".cnvInv .pocket").length < 1) {

          pocketClone = $(this).clone().appendTo(".nonDisplayElements");
          pocketClone.css({
            "width": "0",
            "height": "0"
          });
          pocketToCanvas = pocketClone.clone().appendTo(".cnvInv");
        } else {
          return;
        }
        $(".removePocket").remove();
      })
    })
    $(".btnColorChange").css({
      "fill": "#000"
    })


$(".buttonColorChange a").each(function () {
    $(this).click(() => {
        if ($(this).hasClass("white")) {
            $(".btnColorChange").css({
                'fill': 'white'
            });
            $(".Button-1-cls-2").css({
                "stroke": "#000"
            })
        } else if ($(this).hasClass("blackColor")) {
            $(".btnColorChange").css({
                'fill': "black"
            })
            $(".Button-1-cls-2").css({
                "stroke": "#fff"
            })
        } else if ($(this).hasClass("yellow")) {
            $(".btnColorChange").css({
                "fill": "yellow"
            })
            $(".Button-1-cls-2").css({
                "stroke": "#000"
            })
        } else if ($(this).hasClass("red")) {
            $(".btnColorChange").css({
                'fill': "red"
            })
            $(".Button-1-cls-2").css({
                "stroke": "#fff"
            })
        } else if ($(this).hasClass("BlueColor")) {
            $(".btnColorChange").css({
                'fill': "blue"
            })
            $(".Button-1-cls-2").css({
                "stroke": "#fff"
            })
        } else if ($(this).hasClass("violet")) {
            $(".btnColorChange").css({
                'fill': "violet"
            })
            $(".Button-1-cls-2").css({
                "stroke": "#fff"
            })
        } else if ($(this).hasClass("Orange")) {
            $(".btnColorChange").css({
                'fill': "Orange"
            })
            $(".Button-1-cls-2").css({
                "stroke": "#fff"
            })
        } else if ($(this).hasClass("Light_blue")) {
            $(".btnColorChange").css({
                "fill": "lightblue"
            })
            $(".Button-1-cls-2").css({
                "stroke": "#fff"
            })
        } else if ($(this).hasClass("Green")) {
            $(".btnColorChange").css({
                "fill": "green"
            })
            $(".Button-1-cls-2").css({
                "stroke": "#fff"
            })
        } else if ($(this).hasClass("Dark_Green")) {
            $(".btnColorChange").css({
                'fill': 'darkgreen'
            })
            $(".Button-1-cls-2").css({
                "stroke": "#fff"
            })
        } else if ($(this).hasClass("Yellow_Orange")) {
            $(".btnColorChange").css({
                "fill": "#ffcc00"
            })
            $(".Button-1-cls-2").css({
                "stroke": "#fff"
            })
        } else if ($(this).hasClass("Blue_violet")) {
            $(".btnColorChange").css({
                'fill': "#4d1a7f"
            })
            $(".Button-1-cls-2").css({
                "stroke": "#fff"
            });

        } else if ($(this).hasClass('grey')) {
            $('.btnColorChange').css({
                fill: 'grey',
            });
            $('.Button-1-cls-2').css({
                stroke: '#fff',
            });
        }
        else if ($(this).hasClass('lightblue')) {
            $('.btnColorChange').css({
                fill: 'lightblue',
            });
            $('.Button-1-cls-2').css({
                stroke: '#fff',
            });
        }
        else if ($(this).hasClass('navyBlue')) {
            $('.btnColorChange').css({
                fill: '#000080',
            });
            $('.Button-1-cls-2').css({
                stroke: '#fff',
            });
        }
        else if ($(this).hasClass('green')) {
            $('.btnColorChange').css({
                fill: 'green',
            });
            $('.Button-1-cls-2').css({
                stroke: '#fff',
            });
        }
        else if ($(this).hasClass('pink')) {
            $('.btnColorChange').css({
                fill: 'pink',
            });
            $('.Button-1-cls-2').css({
                stroke: '#fff',
            });
        }

    });
});

function table(ser) {
    var selection = ser;
    var tableElem = `
   <tr>
   <td> ${selection.collar}  </td>
   <td> ${selection.shoulder}  </td>
   <td> ${selection.chest}  </td>
   <td> ${selection.waist}  </td>
   <td> ${selection.sleeve}  </td>
   <td> ${selection.shirt}  </td>
   </tr>
      `;
    tbody.innerHTML += tableElem;
}
var tb = document.getElementById('mytbl');
var tbody = document.querySelector('#mytbl tbody');
$(document).ready(function () {
    $('#MainSelect')
        .change(function () {
            $(this)
                .find('option:selected')
                .each(function () {
                    var optionValue = $(this).attr('value');
                    if (optionValue == 'small') {
                        elem.innerHTML = '';
                        small();
                    } else if (optionValue == 'medium') {
                        elem.innerHTML = '';
                        medium();
                    } else if (optionValue == 'large') {
                        elem.innerHTML = '';
                        large();
                    }
                });
        })
        .change();
});


var collection = '';
$(document).ready(function () {
    $('#sizeSelection')
        .change(function () {
            $(this)
                .find('option:selected')
                .each(function () {
                    var optionValue = $(this).attr('value');
                    if (optionValue == 'small14') {
                        tbody.innerHTML = '';
                        table(SizeOptions.Small[0]);
                        collection = SizeOptions.Small[0];
                    } else if (optionValue == 'small14.5') {
                        tbody.innerHTML = '';
                        table(SizeOptions.Small[1]);
                        collection = SizeOptions.Small[1];
                    } else if (optionValue == 'small15') {
                        tbody.innerHTML = '';
                        table(SizeOptions.Small[2]);
                        collection = SizeOptions.Small[2];
                    } else if (optionValue == 'medium15.5') {
                        tbody.innerHTML = '';
                        table(SizeOptions.Medium[0]);
                        collection = SizeOptions.Medium[0];
                    } else if (optionValue == 'medium16') {
                        tbody.innerHTML = '';
                        table(SizeOptions.Medium[1]);
                        collection = SizeOptions.Medium[1];
                    } else if (optionValue == 'medium16.5') {
                        tbody.innerHTML = '';
                        table(SizeOptions.Medium[2]);
                        collection = SizeOptions.Medium[2];
                    } else if (optionValue == 'large17') {
                        tbody.innerHTML = '';
                        table(SizeOptions.Large[0]);
                        collection = SizeOptions.Large[0];
                    } else if (optionValue == 'large17.5') {
                        tbody.innerHTML = '';
                        table(SizeOptions.Large[1]);
                        collection = SizeOptions.Large[1];
                    } else if (optionValue == 'large18') {
                        tbody.innerHTML = '';
                        table(SizeOptions.Large[2]);
                        collection = SizeOptions.Large[2];
                    } else {
                        tbody.innerHTML = '';
                    }
                });
        })
        .change();
});







    // 
    $(".threadColor a").each(function () {
      $(this).click(() => {
        if ($(this).hasClass("blackColor")) {
          $(".aa660987-1d87-47e6-8ab9-b757996d23f3").css({
            "fill": "#000"
          })
          $(".ad064edb-de09-4db0-80e4-849f7051a9c0").css({
            "fill": "#000"
          })

        } else if ($(this).hasClass("yellow")) {
          $(".aa660987-1d87-47e6-8ab9-b757996d23f3").css({
            "fill": "yellow"
          })
          $(".ad064edb-de09-4db0-80e4-849f7051a9c0").css({
            "fill": "yellow"
          })
        } else if ($(this).hasClass("red")) {
          $(".aa660987-1d87-47e6-8ab9-b757996d23f3").css({
            "fill": "red"
          })
          $(".ad064edb-de09-4db0-80e4-849f7051a9c0").css({
            "fill": "red"
          })
        } else if ($(this).hasClass("BlueColor")) {
          $(".aa660987-1d87-47e6-8ab9-b757996d23f3").css({
            "fill": "blue"
          })
          $(".ad064edb-de09-4db0-80e4-849f7051a9c0").css({
            "fill": "blue"
          })
        } else if ($(this).hasClass("violet")) {
          $(".aa660987-1d87-47e6-8ab9-b757996d23f3").css({
            "fill": "violet"
          })
          $(".ad064edb-de09-4db0-80e4-849f7051a9c0").css({
            "fill": "violet"
          })
        } else if ($(this).hasClass("Orange")) {
          $(".aa660987-1d87-47e6-8ab9-b757996d23f3").css({
            "fill": "orange"
          })
          $(".ad064edb-de09-4db0-80e4-849f7051a9c0").css({
            "fill": "orange"
          })
        } else if ($(this).hasClass("Light_blue")) {
          $(".aa660987-1d87-47e6-8ab9-b757996d23f3").css({
            "fill": "lightblue"
          })
          $(".ad064edb-de09-4db0-80e4-849f7051a9c0").css({
            "fill": "lightblue"
          })
        } else if ($(this).hasClass("Green")) {
          $(".aa660987-1d87-47e6-8ab9-b757996d23f3").css({
            "fill": "green"
          })
          $(".ad064edb-de09-4db0-80e4-849f7051a9c0").css({
            "fill": "green"
          })
        } else if ($(this).hasClass("Dark_Green")) {
          $(".aa660987-1d87-47e6-8ab9-b757996d23f3").css({
            "fill": "darkgreen"
          })
          $(".ad064edb-de09-4db0-80e4-849f7051a9c0").css({
            "fill": "darkgreen"
          })
        } else if ($(this).hasClass("white")) {
          $(".aa660987-1d87-47e6-8ab9-b757996d23f3").css({
            "fill": "#fff"
          })
          $(".ad064edb-de09-4db0-80e4-849f7051a9c0").css({
            "fill": "#fff"
          })
        } else if ($(this).hasClass("Yellow_Orange")) {
          $(".aa660987-1d87-47e6-8ab9-b757996d23f3").css({
            "fill": "#ffcc00"
          })
          $(".ad064edb-de09-4db0-80e4-849f7051a9c0").css({
            "fill": "#ffcc00"
          })
        } else if ($(this).hasClass("Blue_violet")) {
          $(".aa660987-1d87-47e6-8ab9-b757996d23f3").css({
            "fill": "#4d1a7f"
          })
          $(".ad064edb-de09-4db0-80e4-849f7051a9c0").css({
            "fill": "#4d1a7f"
          })
        }
      })
    })
    // 
    // if ($(window).width() <= 992) {
    //   $(".topBar").remove();
    // } else if ($(window).width() >= 992) {
    //   $(".bottomBar").remove();
    // }
    $(".bottomBar").remove();


    $(".removeStyle").remove();
    $(".removeCollarStyle").remove();
    $(".removeButtons").remove();
    $('.mainGridBannerProductsSlider').owlCarousel({
      loop: false,
      stagePadding: 0,
      margin: 10,
      nav: true,
      dots: true,
      autoplay: true,
      responsive: {
        0: {
          items: 1
        },
        600: {
          items: 2
        },
        1000: {
          items: 3
        }
      }
    });
    $('.MainBannerSlider').owlCarousel({
      loop: true,
      // nav: true,
      dots: true,
      // autoplay: true,
      items: 1,
    });
    $(".pr-img-slider").owlCarousel({
      // loop: true,
      margin: 10,
      nav: true,
      dots: false,
      autoplay: true,
      items: 3
    })

    //

    var quantity = $("#quantity");

    if (quantity.val() <= 1) {
      $("#SubtractQuantity").attr("disabled", "disabled")
    }

    $('#AddQuantity').click(function () {
      if (quantity.val() >= 1) {
        quantity.val(+quantity.val() + 1);
      }
      if (quantity.val() > 1) {
        $("#SubtractQuantity").removeAttr("disabled");
      }
    });
    $('#SubtractQuantity').click(function () {
      if (quantity.val() > 1) {
        quantity.val(+quantity.val() - 1);
      }
      if (quantity.val() > 1) {
        $("#SubtractQuantity").removeAttr("disabled");
      }
      if (quantity.val() <= 1) {
        $("#SubtractQuantity").attr("disabled", "disabled");
      }
    });
    // Cart Calculator




    // var removeCartRow = document.querySelectorAll(".removeCartRow");
    // for (var btI = 0; btI < removeCartRow.length; btI++) {
    //   var remCartRowBtn = removeCartRow[btI];
    //   remCartRowBtn.addEventListener("click", function (ev) {
    //     var remClick = ev.target;
    //     var cartRowForRemove = remClick.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement;

    //     cartRowForRemove.nextElementSibling.remove();
    //     cartRowForRemove.remove();
    //   })
    // }


    $(".img-sliderItem img").each(function () {
      $(this).click(() => {
        var clickedImageSource = $(this).attr("src");
        // var mainImg = $(".pViewImg").attr("src");
          $("#imageZoom").attr("src", clickedImageSource)
      })
    })
    // Cart Calculator
function toggleElement(elemName) {
    $(elemName).toggle();
}

function toggAttr(pr, cl, at) {
    if (document.querySelector(pr).style.display == "none") {
        document.querySelector(cl).removeAttribute(at);
    } else {
        document.querySelector(cl).setAttribute(at, "");
    }
}
// Toggle Element On Click
$("#MainContent_SameAs").click(function () {
    toggleElement(".addressFormGroup");
    toggAttr(".addressFormGroup", ".addressFormGroup textarea", "required");
})



function AddClass(elemNameToAddClass, newClassName) {
    elemNameToAddClass.classList.add(newClassName);
}
// Add Active Class To Nav Item

function AddClassActive(linkClass) {
    const el = document.querySelectorAll(linkClass);
    const pth = location.pathname;
    const pthName = pth.substr(1);
    for (var i = 0; i < el.length; i++) {
        const newEl = el[i];
        elattr = newEl.getAttribute("href");
        if (pthName == elattr) {
            AddClass(newEl.parentElement, "active");
        }
    }
}
AddClassActive(".nav-link");

