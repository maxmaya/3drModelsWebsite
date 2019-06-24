<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEndMasterPage.master" AutoEventWireup="true" CodeFile="Projects.aspx.cs" Inherits="Projects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">
    <div class="menu-height"></div>
    <section class="simple-content top-section">
        <div class="block">
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group filter-ctx">
                    <%--    <select class="form-control project-filter" id="ProjectFilter">
                            <option value="-1">All</option>
                            <option value="general">General</option>
                            <option value="prototype">Prototype</option>
                            <option value="schematic">Schematic</option>
                            <option value="masterplan">Masterplan</option>
                            <option value="interior">Interior</option>
                            <option value="mechanical">Mechanical</option>
                            <option value="marine">Marine</option>
                            <option value="industrial">Industrial</option>
                            <option value="prototype">Prototype</option>
                        </select>--%>

                        <asp:DropDownList ID="ddlProjectFilter"
                            AutoPostBack="True" CssClass="form-control project-filter"
                            OnSelectedIndexChanged="ddlProjectFilter_SelectedIndexChanged"
                            runat="server">

                         <%--   <asp:ListItem Selected="True" Value="all"> All </asp:ListItem>
                            <asp:ListItem Value="general">General</asp:ListItem>
                            <asp:ListItem Value="prototype">Prototype</asp:ListItem>
                            <asp:ListItem Value="schematic">Schematic</asp:ListItem>
                            <asp:ListItem Value="masterplan">Masterplan</asp:ListItem>
                            <asp:ListItem Value="interior">Interior</asp:ListItem>
                            <asp:ListItem Value="mechanical">Mechanical</asp:ListItem>
                            <asp:ListItem Value="marine">Marine</asp:ListItem>
                            <asp:ListItem Value="industrial">Industrial</asp:ListItem>--%>

                        </asp:DropDownList>
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="clear"></div>
                <div class="lst-pro">
                    <div class="container-fluid">
                        <div class="row">

                            <asp:Repeater ID="rptProject" runat="server" OnItemDataBound="rptProject_ItemDataBound">
                                <ItemTemplate>
                                    <div class="col-sm-6 col-md-4 pro-block">
                                        <div class="img-uncover grey">
                                            <a class="lumos-link lnk-pro" data-lumos="group<%# Container.ItemIndex %>" href="<%# Eval("projectImage") %>">
                                                <img src="<%# Eval("projectImage") %>" >
                                            </a>
                                            <div style="display: none;">
                                                <asp:Repeater ID="rptProjectImages" runat="server">
                                                    <ItemTemplate>
                                                        <a class="lumos-link lnk-pro" data-lumos="group<%# Eval("imageGroup") %>" href="<%# Eval("imagePath") %>">
                                                         <%--   <img src="<%# Eval("imageThumbPath") %>"/>--%>
                                                        </a>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </div>
                                        </div>
                                        <div class="pro-title">
                                            <a>
                                                <h3><%# Eval("projectName") %></h3>
                                                <span class="count">
                                                    <span class="dg-1">1</span>
                                                    <span class="sep">/</span>
                                                    <span class="dg-2">-</span>
                                                </span>
                                            </a>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderCss" runat="Server">
    <link href="/assets/css/jquery-ui.css" rel="stylesheet" />
    <link href="/assets/css/lumos.css" rel="stylesheet" />
    <link href="/assets/css/projects/projects.css?v=<%= ConfigurationManager.AppSettings["CSSVersion"] %>" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderScripts" runat="Server">
    <script src="/assets/js/scrollmagic/minified/ScrollMagic.min.js"></script>
    <script src="/assets/js/scrollmagic/minified/plugins/animation.gsap.min.js"></script>
    <script src="/assets/js/scrollmagic/minified/plugins/debug.addIndicators.min.js"></script>
    <script src="/assets/js/jquery-ui.min.js"></script>
    <script src="/assets/js/lumos.js"></script>
    <script src="/assets/js/projects/projects.js?v=<%= ConfigurationManager.AppSettings["JSVersion"] %>"></script>
</asp:Content>
