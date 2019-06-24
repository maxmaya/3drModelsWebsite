<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEndMasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">
    <div class="menu-height"></div>
    <section class="simple-content top-section">
        <div class="block">
            <div class="row">
                <div class="col-md-7">
                    <h1>the largest <br/>model making company <b>in the world</b></h1>
                    <p class="fadeInUp">
                        Established in 1989, 3dr Models specializes in miniature architectural, mechanical, 
marine and industrial models, as well as its transportation, modification and storage.
3dr Models currently have <b>18% of the world’s model making market</b>, with over <b>500 employees</b> and a production of <b>over 40 models per month</b>. Their latest lproject is a model for Jumeirah 
Garden, a AED 350 billion development intended to reshape the Satwa Area in Dubai. 
A massive development spanning over 820,000 sqm. Models by 3dr Models have been 
showcased at Cityscape Dubai, and Cityscape Qatar and are currently receiving orders for 
Cityscape Abu Dhabi.
                    </p>
                </div>
                <div class="col-md-5 img">
                    <div class="img-uncover grey">
                        <img src="/assets/img/img_about_1.jpg" />
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="simple-content about-1">
        <div class="block">
            <div class="row">
                <div class="col-sm-7 col-sm-push-5 right">
                    <div class="img-uncover grey">
                        <img src="/assets/img/img_about_4.jpg">
                    </div>
                    <h2>A long journey driven by <strong>passion</strong></h2>
                    <p class="fadeInUp">
                       3dr Models was founded by Dani Antoun Bterrani, a Lebanese national born in Kuwait. With a major in Computer Science, and an architect father, Bterrani soon made Model Making his calling.
                    </p>

                </div>
                <div class="col-sm-5 col-sm-pull-7 left">
                    <div class="img-uncover grey">
                        <img src="/assets/img/img_about_2.jpg">
                    </div>
                    <div class="img-uncover grey">
                        <img src="/assets/img/img_about_3.jpg">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="simple-content about-2">
        <div class="block">
            <div class="row">
                <div class="col-sm-7 left">
                    <div class="img-uncover grey">
                        <img src="/assets/img/img_about_4.jpg" />
                    </div>
                    <h2><strong>A successful</strong>partnership</h2>
                    <p class="fadeInUp">
                        At the age of 18, Bterrani opened his first model making shopping workshop in Dubai, with five employees working under him. While in Dubai, Bterrani met his partner Ray Chueng. Upon realizing their identical visions, 3dr Models was created.
                    </p>
                </div>
                <div class="col-sm-5 right">
                    <div class="img-uncover grey">
                        <img src="/assets/img/img_about_2.jpg" />
                    </div>
                    <div class="img-uncover grey">
                        <img src="/assets/img/img_about_3.jpg" />
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderCss" runat="Server">
    <link href="/assets/css/about/about.css?v=<%= ConfigurationManager.AppSettings["CSSVersion"] %>" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderScripts" runat="Server">
    <script src="/assets/js/scrollmagic/minified/ScrollMagic.min.js"></script>
    <script src="/assets/js/scrollmagic/minified/plugins/animation.gsap.min.js"></script>
    <script src="/assets/js/scrollmagic/minified/plugins/debug.addIndicators.min.js"></script>
    <script src="/assets/js/about/about.js?v=<%= ConfigurationManager.AppSettings["JSVersion"] %>"></script>
</asp:Content>
