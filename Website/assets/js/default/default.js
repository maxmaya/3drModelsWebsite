$(function () {

    handleSlickSlider.init();
    handlePageAnimation.init();

    if ($('#video').length) {
        $('#video').get(0).play()
    }

})

handlePageAnimation = {
    init: function () {
        try {
            handlePageAnimation.setup();
        } catch (e) {

        }
    }, setup: function () {

        var controller = new ScrollMagic.Controller();
        if ($('.animate-section').length) {

            var servicesTween = new TimelineLite()
                .staggerFrom($('.animate-section .animate-item img, .animate-section .animate-item object'), 1, { scale: 0.8, opacity: 0 }, 0.20)
                .staggerFrom($('.animate-section .animate-item h2'), 1, { opacity: 0, y: 15 }, 0.20, 0.20)
                .staggerFrom($('.animate-section .animate-item h3'), 1, { opacity: 0, y: 15 }, 0.20, 0.3)
                .staggerFrom($('.animate-section .animate-item p'), 1, { opacity: 0, y: 15 }, 0.20, 0.6)



            new ScrollMagic.Scene({
                triggerHook: 0.85,
                triggerElement: '.animate-section .section-block'
            }).addTo(controller)
                .setTween(servicesTween);


            $('.animate-section .animate-item').hover(
                function () {
                    if ($(this).find('object').length>0)
                    $(this).find('object')[0].contentDocument.Play();
                }, function () {
                    if ($(this).find('object').length > 0)
                    $(this).find('object')[0].contentDocument.Stop();
                }
            );


        }

    }
}
handleSlickSlider = {
    init: function () {
        this.setup();
    },
    setup: function () {
        var time = 4;
        var $bar,
            $slick,
            isPause,
            isClickPause,
            tick,

            percentTime;

        $slick = $('.js-slider');
        $slick.slick({
            draggable: true,
            adaptiveHeight: false,
            dots: true,
            mobileFirst: true,
            pauseOnDotsHover: true,
            prevArrow: false,
            nextArrow: false,
            appendDots: $(".slick-ctrl")
        });

        $slick.on('beforeChange', function () {
            startProgressbar();
        });

        $slick.mouseover(function () {
            $(".progress-state").addClass("pause");
        });

        $slick.mouseout(function () {

            $(".progress-state").removeClass("pause");
        });

        $bar = $('.slider-progress .progress');

        $('.js-slider,.slick-ctrl').on({
            mouseenter: function () {
                isPause = true;
            },
            mouseleave: function () {
                isPause = false;
            }
        })
        $(".progress-state").click(function () {
            if (!$(this).hasClass("pause-click")) {
                $(this).addClass("pause-click")
                isClickPause = true;
            } else {
                $(this).removeClass("pause-click")
                isClickPause = false;
            }

        })

        function startProgressbar() {
            resetProgressbar();
            percentTime = 0;
            isClickPause = false;
            isPause = false;
            tick = setInterval(interval, 10);
        }

        function interval() {
            if (isPause === false && isClickPause === false) {
                percentTime += (100 / (time * 1000 / 10)) + 0.01;

                updateProgress(percentTime);
                if (percentTime >= 100) {

                    $slick.slick('slickNext');

                }
            }
        }

        function resetProgressbar() {
            //$bar.css({
            //    width: 0 + '%'
            //});
            updateProgress(0);
            clearTimeout(tick);
        }
        function updateProgress(v) {
            var progressCircle = document.querySelector("circle.progress");
            var percentageText = document.querySelector(".chart-number");
            progressCircle.style.strokeDashoffset = (314.16 - ((v / 100) * 314.16));
            // percentageText.textContent = v + "%";
        }
        startProgressbar();

    }
}