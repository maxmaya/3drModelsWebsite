var handleVideoPlayer = {
    init: function () {
        try {
            var prodVid = new handleVideoPlayer.setup();
            var handlerSetup = new handleVideoPlayer.handleProductionItemClick();
        }
        catch (err) {
            console.log("handleVideoPlayer: " + err);
        }
    }
    , setup: function () {
        $(".js-custom-close").click(function () {
            $.colorbox.close();
        })
        $(document).bind('cbox_closed', function () {
            player.pause();
            $.colorbox.close();
        });
        $(".link-overlay").colorbox({
            inline: true
            , width: '80%'
            , closeButton: false
            , onOpen: function () {
                $(".js-custom-close").show();
                $(document.body).css('overflow', 'hidden');
            }
            , onClosed: function () {
                $(".js-custom-close").hide();
                $(document.body).css('overflow', '');
            }
        });
        // $('#cboxClose').remove();
    }
    , handleProductionItemClick: function () {
        $(".link-overlay").click(function () {
            var tempSRC = $(this).attr("data");
            player = videojs('example_video_1', {
                autoplay: true
            });
            player.src({
                "type": "video/mp4"
                , "src": "" + tempSRC
            });
            player.ready(function () {
                this.play();
                var t = setTimeout($.colorbox.resize(), 1000);
            });
            player.on('resolutionchange', function () {
                console.info('Source changed to %s', player.src())
            })
            player.play();
            $.colorbox.resize();
            setTimeout(function () {
                $.colorbox.resize();
            }, 1000);
        })

       
    }
}


$(function () {

    handleVideoPlayer.init();
})