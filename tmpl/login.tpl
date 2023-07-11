<!DOCTYPE html>
<html>


<meta http-equiv="content-type" content="text/html;charset=UTF-8" />

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>{$settings.site_name} LTD</title>
    <link rel="shortcut icon" href="styles/assets/images/favicon.png">
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600,700" rel="stylesheet">
    <link href='styles/assets/bootstrap.min.css' rel='stylesheet' type='text/css'>
    <link href='styles/assets/animate.css' rel='stylesheet' type='text/css'>
    <link href='styles/assets/custom_back.css' rel='stylesheet' type='text/css'>
    <script src='styles/assets/jquery.js' type='text/javascript'></script>
    <script src="styles/assets/wow.js"></script>
    <script src="styles/assets/wow.min.js"></script>
    <script type="text/javascript" src="styles/assets/bootstrap.min.js"></script>
    <script src='styles/assets/setting.js' type='text/javascript'></script>


    <script type="text/javascript">
        //// Get the CryptoCurrency Information from the API
        jQuery.ajax({
            url: "https://min-api.cryptocompare.com/data/pricemulti",
            data: "fsyms=BTC,ETH,DASH,LTC&tsyms=USD",
            dataType: 'json',
        }).done(function(data) {
            // console.log( "BTC : " + data.BTC.USD + ", ETH : " + data.ETH.USD + ", DASH : " + data.DASH.USD, LTC : " + data.LTC.USD);
            jQuery(".dashCoin").html('$' + data.DASH.USD);
            jQuery(".ethCoin").html('$' + data.ETH.USD);
            jQuery(".bitCoin").html('$' + data.BTC.USD);
            jQuery(".liteCoin").html('$' + data.LTC.USD);
        }).fail(function() {
            console.log("API error");
        });

    </script>

</head>

<body>
    <div class="wrapper">
        <div class="headerContainer">
            <div class="headerInner fadeInLeft wow"> <a href="?a=home" id="logo"></a>
                <p>1 BTC: <span class="bitCoin"></span></p>
                <div class="hdRight">
                    <div class="mainNavRight">
                        <div class="navbar">
                            <div class="navbar-inner">
                                <ul class="nav">
                                    <li><a href="?a=home">Home</a></li>
                                    <li><a href="?a=about">About</a></li>
                                    <li><a href="?a=faq">FAQ </a></li>
                                    <li><a href="?a=cust&amp;page=investment">PLANS</a></li>
                                    <li><a href="?a=affiliate">AFFILIATES</a></li>
                                    <li><a href="?a=support">SUPPORT</a></li>
                                    <li><a href="?a=paidout">PAID</a></li>
                                    {if $userinfo.logged != 1}
                                    <li><a href="?a=login" class="login">login</a></li>
                                    <li><a href="?a=signup" class="signup">signup</a></li>{else}

                                    <li><a href="?a=account" class="signup">dashboard</a></li>{/if}
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="bannerContainer">
            <div class="bannerInner insideheader fadeInRight wow">
                <div class="ctn-banner">
                    <h3><span>user Login</span></h3>
                </div>
            </div>
        </div>

    </div>



    <body class="loginarea">


        {literal}
        <script language=javascript>
            function checkform() {
                if (document.mainform.username.value == '') {
                    alert("Please type your username!");
                    document.mainform.username.focus();
                    return false;
                }
                if (document.mainform.password.value == '') {
                    alert("Please type your password!");
                    document.mainform.password.focus();
                    return false;
                }
                return true;
            }

        </script>
        {/literal}

        {if $frm.say eq 'invalid_login'}
        <h3 style="text-align: center;">Login error:</h3><br><br>

        <h5 style="text-align: center;">Your login or password or turing image code is wrong. Please check this information.</h5>
        {/if}



        <div class="loginpage">
            <div class="becomeInner">

                <div class="loginwrappers">



                    <div class="form-container login">

                        <form method=post name=mainform onsubmit="return checkform()">
                            <input type=hidden name=a value='do_login'>
                            <input type=hidden name=follow value='{$frm.follow}'>
                            <input type=hidden name=follow_id value='{$frm.follow_id}'>
                            <input type=hidden name=a value='do_login'>
                            <input type=hidden name=follow value=''>
                            <input type=hidden name=follow_id value=''>
                            <table width="100%" border=0 cellpadding=4 cellspacing=4>
                                <tr>
                                    <td>Username:</td>
                                    <td><input type=text name=username value='' class=inpts size=30 autofocus="autofocus"></td>
                                </tr>
                                <tr>
                                    <td>Password:</td>
                                    <td><input type=password name=password value='' class=inpts size=30></td>
                                </tr>
                                {if $ti.check.login}
                                <tr>
                                    <td class=menutxt>Code: <img src="{" ?a=show_validation_image&`$ti.session.name`=`$ti.session.id`&rand=`$ti.session.rand`"|encurl}"></td>
                                    <td><input type=text name=validation_number class=inpts size=30></td>
                                </tr>
                                {/if}
                                <tr>
                                    <td><input type=submit value="Login" class=sbmt></td>
                                    <td align="right" valign="middle"><a href="?a=forgot_password" class="small_text">Retrieve Password</a></td>
                                </tr>
                            </table>
                        </form>
                        <br><br>

                    </div>




                </div>
                <div class="loginpageright"><img src="styles/assets/images/loginpageright.png" alt="" /></div>
            </div>
        </div>


    </body>
    <div class="primebitContainer">
        <div class="primebitInner">
            <h1><span>3 level</span> Referral commission</h1>
            <div class="ctn-level">
                <div class="livel-part">
                    <h2>4<span>%</span></h2>
                    <p>livel1</p>
                </div>
                <div class="livel-img">
                    <img src="styles/assets/images/call-ic2.png">
                </div>
                <div class="livel-part">
                    <h2>0.5<span>%</span></h2>
                    <p>livel2</p>
                </div>
                <div class="livel-img">
                    <img src="styles/assets/images/call-ic2.png">
                </div>
                <div class="livel-part">
                    <h2>0.5<span>%</span></h2>
                    <p>livel3</p>
                </div>

            </div>
        </div>
    </div>
    </div>
    </div>
    <div class="solidContainer">
        <div class="solidInner zoomIn wow">
            <div class="solid"> <a href="#" class="solid1"></a> <a href="#" class="solid2"></a> <a href="#" class="solid3"></a> <a href="#" class="solid4"></a> <a href="#" class="solid5"></a> <a href="#" class="solid6"></a> <a href="#" class="solid7"></a> <a href="#" class="solid8"></a> </div>
        </div>
    </div>
    <div class="footerContainer">
        <div class="footerInner">
            <div class="ft-row1">
                <h3>&copy; 2019. <a href="?a=home">{$settings.site_name}</a> ALL RIGHTS RESERVED</h3>
            </div>
            <div class="ft-part1"> <a href="?a=about">ABOUT US</a> <a href="?a=news">NEWS</a> <a href="?a=faq">FAQ</a> <a href="?a=support">support</a> <a href="?a=rules">terms</a><a href="?a=paidout">ALL PAID </a></div>
        </div>
    </div>
</body>

</html>




<!DOCTYPE html>
<html lang="zxx" class="js">

<head>
    <base href="../../../">
    <meta charset="utf-8">
    <meta name="author" content="Softnio">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="A powerful and conceptual apps base dashboard template that especially build for developers and programmers.">
    <!-- Fav Icon  -->
    <link rel="shortcut icon" href="/images/favicon.png">
    <!-- Page Title  -->
    <title>Login | {$SiteName} | {$PageVariants}</title>
    <!-- StyleSheets  -->
    <link rel="stylesheet" href="/assets/css/dashlite.css?ver=3.2.0">
    <link id="skin-default" rel="stylesheet" href="/assets/css/theme.css?ver=3.2.0">
</head>

<body class="nk-body npc-crypto bg-white pg-auth">
<!-- app body @s -->
<div class="nk-app-root">
    <div class="nk-split nk-split-page nk-split-md">
        <div class="nk-split-content nk-block-area nk-block-area-column nk-auth-container bg-white">
            <div class="nk-block nk-block-middle nk-auth-body">
                <div class="brand-logo pb-5">
                    <a href="/" class="logo-link">
                        <img class="logo-light logo-img logo-img-lg" src="{$siteLogo}" srcset="{$siteLogo} 2x" alt="logo">
                        <img class="logo-dark logo-img logo-img-lg" src="{$siteLogoDark}" srcset="{$siteLogoDark} 2x" alt="logo-dark">
                    </a>
                </div>
                <div class="nk-block-head">
                    <div class="nk-block-head-content">
                        <h5 class="nk-block-title">Sign-In</h5>
                        <div class="nk-block-des">
                            <p>Access the DashLite panel using your email and passcode.</p>
                        </div>
                    </div>
                </div><!-- .nk-block-head -->
                <form action="#">
                    <div class="form-group">
                        <div class="form-label-group">
                            <label class="form-label" for="default-01">Email or Username</label>
                            <a class="link link-primary link-sm" tabindex="-1" href="#">Need Help?</a>
                        </div>
                        <div class="form-control-wrap">
                            <input type="text" class="form-control form-control-lg" id="default-01" placeholder="Enter your email address or username">
                        </div>
                    </div><!-- .form-group -->
                    <div class="form-group">
                        <div class="form-label-group">
                            <label class="form-label" for="password">Passcode</label>
                            <a class="link link-primary link-sm" tabindex="-1" href="html/pages/auths/auth-reset-v3.html">Forgot Code?</a>
                        </div>
                        <div class="form-control-wrap">
                            <a tabindex="-1" href="#" class="form-icon form-icon-right passcode-switch lg" data-target="password">
                                <em class="passcode-icon icon-show icon ni ni-eye"></em>
                                <em class="passcode-icon icon-hide icon ni ni-eye-off"></em>
                            </a>
                            <input type="password" class="form-control form-control-lg" id="password" placeholder="Enter your passcode">
                        </div>
                    </div><!-- .form-group -->
                    <div class="form-group">
                        <button class="btn btn-lg btn-primary btn-block">Sign in</button>
                    </div>
                </form><!-- form -->
                <div class="form-note-s2 pt-4"> New on our platform? <a href="html/pages/auths/auth-register-v3.html">Create an account</a>
                </div>
                <div class="text-center pt-4 pb-3">
                    <h6 class="overline-title overline-title-sap"><span>OR</span></h6>
                </div>
                <ul class="nav justify-center gx-4">
                    <li class="nav-item"><a class="nav-link" href="#">Facebook</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Google</a></li>
                </ul>
                <div class="text-center mt-5">
                    <span class="fw-500">I don't have an account? <a href="#">Try 15 days free</a></span>
                </div>
            </div><!-- .nk-block -->
            <div class="nk-block nk-auth-footer">
                <div class="nk-block-between">
                    <ul class="nav nav-sm">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Terms & Condition</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Privacy Policy</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Help</a>
                        </li>
                        <li class="nav-item dropup">
                            <a class="dropdown-toggle dropdown-indicator has-indicator nav-link" data-bs-toggle="dropdown" data-offset="0,10"><small>English</small></a>
                            <div class="dropdown-menu dropdown-menu-sm dropdown-menu-end">
                                <ul class="language-list">
                                    <li>
                                        <a href="#" class="language-item">
                                            <img src="./images/flags/english.png" alt="" class="language-flag">
                                            <span class="language-name">English</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="language-item">
                                            <img src="./images/flags/spanish.png" alt="" class="language-flag">
                                            <span class="language-name">Español</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="language-item">
                                            <img src="./images/flags/french.png" alt="" class="language-flag">
                                            <span class="language-name">Français</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="language-item">
                                            <img src="./images/flags/turkey.png" alt="" class="language-flag">
                                            <span class="language-name">Türkçe</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul><!-- .nav -->
                </div>
                <div class="mt-3">
                    <p>&copy; 2023 DashLite. All Rights Reserved.</p>
                </div>
            </div><!-- .nk-block -->
        </div><!-- .nk-split-content -->
        <div class="nk-split-content nk-split-stretch bg-abstract"></div><!-- .nk-split-content -->
    </div><!-- .nk-split -->
</div><!-- app body @e -->
<!-- JavaScript -->
<script src="./assets/js/bundle.js?ver=3.2.0"></script>
<script src="./assets/js/scripts.js?ver=3.2.0"></script>
<!-- select region modal -->
<div class="modal fade" tabindex="-1" role="dialog" id="region">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <a href="#" class="close" data-bs-dismiss="modal"><em class="icon ni ni-cross-sm"></em></a>
            <div class="modal-body modal-body-md">
                <h5 class="title mb-4">Select Your Country</h5>
                <div class="nk-country-region">
                    <ul class="country-list text-center gy-2">
                        <li>
                            <a href="#" class="country-item">
                                <img src="./images/flags/arg.png" alt="" class="country-flag">
                                <span class="country-name">Argentina</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="country-item">
                                <img src="./images/flags/aus.png" alt="" class="country-flag">
                                <span class="country-name">Australia</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="country-item">
                                <img src="./images/flags/bangladesh.png" alt="" class="country-flag">
                                <span class="country-name">Bangladesh</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="country-item">
                                <img src="./images/flags/canada.png" alt="" class="country-flag">
                                <span class="country-name">Canada <small>(English)</small></span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="country-item">
                                <img src="./images/flags/china.png" alt="" class="country-flag">
                                <span class="country-name">Centrafricaine</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="country-item">
                                <img src="./images/flags/china.png" alt="" class="country-flag">
                                <span class="country-name">China</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="country-item">
                                <img src="./images/flags/french.png" alt="" class="country-flag">
                                <span class="country-name">France</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="country-item">
                                <img src="./images/flags/germany.png" alt="" class="country-flag">
                                <span class="country-name">Germany</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="country-item">
                                <img src="./images/flags/iran.png" alt="" class="country-flag">
                                <span class="country-name">Iran</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="country-item">
                                <img src="./images/flags/italy.png" alt="" class="country-flag">
                                <span class="country-name">Italy</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="country-item">
                                <img src="./images/flags/mexico.png" alt="" class="country-flag">
                                <span class="country-name">México</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="country-item">
                                <img src="./images/flags/philipine.png" alt="" class="country-flag">
                                <span class="country-name">Philippines</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="country-item">
                                <img src="./images/flags/portugal.png" alt="" class="country-flag">
                                <span class="country-name">Portugal</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="country-item">
                                <img src="./images/flags/s-africa.png" alt="" class="country-flag">
                                <span class="country-name">South Africa</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="country-item">
                                <img src="./images/flags/spanish.png" alt="" class="country-flag">
                                <span class="country-name">Spain</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="country-item">
                                <img src="./images/flags/switzerland.png" alt="" class="country-flag">
                                <span class="country-name">Switzerland</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="country-item">
                                <img src="./images/flags/uk.png" alt="" class="country-flag">
                                <span class="country-name">United Kingdom</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="country-item">
                                <img src="./images/flags/english.png" alt="" class="country-flag">
                                <span class="country-name">United State</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div><!-- .modal-content -->
    </div><!-- .modla-dialog -->
</div><!-- .modal -->
</body>

</html>