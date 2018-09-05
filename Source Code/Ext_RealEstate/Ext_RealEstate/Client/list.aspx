<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="Ext_RealEstate.Client.list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div role="main" class="main pgl-bg-grey">
        <!-- Begin page top -->
        <section class="page-top">
            <div class="container">
                <div class="page-top-in">
                    <h2><span>List View</span></h2>
                </div>
            </div>
        </section>
        <!-- End page top -->

        <!-- Begin Advanced Search -->
        <section class="pgl-advanced-search pgl-bg-light">
            <div class="container">
                <form name="advancedsearch">
                    <div class="row">
                        <div class="col-xs-6 col-sm-3">
                            <div class="form-group">
                                <label class="sr-only" for="property-status">Property Status</label>
                                <select id="property-status" name="property-status" data-placeholder="Property Status" class="chosen-select">
                                    <option selected="selected" value="Property Status">Property Status</option>
                                    <option value="sale">For Sale</option>
                                    <option value="rent">For Rent</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                            <div class="form-group">
                                <label class="sr-only" for="location">Location</label>
                                <select id="location" name="location" data-placeholder="Location" class="chosen-select">
                                    <option selected="selected" value="Location">Location</option>
                                    <option value="United States">United States</option>
                                    <option value="United Kingdom">United Kingdom</option>
                                    <option value="Afghanistan">Afghanistan</option>
                                    <option value="Aland Islands">Aland Islands</option>
                                    <option value="Albania">Albania</option>
                                    <option value="Algeria">Algeria</option>
                                    <option value="American Samoa">American Samoa</option>
                                    <option value="Andorra">Andorra</option>
                                    <option value="Angola">Angola</option>
                                    <option value="Anguilla">Anguilla</option>
                                    <option value="Antarctica">Antarctica</option>
                                    <option value="Antigua and Barbuda">Antigua and Barbuda</option>
                                    <option value="Argentina">Argentina</option>
                                    <option value="Armenia">Armenia</option>
                                    <option value="Aruba">Aruba</option>
                                    <option value="Australia">Australia</option>
                                    <option value="Austria">Austria</option>
                                    <option value="Azerbaijan">Azerbaijan</option>
                                    <option value="Bahamas">Bahamas</option>
                                    <option value="Bahrain">Bahrain</option>
                                    <option value="Bangladesh">Bangladesh</option>
                                    <option value="Barbados">Barbados</option>
                                    <option value="Belarus">Belarus</option>
                                    <option value="Belgium">Belgium</option>
                                    <option value="Belize">Belize</option>
                                    <option value="Benin">Benin</option>
                                    <option value="Bermuda">Bermuda</option>
                                    <option value="Bhutan">Bhutan</option>
                                    <option value="Bolivia, Plurinational State of">Bolivia, Plurinational State of</option>
                                    <option value="Bonaire, Sint Eustatius and Saba">Bonaire, Sint Eustatius and Saba</option>
                                    <option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
                                    <option value="Botswana">Botswana</option>
                                    <option value="Bouvet Island">Bouvet Island</option>
                                    <option value="Brazil">Brazil</option>
                                    <option value="British Indian Ocean Territory">British Indian Ocean Territory</option>
                                    <option value="Brunei Darussalam">Brunei Darussalam</option>
                                    <option value="Bulgaria">Bulgaria</option>
                                    <option value="Burkina Faso">Burkina Faso</option>
                                    <option value="Burundi">Burundi</option>
                                    <option value="Cambodia">Cambodia</option>
                                    <option value="Cameroon">Cameroon</option>
                                    <option value="Canada">Canada</option>
                                    <option value="Cape Verde">Cape Verde</option>
                                    <option value="Cayman Islands">Cayman Islands</option>
                                    <option value="Central African Republic">Central African Republic</option>
                                    <option value="Chad">Chad</option>
                                    <option value="Chile">Chile</option>
                                    <option value="China">China</option>
                                    <option value="Christmas Island">Christmas Island</option>
                                    <option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option>
                                    <option value="Colombia">Colombia</option>
                                    <option value="Comoros">Comoros</option>
                                    <option value="Congo">Congo</option>
                                    <option value="Congo, The Democratic Republic of The">Congo, The Democratic Republic of The</option>
                                    <option value="Cook Islands">Cook Islands</option>
                                    <option value="Costa Rica">Costa Rica</option>
                                    <option value="Cote D'ivoire">Cote D'ivoire</option>
                                    <option value="Croatia">Croatia</option>
                                    <option value="Cuba">Cuba</option>
                                    <option value="Curacao">Curacao</option>
                                    <option value="Cyprus">Cyprus</option>
                                    <option value="Czech Republic">Czech Republic</option>
                                    <option value="Denmark">Denmark</option>
                                    <option value="Djibouti">Djibouti</option>
                                    <option value="Dominica">Dominica</option>
                                    <option value="Dominican Republic">Dominican Republic</option>
                                    <option value="Ecuador">Ecuador</option>
                                    <option value="Egypt">Egypt</option>
                                    <option value="El Salvador">El Salvador</option>
                                    <option value="Equatorial Guinea">Equatorial Guinea</option>
                                    <option value="Eritrea">Eritrea</option>
                                    <option value="Estonia">Estonia</option>
                                    <option value="Ethiopia">Ethiopia</option>
                                    <option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option>
                                    <option value="Faroe Islands">Faroe Islands</option>
                                    <option value="Fiji">Fiji</option>
                                    <option value="Finland">Finland</option>
                                    <option value="France">France</option>
                                    <option value="French Guiana">French Guiana</option>
                                    <option value="French Polynesia">French Polynesia</option>
                                    <option value="French Southern Territories">French Southern Territories</option>
                                    <option value="Gabon">Gabon</option>
                                    <option value="Gambia">Gambia</option>
                                    <option value="Georgia">Georgia</option>
                                    <option value="Germany">Germany</option>
                                    <option value="Ghana">Ghana</option>
                                    <option value="Gibraltar">Gibraltar</option>
                                    <option value="Greece">Greece</option>
                                    <option value="Greenland">Greenland</option>
                                    <option value="Grenada">Grenada</option>
                                    <option value="Guadeloupe">Guadeloupe</option>
                                    <option value="Guam">Guam</option>
                                    <option value="Guatemala">Guatemala</option>
                                    <option value="Guernsey">Guernsey</option>
                                    <option value="Guinea">Guinea</option>
                                    <option value="Guinea-bissau">Guinea-bissau</option>
                                    <option value="Guyana">Guyana</option>
                                    <option value="Haiti">Haiti</option>
                                    <option value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands</option>
                                    <option value="Holy See (Vatican City State)">Holy See (Vatican City State)</option>
                                    <option value="Honduras">Honduras</option>
                                    <option value="Hong Kong">Hong Kong</option>
                                    <option value="Hungary">Hungary</option>
                                    <option value="Iceland">Iceland</option>
                                    <option value="India">India</option>
                                    <option value="Indonesia">Indonesia</option>
                                    <option value="Iran, Islamic Republic of">Iran, Islamic Republic of</option>
                                    <option value="Iraq">Iraq</option>
                                    <option value="Ireland">Ireland</option>
                                    <option value="Isle of Man">Isle of Man</option>
                                    <option value="Israel">Israel</option>
                                    <option value="Italy">Italy</option>
                                    <option value="Jamaica">Jamaica</option>
                                    <option value="Japan">Japan</option>
                                    <option value="Jersey">Jersey</option>
                                    <option value="Jordan">Jordan</option>
                                    <option value="Kazakhstan">Kazakhstan</option>
                                    <option value="Kenya">Kenya</option>
                                    <option value="Kiribati">Kiribati</option>
                                    <option value="Korea, Democratic People's Republic of">Korea, Democratic People's Republic of</option>
                                    <option value="Korea, Republic of">Korea, Republic of</option>
                                    <option value="Kuwait">Kuwait</option>
                                    <option value="Kyrgyzstan">Kyrgyzstan</option>
                                    <option value="Lao People's Democratic Republic">Lao People's Democratic Republic</option>
                                    <option value="Latvia">Latvia</option>
                                    <option value="Lebanon">Lebanon</option>
                                    <option value="Lesotho">Lesotho</option>
                                    <option value="Liberia">Liberia</option>
                                    <option value="Libya">Libya</option>
                                    <option value="Liechtenstein">Liechtenstein</option>
                                    <option value="Lithuania">Lithuania</option>
                                    <option value="Luxembourg">Luxembourg</option>
                                    <option value="Macao">Macao</option>
                                    <option value="Macedonia, The Former Yugoslav Republic of">Macedonia, The Former Yugoslav Republic of</option>
                                    <option value="Madagascar">Madagascar</option>
                                    <option value="Malawi">Malawi</option>
                                    <option value="Malaysia">Malaysia</option>
                                    <option value="Maldives">Maldives</option>
                                    <option value="Mali">Mali</option>
                                    <option value="Malta">Malta</option>
                                    <option value="Marshall Islands">Marshall Islands</option>
                                    <option value="Martinique">Martinique</option>
                                    <option value="Mauritania">Mauritania</option>
                                    <option value="Mauritius">Mauritius</option>
                                    <option value="Mayotte">Mayotte</option>
                                    <option value="Mexico">Mexico</option>
                                    <option value="Micronesia, Federated States of">Micronesia, Federated States of</option>
                                    <option value="Moldova, Republic of">Moldova, Republic of</option>
                                    <option value="Monaco">Monaco</option>
                                    <option value="Mongolia">Mongolia</option>
                                    <option value="Montenegro">Montenegro</option>
                                    <option value="Montserrat">Montserrat</option>
                                    <option value="Morocco">Morocco</option>
                                    <option value="Mozambique">Mozambique</option>
                                    <option value="Myanmar">Myanmar</option>
                                    <option value="Namibia">Namibia</option>
                                    <option value="Nauru">Nauru</option>
                                    <option value="Nepal">Nepal</option>
                                    <option value="Netherlands">Netherlands</option>
                                    <option value="New Caledonia">New Caledonia</option>
                                    <option value="New Zealand">New Zealand</option>
                                    <option value="Nicaragua">Nicaragua</option>
                                    <option value="Niger">Niger</option>
                                    <option value="Nigeria">Nigeria</option>
                                    <option value="Niue">Niue</option>
                                    <option value="Norfolk Island">Norfolk Island</option>
                                    <option value="Northern Mariana Islands">Northern Mariana Islands</option>
                                    <option value="Norway">Norway</option>
                                    <option value="Oman">Oman</option>
                                    <option value="Pakistan">Pakistan</option>
                                    <option value="Palau">Palau</option>
                                    <option value="Palestinian Territory, Occupied">Palestinian Territory, Occupied</option>
                                    <option value="Panama">Panama</option>
                                    <option value="Papua New Guinea">Papua New Guinea</option>
                                    <option value="Paraguay">Paraguay</option>
                                    <option value="Peru">Peru</option>
                                    <option value="Philippines">Philippines</option>
                                    <option value="Pitcairn">Pitcairn</option>
                                    <option value="Poland">Poland</option>
                                    <option value="Portugal">Portugal</option>
                                    <option value="Puerto Rico">Puerto Rico</option>
                                    <option value="Qatar">Qatar</option>
                                    <option value="Reunion">Reunion</option>
                                    <option value="Romania">Romania</option>
                                    <option value="Russian Federation">Russian Federation</option>
                                    <option value="Rwanda">Rwanda</option>
                                    <option value="Saint Barthelemy">Saint Barthelemy</option>
                                    <option value="Saint Helena, Ascension and Tristan da Cunha">Saint Helena, Ascension and Tristan da Cunha</option>
                                    <option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
                                    <option value="Saint Lucia">Saint Lucia</option>
                                    <option value="Saint Martin (French part)">Saint Martin (French part)</option>
                                    <option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option>
                                    <option value="Saint Vincent and The Grenadines">Saint Vincent and The Grenadines</option>
                                    <option value="Samoa">Samoa</option>
                                    <option value="San Marino">San Marino</option>
                                    <option value="Sao Tome and Principe">Sao Tome and Principe</option>
                                    <option value="Saudi Arabia">Saudi Arabia</option>
                                    <option value="Senegal">Senegal</option>
                                    <option value="Serbia">Serbia</option>
                                    <option value="Seychelles">Seychelles</option>
                                    <option value="Sierra Leone">Sierra Leone</option>
                                    <option value="Singapore">Singapore</option>
                                    <option value="Sint Maarten (Dutch part)">Sint Maarten (Dutch part)</option>
                                    <option value="Slovakia">Slovakia</option>
                                    <option value="Slovenia">Slovenia</option>
                                    <option value="Solomon Islands">Solomon Islands</option>
                                    <option value="Somalia">Somalia</option>
                                    <option value="South Africa">South Africa</option>
                                    <option value="South Georgia and The South Sandwich Islands">South Georgia and The South Sandwich Islands</option>
                                    <option value="South Sudan">South Sudan</option>
                                    <option value="Spain">Spain</option>
                                    <option value="Sri Lanka">Sri Lanka</option>
                                    <option value="Sudan">Sudan</option>
                                    <option value="Suriname">Suriname</option>
                                    <option value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option>
                                    <option value="Swaziland">Swaziland</option>
                                    <option value="Sweden">Sweden</option>
                                    <option value="Switzerland">Switzerland</option>
                                    <option value="Syrian Arab Republic">Syrian Arab Republic</option>
                                    <option value="Taiwan, Province of China">Taiwan, Province of China</option>
                                    <option value="Tajikistan">Tajikistan</option>
                                    <option value="Tanzania, United Republic of">Tanzania, United Republic of</option>
                                    <option value="Thailand">Thailand</option>
                                    <option value="Timor-leste">Timor-leste</option>
                                    <option value="Togo">Togo</option>
                                    <option value="Tokelau">Tokelau</option>
                                    <option value="Tonga">Tonga</option>
                                    <option value="Trinidad and Tobago">Trinidad and Tobago</option>
                                    <option value="Tunisia">Tunisia</option>
                                    <option value="Turkey">Turkey</option>
                                    <option value="Turkmenistan">Turkmenistan</option>
                                    <option value="Turks and Caicos Islands">Turks and Caicos Islands</option>
                                    <option value="Tuvalu">Tuvalu</option>
                                    <option value="Uganda">Uganda</option>
                                    <option value="Ukraine">Ukraine</option>
                                    <option value="United Arab Emirates">United Arab Emirates</option>
                                    <option value="United Kingdom">United Kingdom</option>
                                    <option value="United States">United States</option>
                                    <option value="United States Minor Outlying Islands">United States Minor Outlying Islands</option>
                                    <option value="Uruguay">Uruguay</option>
                                    <option value="Uzbekistan">Uzbekistan</option>
                                    <option value="Vanuatu">Vanuatu</option>
                                    <option value="Venezuela, Bolivarian Republic of">Venezuela, Bolivarian Republic of</option>
                                    <option value="Viet Nam">Viet Nam</option>
                                    <option value="Virgin Islands, British">Virgin Islands, British</option>
                                    <option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option>
                                    <option value="Wallis and Futuna">Wallis and Futuna</option>
                                    <option value="Western Sahara">Western Sahara</option>
                                    <option value="Yemen">Yemen</option>
                                    <option value="Zambia">Zambia</option>
                                    <option value="Zimbabwe">Zimbabwe</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                            <div class="form-group">
                                <label class="sr-only" for="property-types">Property Types</label>
                                <select id="property-types" name="property-types" data-placeholder="Property Types" class="chosen-select">
                                    <option selected="selected" value="Property Types">Property Types</option>
                                    <option value="residential">Residential</option>
                                    <option value="commercial">Commercial</option>
                                    <option value="land">Land</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                            <div class="form-group">
                                <label class="sr-only" for="area-from">Area From</label>
                                <select id="area-from" name="area-from" data-placeholder="Area From" class="chosen-select">
                                    <option selected="selected" value="Area From">Area From</option>
                                    <option value="450">450</option>
                                    <option value="350">350</option>
                                    <option value="250">250</option>
                                    <option value="150">150</option>
                                    <option value="100">100</option>
                                    <option value="50">50</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-6 col-sm-3">
                            <div class="form-group">
                                <label class="sr-only" for="search-bedrooms">Bedrooms</label>
                                <select id="search-bedrooms" name="search-bedrooms" data-placeholder="Bedrooms" class="chosen-select">
                                    <option selected="selected" value="Bedrooms">Bedrooms</option>
                                    <option value="0">0</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="5plus">5+</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                            <div class="form-group">
                                <label class="sr-only" for="search-bathrooms">Bathrooms</label>
                                <select id="search-bathrooms" name="search-bathrooms" data-placeholder="Bathrooms" class="chosen-select">
                                    <option selected="selected" value="Bathrooms">Bathrooms</option>
                                    <option value="0">0</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="4plus">4+</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                            <div class="form-group">
                                <div class="row pgl-narrow-row">
                                    <div class="col-xs-6">
                                        <label class="sr-only" for="search-minprice">Price From</label>
                                        <select id="search-minprice" name="search-minprice" data-placeholder="Price From" class="chosen-select">
                                            <option selected="selected" value="Price From">Price From</option>
                                            <option value="0">$0</option>
                                            <option value="25000">$25000</option>
                                            <option value="50000">$50000</option>
                                            <option value="75000">$75000</option>
                                            <option value="100000">$100000</option>
                                            <option value="150000">$150000</option>
                                            <option value="200000">$200000</option>
                                            <option value="300000">$300000</option>
                                            <option value="500000">$500000</option>
                                            <option value="750000">$750000</option>
                                            <option value="1000000">$1000000</option>
                                        </select>
                                    </div>
                                    <div class="col-xs-6">
                                        <label class="sr-only" for="search-maxprice">Price To</label>
                                        <select id="search-maxprice" name="search-maxprice" data-placeholder="Price To" class="chosen-select">
                                            <option selected="selected" value="Price To">Price To</option>
                                            <option value="25000">$25000</option>
                                            <option value="50000">$50000</option>
                                            <option value="75000">$75000</option>
                                            <option value="100000">$100000</option>
                                            <option value="150000">$150000</option>
                                            <option value="200000">$200000</option>
                                            <option value="300000">$300000</option>
                                            <option value="500000">$500000</option>
                                            <option value="750000">$750000</option>
                                            <option value="1000000">$1000000</option>
                                            <option value="1000000plus">>$1000000</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                            <div class="form-group">
                                <button type="submit" class="btn btn-block btn-primary">Find your home</button>
                            </div>
                        </div>
                    </div>

                </form>
            </div>
        </section>
        <!-- End Advanced Search -->

        <!-- Begin Featured -->
        <section class="pgl-featured">
            <div class="container">
                <h2>Featured Properties</h2>
                <div class="row">
                    <div class="owl-carousel pgl-pro-slide" data-plugin-options='{"items": 4, "singleItem": false, "autoPlay": false, "pagination": false}'>
                        <div class="col-md-12 animation">
                            <div class="pgl-property featured-item">
                                <div class="property-thumb-info">
                                    <div class="property-thumb-info-image">
                                        <img alt="" class="img-responsive" src="images/properties/property-featured-2.jpg">
                                    </div>
                                    <div class="property-thumb-info-content">
                                        <h3><a href="property-detail.aspx">J St, Modesto, CA 95351</a></h3>
                                        <p>Amet luctus nisl tempus.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 animation">
                            <div class="pgl-property featured-item">
                                <div class="property-thumb-info">
                                    <div class="property-thumb-info-image">
                                        <img alt="" class="img-responsive" src="images/properties/property-featured-3.jpg">
                                    </div>
                                    <div class="property-thumb-info-content">
                                        <h3><a href="property-detail.aspx">Spring Gate DrUNIT 4106</a></h3>
                                        <p>Amet luctus nisl tempus.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 animation">
                            <div class="pgl-property featured-item">
                                <div class="property-thumb-info">
                                    <div class="property-thumb-info-image">
                                        <img alt="" class="img-responsive" src="images/properties/property-featured-4.jpg">
                                    </div>
                                    <div class="property-thumb-info-content">
                                        <h3><a href="property-detail.aspx">Chatham St NW, Roanoke</a></h3>
                                        <p>Amet luctus nisl tempus.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 animation">
                            <div class="pgl-property featured-item">
                                <div class="property-thumb-info">
                                    <div class="property-thumb-info-image">
                                        <img alt="" class="img-responsive" src="images/properties/property-featured-5.jpg">
                                    </div>
                                    <div class="property-thumb-info-content">
                                        <h3><a href="property-detail.aspx">Stockton, CA 95215</a></h3>
                                        <p>Amet luctus nisl tempus.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 animation">
                            <div class="pgl-property featured-item">
                                <div class="property-thumb-info">
                                    <div class="property-thumb-info-image">
                                        <img alt="" class="img-responsive" src="images/properties/property-featured-3.jpg">
                                    </div>
                                    <div class="property-thumb-info-content">
                                        <h3><a href="property-detail.aspx">Spring Gate DrUNIT 4106</a></h3>
                                        <p>Amet luctus nisl tempus.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 animation">
                            <div class="pgl-property featured-item">
                                <div class="property-thumb-info">
                                    <div class="property-thumb-info-image">
                                        <img alt="" class="img-responsive" src="images/properties/property-featured-4.jpg">
                                    </div>
                                    <div class="property-thumb-info-content">
                                        <h3><a href="property-detail.aspx">Chatham St NW, Roanoke</a></h3>
                                        <p>Amet luctus nisl tempus.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <hr class="top-tall">
            </div>
        </section>
        <!-- End Featured -->

        <!-- Begin Properties -->
        <section class="pgl-properties pgl-bg-grey">
            <div class="container">
                <h2>Offfice house</h2>
                <div class="properties-full properties-listing properties-listfull">
                    <div class="listing-header clearfix">
                        <ul class="list-inline list-icons pull-left">
                            <li><a href="grid.aspx"><i class="fa fa-th"></i></a></li>
                            <li class="active"><a href="list.aspx"><i class="fa fa-th-list"></i></a></li>
                            <li><a href="list-map.aspx"><i class="fa fa-map-marker"></i></a></li>
                        </ul>
                        <ul class="list-inline list-sort pull-right">
                            <li>
                                <label for="order-status">Order</label></li>
                            <li>
                                <select id="order-status" name="order-status" data-placeholder="Order" class="chosen-select">
                                    <option value="Descending">Descending</option>
                                    <option value="Ascending">Ascending</option>
                                </select>
                            </li>
                            <li>
                                <label for="sortby-status">Sort by</label></li>
                            <li>
                                <select id="sortby-status" name="sortby-status" data-placeholder="Sort by" class="chosen-select">
                                    <option value="Name">Name</option>
                                    <option value="Area">Area</option>
                                    <option value="Date">Date</option>
                                </select>
                            </li>
                        </ul>
                    </div>
                     <asp:Repeater ID="Property" runat="server">
                            <ItemTemplate>
                    <div class="pgl-property animation">
                       
                        <div class="row">
                            <div class="col-sm-6 col-md-4">
                                <div class="property-thumb-info-image">
                                    <%--<img alt="" class="img-responsive" src="images/properties/property-1.jpg">--%>
                                    <asp:Image ID="Image1" class="img-responsive" ImageUrl='<%#Eval("Image") %>' runat="server" />
                                    <span class="property-thumb-info-label">
                                        <span class="label price"> <%#Eval("Price") %></span>
                                    </span>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-8">
                                <div class="property-thumb-info">

                                    <div class="property-thumb-info-content">
                                        <h3><a href="property-detail.aspx"> <%#Eval("PropertyName") %></a></h3>
                                        <address> <%#Eval("Address") %></address>
                                        <p> <%#Eval("Details") %></p>
                                    </div>
                                    <div class="amenities clearfix">
                                        <ul class="pull-left">
                                            <li><strong>Area:</strong> <%#Eval("PropertyArea") %><sup>m2</sup></li>
                                        </ul>
                                        <ul class="pull-right">
                                            <li><i class="icons icon-bedroom"></i> <%#Eval("Bedroom") %></li>
                                            <li><i class="icons icon-bathroom"></i> <%#Eval("Bathroom") %></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                               
                    </div>
                                  </ItemTemplate>
                            </asp:Repeater>
                    <div class="pgl-property animation">
                        
                        <div class="row">
                            <div class="col-sm-6 col-md-4">
                                <div class="property-thumb-info-image">
                                    <img alt="" class="img-responsive" src="images/properties/property-2.jpg">
                                    <span class="property-thumb-info-label">
                                        <span class="label price">$358,000</span>
                                    </span>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-8">
                                <div class="property-thumb-info">

                                    <div class="property-thumb-info-content">
                                        <h3><a href="property-detail.aspx">Poolside character home on a wide 422sqm</a></h3>
                                        <address>Ferris Park, Jersey City Land in Sales</address>
                                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                    </div>
                                    <div class="amenities clearfix">
                                        <ul class="pull-left">
                                            <li><strong>Area:</strong> 450<sup>m2</sup></li>
                                        </ul>
                                        <ul class="pull-right">
                                            <li><i class="icons icon-bedroom"></i>3</li>
                                            <li><i class="icons icon-bathroom"></i>2</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                               
                    </div>
                    <div class="pgl-property animation">
                        <div class="row">
                            <div class="col-sm-6 col-md-4">
                                <div class="property-thumb-info-image">
                                    <img alt="" class="img-responsive" src="images/properties/property-3.jpg">
                                    <span class="property-thumb-info-label">
                                        <span class="label price">$358,000</span>
                                    </span>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-8">
                                <div class="property-thumb-info">

                                    <div class="property-thumb-info-content">
                                        <h3><a href="property-detail.aspx">Poolside character home on a wide 422sqm</a></h3>
                                        <address>Ferris Park, Jersey City Land in Sales</address>
                                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                    </div>
                                    <div class="amenities clearfix">
                                        <ul class="pull-left">
                                            <li><strong>Area:</strong> 450<sup>m2</sup></li>
                                        </ul>
                                        <ul class="pull-right">
                                            <li><i class="icons icon-bedroom"></i>3</li>
                                            <li><i class="icons icon-bathroom"></i>2</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <ul class="pagination">
                        <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">Next</a></li>
                    </ul>
                </div>
            </div>
        </section>
        <!-- End Properties -->

    </div>
</asp:Content>
