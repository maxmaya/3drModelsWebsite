<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEndMasterPage.master" AutoEventWireup="true" CodeFile="Videos.aspx.cs" Inherits="Videos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">
    <div class="menu-height"></div>
    <section class="simple-content top-section">
        <div class="block">
            <div class="row">
                <div class="clear"></div>
                <div class="lst-pro">
                    <div class="container-fluid">
                        <div class="row">

                            <div class="col-sm-6 col-md-4 pro-block">
                                <div class="grid-box width-banner" style="background-image: url('/assets/img/khor-dubai-module-thumb.jpg')">
                                    <img src="/assets/img/khor-dubai-module-thumb.jpg" />
                                    <a class="link-overlay" href="#inline_content" target="_blank" title="Watch video" data="/assets/video/Khor%20Dubai%20presentation.mp4"></a>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4 pro-block">
                                <div class="grid-box width-banner" style="background-image: url('/assets/img/video-istanbul-big-city-thumb.jpg')">
                                    <img src="/assets/img/video-istanbul-big-city-thumb.jpg" />
                                    <a class="link-overlay" href="#inline_content" target="_blank" title="Watch video" data="/assets/video/ISTANBUL%20BIG%20CITY%20MODEL%20-%20VIDEOMAPPING.mp4"></a>
                                </div>
                            </div>


                            <div class="col-sm-6 col-md-4 pro-block">
                                <div class="grid-box width-banner" style="background-image: url('/assets/img/video-bvalgari-thumb.jpg')">
                                    <img src="/assets/img/video-bvalgari-thumb.jpg" />
                                    <a class="link-overlay" href="#inline_content" target="_blank" title="Watch video" data="/assets/video/BVLGARI VIDEO.mp4"></a>
                                </div>
                            </div>

                            <div class="col-sm-6 col-md-4 pro-block">
                                <div class="grid-box width-banner" style="background-image: url('/assets/img/video-Dubai-Harbour-thumb.jpg')">
                                    <img src="/assets/img/video-Dubai-Harbour-thumb.jpg" />
                                    <a class="link-overlay" href="#inline_content" target="_blank" title="Watch video" data="/assets/video/Dubai Harbour- Dubai's new iconic development by Meraas.mp4"></a>
                                </div>
                            </div>

                            <div class="col-sm-6 col-md-4 pro-block">
                                <div class="grid-box width-banner" style="background-image: url('/assets/img/video-malloftheworld-thumb.jpg')">
                                    <img src="/assets/img/video-malloftheworld-thumb.jpg" />
                                    <a class="link-overlay" href="#inline_content" target="_blank" title="Watch video" data="/assets/video/Mall of the World Dubai.mp4"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div style='display: none'>
            <div id='inline_content' style='padding: 10px; background: #fff;'>
                <video id="example_video_1" class="video-js vjs-default-skin vjs-big-play-centered"
                    controls preload="auto" width="1090" height=""
                    data-setup='{}'>
                    <!--
                                <source src="http://download.oln.tv/154094-27-Encoded-5687750-1080p.mp4" type='video/mp4'>
                                <source src="http://download.oln.tv/154094-27-Encoded-5687750-1080p.mp4" type='video/webm'>
                                <p class="vjs-no-js"> To view this video please enable JavaScript, and consider upgrading to a web browser that <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a> </p>
-->
                </video>

                <script src="//vjs.zencdn.net/7.0/video.min.js"></script>

            </div>

        </div>

        <a class="js-custom-close fn icon-cancel" style="display: none;"></a>
    </section>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderCss" runat="Server">
    <link href="/assets/css/colorbox.css" rel="stylesheet" />
    <link href="//vjs.zencdn.net/7.0/video-js.min.css" rel="stylesheet">
    <link href="/assets/css/videos/videos.css?v=<%= ConfigurationManager.AppSettings["CSSVersion"] %>" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderScripts" runat="Server">
    <script src="/assets/js/scrollmagic/minified/ScrollMagic.min.js"></script>
    <script src="/assets/js/scrollmagic/minified/plugins/animation.gsap.min.js"></script>
    <script src="/assets/js/scrollmagic/minified/plugins/debug.addIndicators.min.js"></script>
    <script src="/assets/js/jquery.colorbox.js"></script>
    <script src="/assets/js/videos/videos.js?v=<%= ConfigurationManager.AppSettings["JSVersion"] %>"></script>
    <%--<script type="text/javascript">
        $(function () {
            $('.js-video-play').VideoPopUp({
                backgroundColor: "#17212a",
                opener: "video1",
                idvideo: "v1",
                pausevideo: false
            });
        });
    </script>--%>

    <script type="text/javascript">
        
    </script>
</asp:Content>
