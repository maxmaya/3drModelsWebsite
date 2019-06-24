<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEndMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="/assets/css/default/abovethefold.css" rel="stylesheet" />
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">

    <section class="top-section home" id="top">
        <div class="top-section-wrapper">
           <%-- <video id="video" width="1280" loop muted playsinline height="720">
                <source src="/assets/video/intro-video.mp4" type="video/mp4">
            </video>--%>
            <img src="/assets/img/banner_home_page.jpg" />
            <div class="intro-section">
                <h3>3dr Models
                </h3>
                <h2>
                    <span>Worldwide Architectural Model Making Services</span>
                </h2>
                <div class="decoration-line"></div>
                <a onclick="utils.scrollToView($('.left-box'))" class="lnk">More about the company</a>
            </div>
        </div>
        <a href="#" class="scroll-to" data-target=".carousel-section"><span>Scroll</span></a>
    </section>
    <section class="carousel-section" style="min-height: 300px;">

        <div class="hp-slick">
            <div class="slider js-slider">
                <div class="row-item">
                    <div class="left-box">
                        <h2>The largest model making company in the world <span>since 1989.</span></h2>
                    </div>

                    <div class="right-box">
                        <div class="number">18%</div>
                        <div class="desc">
                            of the world’s model making market with a production of over 40 models per month
                        </div>
                    </div>
                </div>
                <div class="row-item">
                    <div class="left-box">
                        <h2>We reached a growth of approximately <span>300% in the past five years.</span></h2>
                    </div>

                    <div class="right-box">
                        <div class="number"><img src="/assets/img/icon_signal.png" /></div>
                        <div class="desc">
                            We are looking to target 40-50% of the global market over the next ten years
                        </div>
                    </div>
                </div>
                <div class="row-item">
                    <div class="left-box">
                        <h2>Since our inception, we have <span>completed over 5000 projects.</span></h2>
                    </div>

                    <div class="right-box">
                        <div class="number"><img src="/assets/img/icon_burj_arab.png" /></div>
                        <div class="desc">
                            Such as World Trade Center, NY. Hong Kong Airport, Burj Al Arab, The Pinnacle Tower, London
                        </div>
                    </div>
                </div>
            </div>
            <div class="slick-ctrl">
                <svg id="prg-bar" viewbox="0 0 114 114">
                    <circle class="base" r="50" cx="57" cy="57"></circle>
                    <circle class="progress" transform="rotate(-90 57 57)" r="50" cx="57" cy="57"></circle>
                    <g class="state">
                        <text x="50%" y="50%" class="state-sym"></text>
                    </g>
                </svg>
                <span class="progress-state"></span>
            </div>

            <div class="hexagon_animation hexagon_animation-default services__hexagon" style="opacity: 0.1;">
                <div class="hexagon_animation__inner">
                    <div class="hexagon_animation__svg">
                        <svg class="icon-decor-part1 ">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-decor-part1"></use>
                        </svg>
                    </div>
                    <div class="hexagon_animation__svg">
                        <svg class="icon-decor-part1 ">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-decor-part1"></use>
                        </svg>
                    </div>
                </div>
            </div>
        </div>

    </section>
    <section class="about-section" style="min-height: 300px;">
        <div class="site-block container-1">
            <div class="title-ctx">
                <h2 class="section-title">Some of our work</h2>
            </div>
            <div class="clear"></div>
            <div class="col-xs-6 col-sm-4 col-md-4">
                <img src="/assets/img/img_square_1.jpg" />
                <h3>Swiss Re Tower Office Building Model</h3>
                <p>
                    The Swiss Re Tower Office Building model was created in the request by the world-renowned Designer Foster + Partners. It has a bullet-like outer shape with different diameters on each level.
                </p>
            </div>
            <div class="col-xs-6 col-sm-4 col-md-4">
                <img src="/assets/img/img_square_2.jpg" />
                <h3>BujiArab Hotel Model in Dubai by Atkins</h3>
                <p>
                    This model is for the Burj Al Arab Hotel in Dubai. The hotel is built on an artificial island in the Persian Gulf, 280 meters from the shore of the beach. It is connected to the land by a curved road. It has 56 floors and 321 meters high.
                </p>
            </div>
            <div class="col-sm-12 col-sm-4 col-md-4">
                <img src="/assets/img/img_square_3.jpg" />
                <h3>Interior Model of HSBC Headquarter, in Hong Kong</h3>
                <p>
                    This interior model of the building entrance lobby is a partial scale model of the 47-story HSBC Headquarter tower, which is designed by Sir Norman Foster and is now served as one of the magnificent iconic structure in Hong Kong.
                </p>
            </div>

        </div>

        <a class="read-more" href="/Projects.aspx">More Works</a>
    </section>
    <section class="services-section animate-section" style="min-height: 300px;">
        <div class="section-block container-2">
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="title animate-item">
                    <h2>
                        <span>What</span>
                        <br />
                        WE DO</h2>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4">
                <a class="item animate-item">
                    <object type="image/svg+xml" data="/assets/img/coffee.svg" width="180" height="72" id="svg_coffe"></object>

                    <h3>Conceptual Ideas</h3>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elitse eiusmod tempor incididunt ut labore et dolore magna aliqua. enim ad minim veniam, quis nostrud exercitation ullamco nisi ut aliquip ex ea commodo consequat
                    </p>
                </a>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4">
                <a class="item animate-item">
                    <object type="image/svg+xml" data="/assets/img/office.svg" width="180" height="72" id="svg_office"></object>

                    <h3>3D Design</h3>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elitse eiusmod tempor incididunt ut labore et dolore magna aliqua. enim ad minim veniam, quis nostrud exercitation ullamco nisi ut aliquip ex ea commodo consequat
                    </p>
                </a>
            </div>

            <div class="col-xs-12 col-sm-6 col-md-4">
                <a class="item animate-item">
                    <object type="image/svg+xml" data="/assets/img/plans.svg" width="180" height="72" id="svg_plans"></object>

                    <h3>Select Material</h3>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elitse eiusmod tempor incididunt ut labore et dolore magna aliqua. enim ad minim veniam, quis nostrud exercitation ullamco nisi ut aliquip ex ea commodo consequat
                    </p>
                </a>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4">
                <a class="item animate-item">
                    <object type="image/svg+xml" data="/assets/img/office.svg" width="180" height="72" id="svg_office_1"></object>

                    <h3>3D Printing</h3>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elitse eiusmod tempor incididunt ut labore et dolore magna aliqua. enim ad minim veniam, quis nostrud exercitation ullamco nisi ut aliquip ex ea commodo consequat
                    </p>
                </a>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4">
                <a class="item animate-item">
                    <object type="image/svg+xml" data="/assets/img/cartRun.svg" width="180" height="72" id="svg_cartRuns"></object>

                    <h3>Model Delivery</h3>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elitse eiusmod tempor incididunt ut labore et dolore magna aliqua. enim ad minim veniam, quis nostrud exercitation ullamco nisi ut aliquip ex ea commodo consequat
                    </p>
                </a>
            </div>

        </div>
    </section>


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderCss" runat="Server">
    <link href="/assets/css/default/default.css?v=<%= ConfigurationManager.AppSettings["CSSVersion"] %>" rel="stylesheet" />
    <link href="/assets/css/slick.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderScripts" runat="Server">
    <script src="/assets/js/scrollmagic/minified/ScrollMagic.min.js"></script>
    <script src="/assets/js/scrollmagic/minified/plugins/animation.gsap.min.js"></script>
    <script src="/assets/js/scrollmagic/minified/plugins/debug.addIndicators.min.js"></script>
    <script src="/assets/js/slick.min.js"></script>
    <script src="/assets/js/default/default.js?v=<%= ConfigurationManager.AppSettings["JSVersion"] %>"></script>

</asp:Content>

