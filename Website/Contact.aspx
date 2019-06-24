<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEndMasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">
    <div class="menu-height"></div>
    <section class="simple-content top-section">
        <div class="block">
            <div class="row">
                <div class="col-md-6">
                    <h2>let’s start a 
                        <br />
                        new<strong> adventure</strong></h2>
                    <div class="col-md-12 fadeInUp padding-left-0">
                        <div class="visitus">
                            <div class="lb-title col-md-4">United Arab Emirates</div>
                            <div class="lb-brief col-md-8">
                                <ul>
                                    <li><b>Al Quoz Industrial Region</b></li>
                                    <li><b>P.O.Box:  54136 Dubai, U.A.E</b></li>
                                    <li><b>P</b>  +971 4 3474898 </li>
                                    <li><b>F</b>  +971 4 3471727 </li>
                                </ul>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="mailus">
                            <div class="lb-title col-md-4"></div>
                            <div class="lb-brief col-md-8">
                                <ul>
                                    <li><a href="mailto:sales@3drmodels.com">sales@3drmodels.com</a></li>
                                    <li><a href="mailto:info@3drmodels.com">info@3drmodels.com</a></li>
                                </ul>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <%------------%>
                        <div style="height:10px;"></div>
                        <div class="visitus">
                            <div class="lb-title col-md-4">Hong Kong</div>
                            <div class="lb-brief col-md-8">
                                <ul>
                                    <li><b>Flat B, 18/F., Two Chinachem Plaza,</b></li>
                                    <li><b>68 Connaught Road Central, Hong Kong</b></li>
                                    <li><b>P</b>  +852 2557 0201 </li>
                                    <li><b>F</b>  +852 8343 8621 </li>
                                </ul>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="mailus">
                            <div class="lb-title col-md-4"></div>
                            <div class="lb-brief col-md-8">
                                <ul>
                                    <li><a href="mailto:info@rjmodels.com.hk">info@rjmodels.com.hk</a></li>
                                  
                                </ul>
                            </div>
                            <div class="clear"></div>
                        </div>

                    </div>
                </div>
                <div class="col-md-6">
                    <div class="map fadeInUp">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7224.508011350952!2d55.215332!3d25.127102000000004!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb16bd9991b35dcbf!2s3dr+Models!5e0!3m2!1sen!2sus!4v1546002936537" width="600" height="650" frameborder="0" style="border: 0" allowfullscreen></iframe>


                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderCss" runat="Server">
    <link href="/assets/css/contact/contact.css?v=<%= ConfigurationManager.AppSettings["CSSVersion"] %>" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderScripts" runat="Server">
    <script src="/assets/js/scrollmagic/minified/ScrollMagic.min.js"></script>
    <script src="/assets/js/scrollmagic/minified/plugins/animation.gsap.min.js"></script>
    <script src="/assets/js/scrollmagic/minified/plugins/debug.addIndicators.min.js"></script>
    <script src="/assets/js/contact/contact.js?v=<%= ConfigurationManager.AppSettings["JSVersion"] %>"></script>
</asp:Content>
