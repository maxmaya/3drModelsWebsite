<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEndMasterPage.master" AutoEventWireup="true" CodeFile="ClientList.aspx.cs" Inherits="ClientList" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">
    <div class="static-banner top-section news">
        <%-- <img src="/assets/img/img_static_banner.jpg" />--%>
    </div>
    <section class="simple-content top-section">
        <div class="block container">
            <div class="row">
                <div class="top-news">
                    <div class="lb-latest">
                        <div class="tableblock">
                            <div class="tableCell">
                                <h3>Client List</h3>
                            </div>
                        </div>
                    </div>
                    <%--<div class="h-news">
                        <p class="fadeInUp">
                            Over the years, 3dr models aquired a long list of trust lorem ipsum and Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim...
                        </p>
                        <a class="fadeInUp">See full client list below</a>
                    </div>--%>
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
                <div class="lst-news">
                    <div class="row">
                        <div class="col-xs-4">
                            <ul>
                                <li>1- 98 Architecture</li>
                                <li>2- A & T Design</li>
                                <li>3- A & N Architects</li>
                                <li>4- A.Lead Architects</li>
                                <li>5- Abu Dhabi Municipality</li>
                                <li>6- Abu Dhabi Free Zone</li>
                                <li>7- ADARC Associates</li>
                                <li>8- Adiranse Group</li>
                                <li>9- Aedas</li>
                                <li>10- AGC Design</li>
                                <li>11- AHL Design Workshop</li>
                                <li>12- Al Diar</li>
                                <li>13- Yau Lee Construction Co.</li>
                                <li>14- Al Manar</li>
                                <li>15- Al Fardan Developments</li>
                                <li>16- Al Gurg</li>
                                <li>17- Al Turath</li>
                                <li>18- Amasia International Architects</li>
                                <li>19- APT Architects</li>
                                <li>20- Archasia Hong Kong</li>
                                <li>21- Archiplus International</li>
                                <li>22- Architect N esign</li>
                                <li>23- ARK Associates</li>
                                <li>24- Arthur C.S. Kwok Architects</li>
                                <li>25- Arcteck</li>
                                <li>26- Artic</li>
                                <li>27- Arquitectonica</li>
                                <li>28- Associated Architects</li>
                                <li>29- AT Zero Design</li>
                                <li>30- Axis of Spin Architecture</li>
                                <li>31- Barrie Ho Architecture Interiors</li>
                                <li>32- Bawadi</li>
                                <li>33- Blue River Creative Studio</li>
                                <li>34- Bonyan</li>
                                <li>35- Benoy Architects</li>
                                <li>36- Best Wood Enterprises</li>
                                <li>37- Bur Salam</li>
                                <li>38- Burthill</li>
                                <li>39- Callison</li>
                                <li>40- Casa Design International</li>
                                <li>41- Carol R Johnson Associates Inc.</li>
                                <li>42- Cheung Kong-Yeung Architects</li>
                                <li>43- CHIH Design</li>
                                <li>44- Christopher Leung & Associates</li>
                                <li>45- Chung Wah Nan Architects</li>
                                <li>46- Children City</li>
                                <li>47- Compass Studio</li>
                                <li>48- CyS Associates</li>
                                <li>49- CL3 Architects</li>
                                <li>50- D.Heung & Associates</li>
                                <li>51- Dada Bhai</li>
                                <li>52- Damac</li>
                                <li>53- Daniel Chi & Associates</li>
                                <li>54- DCM Studios</li>
                                <li>55- Dennis Lau & Ng Chun Man</li>
                                <li>56- Design Consultants</li>
                                <li>57- Designvision Architects</li>
                                <li>58- DPWT Design</li>
                                <li>59- DSA</li>
                                <li>60- Dubarch</li>
                                <li>61- Dewan</li>
                                <li>62- Deyaar</li>
                                <li>63- Dubai Airport</li>
                                <li>64- Dubai Lagoon</li>
                                <li>65- Dubai Municipality</li>
                                <li>66- Dubai Rulers Office</li>
                                <li>67- Dubai World Trade Center</li>
                                <li>68- Edge Design Institute</li>
                            </ul>
                        </div>
                        <div class="col-xs-4">
                            <ul>
                                <li>69- Emarat</li>
                                <li>70- Emaar</li>
                                <li>71- E.C.C</li>
                                <li>72- EXON Architects</li>
                                <li>73- Fosters and partners</li>
                                <li>74- Gargash</li>
                                <li>75- Gehry and Partners</li>
                                <li>76- Gravity Partnership</li>
                                <li>77- Halcrow</li>
                                <li>78- Handi Architects</li>
                                <li>79- HOK</li>
                                <li>80- Henderson Land Development.</li>
                                <li>81- Hong Kong Jockey Club</li>
                                <li>82- Hong Kong Land</li>
                                <li>83- Hyspos Leisure Asia</li>
                                <li>84- Hopkins International</li>
                                <li>85- Ho & Partners Architects</li>
                                <li>86- Hsin Yieh Architects</li>
                                <li>87- Inegrated Design Associates</li>
                                <li>88- IRIS</li>
                                <li>89- JADL Design</li>
                                <li>90- Jason Yuen & Associates</li>
                                <li>91- John Tang & Associates</li>
                                <li>92- Jebel Ali Free Zone</li>
                                <li>93- Jebel Ali Hotel</li>
                                <li>94- Jumeirah International</li>
                                <li>95- KKS International Co</li>
                                <li>96- K.WAH Real Estates Co</li>
                                <li>97- Larsen A. & C.E.</li>
                                <li>98- LCK Architects</li>
                                <li>99- LCL Architects</li>
                                <li>100- LD Asia</li>
                                <li>101- Leigh & Orange</li>
                                <li>102- Lotus Architects</li>
                                <li>103- Lu Tang Lai Architects</li>
                                <li>104- LWK & Partners</li>
                                <li>105- M.Moser Associates</li>
                                <li>106- Madison Asia</li>
                                <li>107- MCAA</li>
                                <li>108- MetArch</li>
                                <li>109- Meraas</li>
                                <li>110- MLA Architects</li>
                                <li>111- Nagaconcepts</li>
                                <li>112- Nelson Chen Architects</li>
                                <li>113- North Point</li>
                                <li>114- Omar Yeung Architects</li>
                                <li>115- OMA_Ram Kohaas</li>
                                <li>116- Original Vision</li>
                                <li>117- Oqyana</li>
                                <li>118- P & T Architects & Engineers</li>
                                <li>119- Percy Thomas Partnership</li>
                                <li>120- Perkins</li>
                                <li>121- Richard Rogers (UK)</li>
                                <li>122- RMJM Hong Kong</li>
                                <li>123- Ronald Lu & Partners</li>
                                <li>124- Simon Kwan & Associates</li>
                                <li>125- Spcoedade De Jogos De</li>
                                <li>126- Macau</li>
                                <li>127- Swire Properties</li>
                                <li>128- Shun Tak Holdings</li>
                                <li>129- Spence Robinson Led</li>
                                <li>130- S.P.P</li>
                                <li>131- Sama Dubai</li>
                                <li>132- SOM</li>
                                <li>133- Steelman & Parners</li>
                                <li>134- Sultanate of Oman</li>
                                <li>135- Tamniyat</li>
                                <li>136- Tammer</li>
                            </ul>
                        </div>
                        <div class="col-xs-4">
                            <ul>
                                <li>137- Themar K.S.A</li>
                                <li>138- TFP Farrells</li>
                                <li>139- The Oval Partnership</li>
                                <li>140- Three's Architects</li>
                                <li>141- Venetian Marketing Services</li>
                                <li>142- WCWP International</li>
                                <li>143- Wong & Ouyang</li>
                                <li>144- Wong Tung & Partners</li>
                                <li>145- Zabeel</li>
                                <li>146- Architectural Services Dept</li>
                                <li>147- Airport Authority Hong Kong</li>
                                <li>148- Australand</li>
                                <li>149- Belt Collins International</li>
                                <li>150- B & V Water</li>
                                <li>151- Begin Land Limited</li>
                                <li>152- Capitaland (H.K)</li>
                                <li>153- Chanel Limited</li>
                                <li>154- Cheung Kong Property</li>
                                <li>155- Chinese Estates</li>
                                <li>156- Chun Wo</li>
                                <li>157- CODesign Ltd</li>
                                <li>158- Cypress Consultant Inter.</li>
                                <li>159- 5+ Design</li>
                                <li>160- Designcorp International</li>
                                <li>161- DFS Group Limited	</li>
                                <li>162- EDAW Earth Asia</li>
                                <li>163- Galaxy Resort & Casino</li>
                                <li>164- Gehry Partners</li>
                                <li>165- Gensler</li>
                                <li>166- Gammon Skanska</li>
                                <li>167- Goldin Properties Group</li>
                                <li>168- Hang Lung Properties</li>
                                <li>169- Highways Department</li>
                                <li>170- Headquarters Supplies Section</li>
                                <li>171- Hip Hing Building Co.</li>
                                <li>172- Hong Kong Housing Authority</li>
                                <li>173- Hutchinson Whampoa Properties</li>
                                <li>174- Hsin Yieh Architects & Engineers</li>
                                <li>175- H.K Science & Technology Parks</li>
                                <li>176- Hong Kong Movie City Company</li>
                                <li>177- ICAC</li>
                                <li>178- James Law Cybertecture Int.</li>
                                <li>179- KPF</li>
                                <li>180- Kerry Project Management (HK)</li>
                                <li>181- MAP Architectural & Planning</li>
                                <li>182- Macao Studio City</li>
                                <li>183- Ove Arup & Partners Hong Kong</li>
                                <li>184- Ocean Park Corporation</li>
                                <li>185- Planning Department</li>
                                <li>186- RAD Ltd.</li>
                                <li>187- Sino</li>
                                <li>188- Sun Hung Kai Real Estate</li>
                                <li>189- Taubman Asia Limited</li>
                                <li>190- Union Contractors</li>
                                <li>191- WATG</li>
                                <li>192- WDA Architects</li>
                                <li>193- Woods Bagot</li>
                                <li>194-Zaha hadid</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderCss" runat="Server">
    <link href="/assets/css/clientlist/clientlist.css?v=<%= ConfigurationManager.AppSettings["CSSVersion"] %>" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderScripts" runat="Server">
    <script src="/assets/js/scrollmagic/minified/ScrollMagic.min.js"></script>
    <script src="/assets/js/scrollmagic/minified/plugins/animation.gsap.min.js"></script>
    <script src="/assets/js/scrollmagic/minified/plugins/debug.addIndicators.min.js"></script>
    <script src="/assets/js/news/news.js?v=<%= ConfigurationManager.AppSettings["JSVersion"] %>"></script>
</asp:Content>
