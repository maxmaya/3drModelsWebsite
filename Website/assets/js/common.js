var scriptFile = "common";

$(function () {

    handleTopSection.init();
    handleMainMenu.init();
    handleMenuClickRedirectAnimation.init();
    handleScrollToSection.init();
    handleScrollToTop.init();
    handleCopyRightStatment.init($(".js-copyrights"));
    handleMenuColorScroll.init();
    handleMenuActivePage.init();
});

$(window).scroll(function () {
});
$(window).on('load', function () {
    $('#initPreloader').fadeOut(1000);
})
handleMenuActivePage = {
    init: function () {
        try {
            handleMenuActivePage.setup();
        } catch (e) {
            console.log(scriptFile + " " + this + " : " + e.message);
        }
    },
    setup: function () {
        var href = document.location.href;
        var page = href.substring(href.lastIndexOf('/') + 1, href.lastIndexOf('.'))
        $(".main-menu a").removeClass("active");
        $(".main-menu a[data-menu^='" + page.toLowerCase() + "'").addClass("active");

    }
}
function showLoader() {

    $('#preloader').css({
        //'opacity': 1,
        'transition': 'all 0.4s cubic-bezier(.24,.73,.52,.91)',
        'transform': 'translateX(0)'
    }).addClass('showing');
    //console.log('showing start');

    $('#preloader.showing').one("webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend",
        function (event) {
            $(window).scrollTop(0);
            if ($('#preloader').hasClass('showing')) {
                $('#preloader').removeClass('showing');
                //console.log('showing end');
            }
        });

    $('.main-menu__block ul').fadeOut();
}
handleCopyRightStatment = {
    init: function (a) {
        a.text("" + (new Date).getFullYear())
    }
}
handleScrollToSection = {
    init: function () {
        try {
            handleScrollToSection.setup();
        } catch (e) {
            console.log(scriptFile + " " + this + " : " + e.message);
        }
    },
    setup: function () {
        if ($('.scroll-to').length > 0) {

            $('.scroll-to').click(function () {
                var $this = $('.scroll-to')
                TweenLite.to(window, 0.8, {
                    scrollTo: $this.data('target'),
                    ease: Back.easeOut.config(1.5)
                });
                return false;
            })
        }
    }
}
handleMenuClickRedirectAnimation = {
    init: function () {
        try {
            handleMenuClickRedirectAnimation.setup();
        } catch (e) {
            console.log(scriptFile + " " + this + " : " + e.message);
        }

    },
    setup: function () {
        $(".js-menu").click(function (e) {
            e.preventDefault();
            
            var url = $(this).attr("data-url");
            showLoader();
            setTimeout(function () {
                window.location.href = url;
            }, 400);
          
        })
    }
}
handleMainMenu = {
    init: function () {
        try {
            handleMainMenu.setup();
        } catch (e) {
            console.log(scriptFile + " " + this + " : " + e.message);
        }
    },
    setup: function () {

        $(".toggle-menu,.toggle-target , .close-menu, .menu-cover").click(function (e) {
            var $this = $(this)
              , $toggleTarget = $($this.data('target'));
            if ($toggleTarget.hasClass('menu-visible')) {
                $toggleTarget.removeClass('menu-visible');
                $('.main-menu .main-menu-item--active').removeClass('main-menu-item--active');
                menuItemsAnimation.resume();

            } else {
                $toggleTarget.addClass('menu-visible');
                menuItemsAnimation.restart();

            }

            e.preventDefault();

        })

        /*
 Navigation
 */
        var menuItemsAnimation = new TimelineLite({
            paused: true
        }).staggerFrom("ul.main-menu li", 0.5, {
            opacity: 0,
            y: 10,
            x: 20,
            rotation: "-10deg",
            scale: 1.2,
            onComplete: function (tween) {
                var $a = $(tween.target).find('a');
                if ($a.data('active')) {
                    $a.addClass($a.data('active'));
                }
            },
            onCompleteParams: ["{self}"]
        }, 0.10)
            .from('.social-menu-nav', 0.1, {
                opacity: 0
            }, "-=0.25")
            .staggerFrom(".social-menu-nav li", 0.5, {
                opacity: 0,
                y: 10
            }, 0.10, "-=0.25");

        // Toggle target script

    },
    animate: function () {

        $("ul.main-menu a").each(function (index) {
            (function (that, i) {
                var t = setTimeout(function () {
                    $(that).addClass("rotateInUpRight")
                }, 100 * i);
            }
            )(this, index);
        })
    },
    clearAnimation: function () {
        $("ul.main-menu a").each(function (index) {

            $(this).removeClass("rotateInUpRight")

        })
    }

}

handleTopSection = {

    init: function () {
        try {

            this.setup();
        } catch (e) {
            console.log(scriptFile + " " + this + " : " + e.message);
        }
    },
    setup: function () {
        if ($('.top-section.home').length) {

            var foo = document.getElementById('top')
            // var bar = document.getElementById('video');

            fit(foo, {
                cover: true,
                watch: true
            });
        }

    }
}
utils = {
    isMobile: function () {
        return /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);
    },
    getParameterByName: function (name) {
        name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
        var regexS = "[\\?&]" + name + "=([^&#]*)";
        var regex = new RegExp(regexS);
        var results = regex.exec(window.location.href);
        if (results == null)
            return "";
        else
            return decodeURIComponent(results[1].replace(/\+/g, " "));
    },
    getOS: function () {
        var userAgent = window.navigator.userAgent
          , platform = window.navigator.platform
          , macosPlatforms = ['Macintosh', 'MacIntel', 'MacPPC', 'Mac68K']
          , windowsPlatforms = ['Win32', 'Win64', 'Windows', 'WinCE']
          , iosPlatforms = ['iPhone', 'iPad', 'iPod']
          , os = null;

        if (macosPlatforms.indexOf(platform) !== -1) {
            os = 'Mac OS';
        } else if (iosPlatforms.indexOf(platform) !== -1) {
            os = 'iOS';
        } else if (windowsPlatforms.indexOf(platform) !== -1) {
            os = 'Windows';
        } else if (/Android/.test(userAgent)) {
            os = 'Android';
        } else if (!os && /Linux/.test(platform)) {
            os = 'Linux';
        }

        return os;
    },

    setCookie: function (cname, cvalue, exdays) {
        var d = new Date();
        d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
        var expires = "expires=" + d.toGMTString();
        var path = "path=/";
        document.cookie = cname + "=" + cvalue + "; " + expires + "; " + path;
    },

    getCookie: function (cname) {
        var name = cname + "=";
        var ca = document.cookie.split(';');
        for (var i = 0; i < ca.length; i++) {
            var c = ca[i].trim();
            if (c.indexOf(name) == 0)
                return c.substring(name.length, c.length);
        }
        return "";
    },
    scrollToView: function (element) {
        var offset = element.offset().top;
        if (!element.is(":visible")) {
            element.css({ "visibility": "hidden" }).show();
            var offset = element.offset().top;
            element.css({ "visibility": "", "display": "" });
        }

        var visible_area_start = $(window).scrollTop();
        var visible_area_end = visible_area_start + window.innerHeight;

        if (offset < visible_area_start || offset > visible_area_end) {
            // Not in view so scroll to it
            $('html,body').animate({ scrollTop: offset - window.innerHeight / 4 }, 1000);
            return false;
        }
        return true;
    }
}
var handleScrollToTop = {
    init: function () {
        try {
            var scrolltop = new handleScrollToTop.setupMethod();

        } catch (err) {
            console.log("to top element not found: " + err);
        }
    },
    setupMethod: function () {
        $(window).scroll(function () {

            if ($(this).scrollTop() > 100) {
                $('#js-2top').fadeIn();
            } else {
                $('#js-2top').fadeOut();
            }
        });

        $('#js-2top').click(function () {
            $("html, body").animate({
                scrollTop: 0
            }, 600);
            return false;
        });
    }

}
var handleMenuColorScroll = {
    init: function () {
        try {
            if ($(".top-section.home").length > 0 || $(".top-section.news").length > 0) {
                var scrolltop = new handleMenuColorScroll.setupMethod();

            } else {
                $('.toggle-menu').addClass("invert");
            }

        } catch (err) {
            console.log("to top element not found: " + err);
        }
    },
    setupMethod: function () {
        $(window).scroll(function () {
            var mHeight = $(".top-section").innerHeight();
            if ($(this).scrollTop() > mHeight) {
                $('.toggle-menu').addClass("invert");
            } else {
                $('.toggle-menu').removeClass("invert");
            }
        });

        $('#js-2top').click(function () {
            $("html, body").animate({
                scrollTop: 0
            }, 600);
            return false;
        });
    }

}
