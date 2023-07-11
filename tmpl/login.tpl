{$SiteName = "Capital Coin Investment"}
{$PageTage = "Secured Investment Platform"}
{$siteLogo = "/assets/images/logo/logo.png"}
{$siteLogoDark = "/assets/images/logo/logo.png"}
{$siteIcon = "/assets/images/logo/favicon.png"}

<!DOCTYPE html>
<html lang="zxx" class="js">

<head>
    <base href="../../../">
    <meta charset="utf-8">
    <meta name="author" content="Softnio">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="A powerful and conceptual apps base dashboard template that especially build for developers and programmers.">
    <!-- Fav Icon  -->
    <link rel="shortcut icon" href="{$siteIcon}">
    <!-- Page Title  -->
    <title>Login | {$SiteName} | {$PageTage}</title>
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
                            <p>Access your {$SiteName} panel using your email and passcode.</p>
                        </div>
                    </div>
                </div><!-- .nk-block-head -->

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

                <form method=post name=mainform onsubmit="return checkform()">
                    <input type=hidden name=a value='do_login'>
                    <input type=hidden name=follow value='{$frm.follow}'>
                    <input type=hidden name=follow_id value='{$frm.follow_id}'>
                    <input type=hidden name=a value='do_login'>
                    <input type=hidden name=follow value=''>
                    <input type=hidden name=follow_id value=''>
                    <div class="form-group">
                        {if $frm.say eq 'invalid_login'}
                            <h3 style="text-align: center; color: #243b6a; font-size: 19px; font-weight: 600" class="mb-2">Login error:</h3>

                            <h5 style="text-align: center; color: #6f0707; font-size: 12px; font-weight: 600">Your login or password or turing image code is wrong. Please check this information.</h5>
                        {/if}
                        <div class="form-label-group">
                            <label class="form-label"  for="default-01">Username</label>
                            <a class="link link-primary link-sm" tabindex="-1" href="#">Need Help?</a>
                        </div>
                        <div class="form-control-wrap">
                            <input type="text" name=username value='' class="form-control form-control-lg" id="default-01" placeholder="Enter username">
                        </div>
                    </div><!-- .form-group -->
                    <div class="form-group">
                        <div class="form-label-group">
                            <label class="form-label" for="password">Passcode</label>
                            <a class="link link-primary link-sm" tabindex="-1" href="?a=forgot_password">Forgot Code?</a>
                        </div>
                        <div class="form-control-wrap">
                            <a tabindex="-1" href="#" class="form-icon form-icon-right passcode-switch lg" data-target="password">
                                <em class="passcode-icon icon-show icon ni ni-eye"></em>
                                <em class="passcode-icon icon-hide icon ni ni-eye-off"></em>
                            </a>
                            <input type="password" name=password value='' class="form-control form-control-lg" id="password" placeholder="Enter your passcode">
                            {if $ti.check.login}
                                <tr>
                                    <td class=menutxt>Code: <img src="{" ?a=show_validation_image&`$ti.session.name`=`$ti.session.id`&rand=`$ti.session.rand`"|encurl}"></td>
                                    <td><input type=text name=validation_number class=inpts size=30></td>
                                </tr>
                            {/if}
                        </div>
                    </div><!-- .form-group -->
                    <div class="form-group">
                        <button class="btn btn-lg btn-primary btn-block" type=submit value="Login">Sign in</button>
                    </div>
                </form><!-- form -->
                <div class="form-note-s2 pt-4"> New on our platform? <a href="?a=signup">Create an account</a>
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
                    <p>&copy; 2023 {$SiteName}. All Rights Reserved.</p>
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