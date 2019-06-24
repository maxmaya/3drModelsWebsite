
$(function () {
    var controller = new ScrollMagic.Controller();
    $('.simple-content h1, .simple-content h2, .simple-content h3').each(function () {
        var $this = this;
        $(this).css('visibility', 'visible');
        splitWords($this);

        var headingTween = new TimelineLite().staggerFrom($(this).find('span.holder'), 1.5, {
            ease: Power4.easeOut,
            y: '100%',
            force3D: true,
            rotation: 0.01
        }, 0.10).delay(0.2);
        new ScrollMagic.Scene({
            triggerHook: 0.85,
            triggerElement: $this
        }).addTo(controller)//.addIndicators()
        .setTween(headingTween);
    });

    function splitWords(element) {
        var output = [];
        var words = $(element).html().split(' ');

        $.each(words, function (key, word) {
            if (word.trim().length) {
                var word_output = '<span class="word"><span class="holder">' + word + '</span></span>';

                if (word_output.indexOf('<br>') > -1) {
                    word_output = word_output.replace('<br>', '');
                    word_output += '<br />';
                }

                output.push(word_output);
            }
        });

        $(element).html(output.join(' '));
    }
    $('.img-uncover').each(function () {
        var $this = this;
        new ScrollMagic.Scene({
            triggerHook: 0.75,
            triggerElement: $this,
            //offset: '-10vh'
        }).addTo(controller)//.addIndicators()
            .setClassToggle($this, 'show');

        if ($(this).find('.icon-play').length) {
            TweenLite.from($(this).find('.icon-play'), 1.5, { ease: Elastic.easeOut.config(1, 0.4), scale: 0.5, opacity: 0, delay: 0.7, force3D: true, rotation: 0.01 }, "-=1.2");
        }
    });


    $('.fadeInUp').each(function () {
        var $this = this;
        $(this).css('visibility', 'visible');
        var tween = new TweenLite.from($(this), 1, { opacity: 0, y: 15, delay: 0.6 });
        new ScrollMagic.Scene({
            triggerHook: 0.9,
            triggerElement: $this
        }).addTo(controller)//.addIndicators()
            .setTween(
                tween
            );
    });

    $('.fadeIn').each(function () {
        var $this = this;
        $(this).css('visibility', 'visible');
        var tween = new TweenLite.from($(this), 1, { opacity: 0 });
        new ScrollMagic.Scene({
            triggerHook: 0.9,
            triggerElement: $this
        }).addTo(controller)//.addIndicators()
            .setTween(
                tween
            );
    });


})
