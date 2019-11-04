// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("bootstrap/dist/js/bootstrap")
import { library, dom } from '@fortawesome/fontawesome-svg-core'
import { fas } from '@fortawesome/free-solid-svg-icons'
import { far } from '@fortawesome/free-regular-svg-icons'
import { fab } from '@fortawesome/free-brands-svg-icons'

/*
* jQuery Easing v1.4.1 - http://gsgd.co.uk/sandbox/jquery/easing/
* Open source under the BSD License.
* Copyright © 2008 George McGinley Smith
* All rights reserved.
* https://raw.github.com/gdsmith/jquery.easing/master/LICENSE
*/
library.add(fas, far, fab)
dom.watch()

$(document).on('ready turbolinks:load', function () {

  (function (factory) {
    if (typeof define === "function" && define.amd) {
      define(['jquery'], function ($) {
        return factory($);
      });
    } else if (typeof module === "object" && typeof module.exports === "object") {
      exports = factory(require('jquery'));
    } else {
      factory(jQuery);
    }
  })(function ($) {

    // Preserve the original jQuery "swing" easing as "jswing"
    if (typeof $.easing !== 'undefined') {
      $.easing['jswing'] = $.easing['swing'];
    }

    var pow = Math.pow,
      sqrt = Math.sqrt,
      sin = Math.sin,
      cos = Math.cos,
      PI = Math.PI,
      c1 = 1.70158,
      c2 = c1 * 1.525,
      c3 = c1 + 1,
      c4 = (2 * PI) / 3,
      c5 = (2 * PI) / 4.5;

    // x is the fraction of animation progress, in the range 0..1
    function bounceOut(x) {
      var n1 = 7.5625,
        d1 = 2.75;
      if (x < 1 / d1) {
        return n1 * x * x;
      } else if (x < 2 / d1) {
        return n1 * (x -= (1.5 / d1)) * x + .75;
      } else if (x < 2.5 / d1) {
        return n1 * (x -= (2.25 / d1)) * x + .9375;
      } else {
        return n1 * (x -= (2.625 / d1)) * x + .984375;
      }
    }

    $.extend($.easing,
      {
        def: 'easeOutQuad',
        swing: function (x) {
          return $.easing[$.easing.def](x);
        },
        easeInQuad: function (x) {
          return x * x;
        },
        easeOutQuad: function (x) {
          return 1 - (1 - x) * (1 - x);
        },
        easeInOutQuad: function (x) {
          return x < 0.5 ?
            2 * x * x :
            1 - pow(-2 * x + 2, 2) / 2;
        },
        easeInCubic: function (x) {
          return x * x * x;
        },
        easeOutCubic: function (x) {
          return 1 - pow(1 - x, 3);
        },
        easeInOutCubic: function (x) {
          return x < 0.5 ?
            4 * x * x * x :
            1 - pow(-2 * x + 2, 3) / 2;
        },
        easeInQuart: function (x) {
          return x * x * x * x;
        },
        easeOutQuart: function (x) {
          return 1 - pow(1 - x, 4);
        },
        easeInOutQuart: function (x) {
          return x < 0.5 ?
            8 * x * x * x * x :
            1 - pow(-2 * x + 2, 4) / 2;
        },
        easeInQuint: function (x) {
          return x * x * x * x * x;
        },
        easeOutQuint: function (x) {
          return 1 - pow(1 - x, 5);
        },
        easeInOutQuint: function (x) {
          return x < 0.5 ?
            16 * x * x * x * x * x :
            1 - pow(-2 * x + 2, 5) / 2;
        },
        easeInSine: function (x) {
          return 1 - cos(x * PI / 2);
        },
        easeOutSine: function (x) {
          return sin(x * PI / 2);
        },
        easeInOutSine: function (x) {
          return -(cos(PI * x) - 1) / 2;
        },
        easeInExpo: function (x) {
          return x === 0 ? 0 : pow(2, 10 * x - 10);
        },
        easeOutExpo: function (x) {
          return x === 1 ? 1 : 1 - pow(2, -10 * x);
        },
        easeInOutExpo: function (x) {
          return x === 0 ? 0 : x === 1 ? 1 : x < 0.5 ?
            pow(2, 20 * x - 10) / 2 :
            (2 - pow(2, -20 * x + 10)) / 2;
        },
        easeInCirc: function (x) {
          return 1 - sqrt(1 - pow(x, 2));
        },
        easeOutCirc: function (x) {
          return sqrt(1 - pow(x - 1, 2));
        },
        easeInOutCirc: function (x) {
          return x < 0.5 ?
            (1 - sqrt(1 - pow(2 * x, 2))) / 2 :
            (sqrt(1 - pow(-2 * x + 2, 2)) + 1) / 2;
        },
        easeInElastic: function (x) {
          return x === 0 ? 0 : x === 1 ? 1 :
            -pow(2, 10 * x - 10) * sin((x * 10 - 10.75) * c4);
        },
        easeOutElastic: function (x) {
          return x === 0 ? 0 : x === 1 ? 1 :
            pow(2, -10 * x) * sin((x * 10 - 0.75) * c4) + 1;
        },
        easeInOutElastic: function (x) {
          return x === 0 ? 0 : x === 1 ? 1 : x < 0.5 ?
            -(pow(2, 20 * x - 10) * sin((20 * x - 11.125) * c5)) / 2 :
            pow(2, -20 * x + 10) * sin((20 * x - 11.125) * c5) / 2 + 1;
        },
        easeInBack: function (x) {
          return c3 * x * x * x - c1 * x * x;
        },
        easeOutBack: function (x) {
          return 1 + c3 * pow(x - 1, 3) + c1 * pow(x - 1, 2);
        },
        easeInOutBack: function (x) {
          return x < 0.5 ?
            (pow(2 * x, 2) * ((c2 + 1) * 2 * x - c2)) / 2 :
            (pow(2 * x - 2, 2) * ((c2 + 1) * (x * 2 - 2) + c2) + 2) / 2;
        },
        easeInBounce: function (x) {
          return 1 - bounceOut(1 - x);
        },
        easeOutBounce: bounceOut,
        easeInOutBounce: function (x) {
          return x < 0.5 ?
            (1 - bounceOut(1 - 2 * x)) / 2 :
            (1 + bounceOut(2 * x - 1)) / 2;
        }
      });

  });
  // GREY SCALE

  (function ($) {
    "use strict"; // Start of use strict

    // Smooth scrolling using jQuery easing
    $('a.js-scroll-trigger[href*="#"]:not([href="#"])').click(function () {
      if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
        var target = $(this.hash);
        target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
        if (target.length) {
          $('html, body').animate({
            scrollTop: (target.offset().top - 70)
          }, 1000, "easeInOutExpo");
          return false;
        }
      }
    });

    // Closes responsive menu when a scroll trigger link is clicked
    $('.js-scroll-trigger').click(function () {
      $('.navbar-collapse').collapse('hide');
    });

    // Activate scrollspy to add active class to navbar items on scroll
    $('body').scrollspy({
      target: '#mainNav',
      offset: 100
    });

    // Collapse Navbar
    var navbarCollapse = function () {
      if ($("#mainNav").offset().top > 100) {
        $("#mainNav").addClass("navbar-shrink");
      } else {
        $("#mainNav").removeClass("navbar-shrink");
      }
    };
    // Collapse now if page is not at top
    navbarCollapse();
    // Collapse the navbar when page is scrolled
    $(window).scroll(navbarCollapse);

  })(jQuery); // End of use strict

  // FORM

  $("#next-1").click(function (e) {
    e.preventDefault();
    $("#second").show();
    $("#first").hide();
    $("#progressBar").css("width", "40%");
    $("#progressText").text("Step - 2");
  });

  $("#next-2").click(function (e) {
    e.preventDefault();
    $("#third").show();
    $("#second").hide();
    $("#progressBar").css("width", "60%");
    $("#progressText").text("Step - 3");
  });

  $("#next-3").click(function (e) {
    e.preventDefault();
    $("#fourth").show();
    $("#third").hide();
    $("#progressBar").css("width", "80%");
    $("#progressText").text("Step - 4");
  });

  $("#next-4").click(function (e) {
    e.preventDefault();
    $("#fifth").show();
    $("#fourth").hide();
    $("#progressBar").css("width", "100%");
    $("#progressText").text("Step - 5");
  });

  $("#prev-2").click(function (e) {
    e.preventDefault();
    $("#second").hide();
    $("#first").show();
    $("#progressBar").css("width", "20%");
    $("#progressText").text("Step - 1");
  })

  $("#prev-3").click(function (e) {
    e.preventDefault();
    $("#third").hide();
    $("#second").show();
    $("#progressBar").css("width", "40%");
    $("#progressText").text("Step - 2");
  })

  $("#prev-4").click(function (e) {
    e.preventDefault();
    $("#fourth").hide();
    $("#third").show();
    $("#progressBar").css("width", "60%");
    $("#progressText").text("Step - 3");
  });

  $("#prev-5").click(function (e) {
    e.preventDefault();
    $("#fifth").hide();
    $("#fourth").show();
    $("#progressBar").css("width", "80%");
    $("#progressText").text("Step - 4");
  });

  $('#myModal').modal()
});
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

//= require bootstrap-sprockets

import '../stylesheets/application'

require("trix")
require("@rails/actiontext")