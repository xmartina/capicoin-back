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
    dataType : 'json',
  }).done(function(data) {
    // console.log( "BTC : " + data.BTC.USD + ", ETH : " + data.ETH.USD + ", DASH : " + data.DASH.USD, LTC : " + data.LTC.USD);
    jQuery(".dashCoin").html('$' + data.DASH.USD);
    jQuery(".ethCoin").html('$' + data.ETH.USD);
    jQuery(".bitCoin").html('$' + data.BTC.USD);
    jQuery(".liteCoin").html('$' + data.LTC.USD);
  }).fail(function() {
    console.log( "API error" );
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
                  <li><a style="color:#c79021!important;" href="?a=home">Home</a></li>
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
      <div class="bannerInner fadeInRight wow">
        <div class="ctn-banner">
          <h3><span>brand new </span><br>
            online trading <br>
            <span>platform </span></h3>
            <p>TEMPLATE REX is made so even investors with zero trading experience are successfully making a profit. Our program, unlike any other, guarantees fix hourly interest for investors regardless of market conditions.</p>
            <h4>Earn up 40% Hourly Profit </h4>
            <div class="banner-btt">
              <a href="?a=login" class="bn-btt1">Member Login</a>
              <a href="?a=signup" class="bn-btt2">Registration</a>
            </div>
            <br>
            <div class="banner-btt">

              <a href="https://beta.companieshouse.gov.uk/company/11122233" target="_blank" class="bn-btt1">Check Company Number: #11122233</a> <br>


            </div>
          </div>
        </div>
      </div>

      <div class="profitContainer">
        <div class="profitInner">
          <div class="contentBot zoomIn wow">
            <div class="ctn-bot-row ctn-bot-row1">
              <h3>{$currency_sign} {$settings.info_box_deposit_funds_generated}</h3>
              <p>Total Deposited</p>
            </div>
            <div class="ctn-bot-row ctn-bot-row2">
              <h3>{$settings.info_box_total_accounts_generated}</h3>
              <p>Total members</p>
            </div>
            <div class="ctn-bot-row ctn-bot-row3">
              <h3>{$currency_sign} {$settings.info_box_withdraw_funds_generated}</h3>
              <p>Total payments</p>
            </div>
            <div class="ctn-bot-row ctn-bot-row4">
              <h3>{$settings.site_days_online_generated}</h3>
              <p>days online</p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="becomeContainer">
      <div class="becomeInner fadeInRight wow">
        <div class="ctn-become">
          <p>The best investment plan of 2019. You can earn<span> up 40% hourly.</span></p>
        </div>
      </div>
    </div>
    <div class="startedContainer">
      <div class="startedInner">
        <div class="ctn-started">
          <div class="started-row started-part1 fadeInLeft wow">
            <h3>Starter Plan</h3>
            <h1>6%</h1>
            <h2> Hourly For 24 Hours</h2>
            <p>Minimum Deposit: $1</p>
            <p>Maximum Deposit: $500</p>
            <a href="?a=deposit">deposit</a>
          </div>
          <div class="started-row started-part2 fadeInRight wow">
            <h3>premium Plan</h3>
            <h1>4%</h1>
            <h2> Hourly For 24 Hours</h2>
            <p>Minimum Deposit: $500</p>
            <p>Maximum Deposit: $1,000</p>
            <a href="?a=deposit">deposit</a>
          </div>
          <div class="started-row started-part3 fadeInRight wow">
            <h3>advanced Plan</h3>
            <h1>20%</h1>
            <h2> Hourly For 24 Hours</h2>
            <p>Minimum Deposit: $1,000</p>
            <p>Maximum Deposit: $3,000</p>
            <a href="?a=deposit">deposit</a>
          </div>
          <div class="started-row started-part4 fadeInRight wow">
            <h3>vip Plan</h3>
            <h1>40%</h1>
            <h2> Hourly For 24 Hours</h2>
            <p>Minimum Deposit: $3,000</p>
            <p>Maximum Deposit: $10,000</p>
            <a href="?a=deposit">deposit</a>
          </div>
        </div>
      </div>
    </div>








<div class="CalculateContainer">
  <div class="CalculateInner fadeInLeft wow">
    <div class="calu">

     
      <table class="cal">
        <th>
          <td>
            <lebel>Select Plan</lebel>
            <select id="calc_plan" style="
            border: 0px;
            padding: 6px;
            width: 110%;
            border-radius: 30px;
            text-transform: capitalize;
            letter-spacing: 0.5px;
            outline: none;
            margin-top:7px;">
            <option value="1"> 6% Hourly For 24 Hours</option>
            <option value="2">4% Hourly For 24 Hours</option>
            <option value="3">20% Hourly For 24 Hours</option>
            <option value="4"> VIP Hourly For 24 Hours</option>
          </select></td>
        </th>

        <th>
          <td>
            <lebel>Enter Amount</lebel>
            <input id="inv_amount" type="text" value="100"/>
          </td>
        </th>

        <th>
          <td>
            <lebel>Total Profit</lebel>
            <input id="net_profit" type="text" value="100" readonly=""/>
          </td>
        </th>

        <th>
          <td>
            <lebel>Total Percent</lebel>
            <input id="assign_per" type="text" value="100" readonly=""/>
          </td>
        </th>

        <th>
          <td>
            <lebel>Total Return</lebel>
            <input id="total_return" type="text" value="100" readonly=""/>
          </td>
        </th>

      </table>


    </div>
  </div>
</div>














<div class="contentTopContainer">
  <div class="contentTopInner">
    <div class="ctn-forexrial fadeInRight wow">
      <h1>Welcome to <span>{$settings.site_name} LTD</span></h1>
      <p>Looking for highest returns on your investments? {$settings.site_name} LTD is an automatic online investment platform, part of {$settings.site_name} LTD – team of professional traders focusing mainly on Bitcoin and other crypto currencies trading over multiple Exchanges and markets. Thanks to the extraordinary diversification of our investments, we are able to deliver steady income for our investors.</p>
      <p>Headquartered in London in 2019, {$settings.site_name} LTD is already becoming the Panam's fastest growing trading company. Our name is synonymous with effective and profitable  trading solutions where our investors need little to no trading experience at all. With {$settings.site_name} LTD, investors choose one of our four simple investment plans, make a deposit and sit back while our experts go to work. They can withdraw their profit any time and schedule withdrawals quickly and easily through our website. If you have been looking for an easy to use investment platform, choose {$settings.site_name} LTD now and let our professionals help you choose an investment plan that meets your needs today!</p>
    </div>
  </div>
</div>
<div class="depositContainer">
  <div class="depositInner">
    <div class="depositLeft fadeInLeft wow">
      <h3>Last 10 Deposits <img src="styles/assets/images/ctn-ic5.png"></h3>
      <div class="ctn-diposit-part1">
        <table>
          <tbody>{if $last_deposits} {foreach from=$last_deposits item=s}
            <tr>
              <td>{$s.username}</td>
              <td><span>{$currency_sign}{$s.amount}</span>
              </td>
              <td>
                <img src="images/{$s.ec}.gif">
              </td>
            </tr>{/foreach} {else}
            <tr>
              <td>No Data Found</td>
              <td><span>N/A</span>
              </td>
              <td></td>
            </tr>{/if}</tbody>
          </table>
        </div>
      </div>
      <div class="depositRight fadeInRight wow">
        <h3>Last 10 withdrawals <img src="styles/assets/images/ctn-ic6.png"></h3>
        <div class="ctn-diposit-part1">
         <table>
				    			<tbody>
								{if $last_withdrawals}
								{foreach from=$last_withdrawals item=s}
								<tr>
												<td>{$s.username}</td>
												<td><span>{$currency_sign}{$s.amount}</span></td>
												<td><img src="images/{$s.ec}.gif"></td>
											</tr>{/foreach}{else}
											<tr>
												<td>No Data Found</td>
												<td><span>N/A</span></td>
												<td></td>
											</tr>{/if}
																						
																									    			</tbody>
				    		</table>
        </div>
      </div>
    </div>
  </div>
  <div class="investmentContainer">
    <div class="investmentInner zoomIn wow">
      <h2><span>{$settings.site_name} LTD</span> BENEFITS</h2>
      <hr>
      <div class="ctn-inves-row">
        <div class="ctn-Instant Instant-part1">
          <h1>Professional Team</h1>
          <p>We are team of professional traders in Forex &amp; Crypto Exchange and Coins trading and Crypto Mining who know how to grab the profit end of the day.</p>
        </div>
        <div class="ctn-Instant Instant-part2">
          <h1>ddos protection</h1>
          <p>We are using one of most experienced , professional and trusted DDoS Protection and mitigation provider.</p>
        </div>
        <div class="ctn-Instant Instant-part3">
          <h1>COMODO SSL Security</h1>
          <p>Our website using Comodo SSL Security, SSL <br> encryption and that confirms that the presented content is the genuine and legitimate.</p>
        </div>
        <div class="ctn-Instant Instant-part4">
          <h1>UK Registered Company</h1>
          <p>We are a legal company registered in the UK providing its investment services to the members all around the world.</p>
        </div>
        <div class="ctn-Instant Instant-part5">
          <h1>Instant Withdrawals</h1>
          <p>Get your payment instantly as soon as you request it! Minimum withdrawal is $0.1. There is no fee for withdrawals of hourly interest.</p>
        </div>
        <div class="ctn-Instant Instant-part6">
          <h1>Great Customer Support</h1>
          <p>We understand how important having reliable support service is to you. Please don't hesitate to contact us should you have any questions and we will get back to you in 24 Hours!</p>
        </div>
      </div>
    </div>
  </div>
  <div class="primebitContainer">
    <div class="primebitInner zoomIn wow ">
      <h1><span>3 level</span> Referral commission</h1>
      <div class="ctn-level fadeInLeft wow">
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
      <div class="text-level fadeInRight wow">
        <p>At {$settings.site_name} LTD, we believe there is no better advertisement than satisfied clients. No wonder that majority of our new clients are affiliates from our existing clients. We are proud that our clients like to recommend our financial service to others. Because of this, we are pleased to offer one of the strongest online affiliate programs in the financial service industry, with a high commission rate, customized tools and reports, and timely commission payouts. </p>
        <p>{$settings.site_name} LTD is paying for the popularization of its investment program and anyone can be rewarded. To benefit from this, you have to tell your friends, relatives or colleagues about our company. We offer 3 level referral commissions: The first level of direct referrals from you will entitle you to a commission of 4%, and second level gives you commission of 0.5% and third level is 0.5% . You can surely make a lot of money from the referral commissions you get!</p>
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
  <base href="../">
  <meta charset="utf-8">
  <meta name="author" content="Softnio">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="A powerful and conceptual apps base dashboard template that especially build for developers and programmers.">
  <!-- Fav Icon  -->
  <link rel="shortcut icon" href="/images/favicon.png">
  <!-- Page Title  -->
  <title>Home | DashLite Admin Template</title>
  <!-- StyleSheets  -->
  <link rel="stylesheet" href="/assets/css/dashlite.css?ver=3.2.0">
  <link rel="stylesheet" href="/assets/css/dashlite.min.css">
  <link id="skin-default" rel="stylesheet" href="/assets/css/theme.css?ver=3.2.0">

</head>

<body class="nk-body bg-white npc-landing ">
<div class="nk-app-root">
  <!-- main @s -->
  <div class="nk-main ">
    <header class="header header-32 has-header-main-s1 bg-dark" id="home">
      <div class="header-main header-main-s1 is-sticky is-transparent on-dark">
        <div class="container header-container">
          <div class="header-wrap">
            <div class="header-logo">
              <a href="html/index.html" class="logo-link">
                <img class="logo-light logo-img" src="./images/logo.png" srcset="./images/logo2x.png 2x" alt="logo">
                <img class="logo-dark logo-img" src="./images/logo-dark.png" srcset="./images/logo-dark2x.png 2x" alt="logo-dark">
              </a>
            </div>
            <div class="header-toggle">
              <button class="menu-toggler" data-target="mainNav">
                <em class="menu-on icon ni ni-menu"></em>
                <em class="menu-off icon ni ni-cross"></em>
              </button>
            </div><!-- .header-nav-toggle -->
            <nav class="header-menu" data-content="mainNav">
              <ul class="menu-list ms-lg-auto">
                <li class="menu-item has-sub">
                  <a href="#" class="menu-link menu-toggle">Landing</a>
                  <div class="menu-sub">
                    <ul class="menu-list">
                      <li class="menu-item"><a href="html/index.html" class="menu-link">Landing Page - v1</a></li>
                      <li class="menu-item"><a href="html/index-v2.html" class="menu-link">Landing Page - v2</a></li>
                      <li class="menu-item"><a href="html/index-v3.html" class="menu-link">Landing Page - v3</a></li>
                      <li class="menu-item"><a href="html/index-v4.html" class="menu-link">Landing Page - v4</a></li>
                      <li class="menu-item"><a href="html/index-v5.html" class="menu-link">Landing Page - v5</a></li>
                      <li class="menu-item"><a href="html/index-v6.html" class="menu-link">Landing Page - v6</a></li>
                    </ul>
                  </div>
                </li>
                <li class="menu-item has-sub">
                  <a href="#" class="menu-link menu-toggle">Pages</a>
                  <div class="menu-sub">
                    <ul class="menu-list">
                      <li class="menu-item has-sub">
                        <a href="#" class="menu-link menu-toggle">Auth Pages</a>
                        <div class="menu-sub">
                          <ul class="menu-list">
                            <li class="menu-item"><a href="html/pages/auths/auth-login.html" class="menu-link" target="_blank">Login / Signin</a></li>
                            <li class="menu-item"><a href="html/pages/auths/auth-login-v2.html" class="menu-link" target="_blank">Login / Signin v2</a></li>
                            <li class="menu-item"><a href="html/pages/auths/auth-login-v3.html" class="menu-link" target="_blank">Login / Signin v3</a></li>
                            <li class="menu-item"><a href="html/pages/auths/auth-register.html" class="menu-link" target="_blank">Register / Signup</a></li>
                            <li class="menu-item"><a href="html/pages/auths/auth-register-v2.html" class="menu-link" target="_blank">Register / Signup v2</a></li>
                            <li class="menu-item"><a href="html/pages/auths/auth-register-v3.html" class="menu-link" target="_blank">Register / Signup v3</a></li>
                            <li class="menu-item"><a href="html/pages/auths/auth-reset.html" class="menu-link" target="_blank">Forgot Password</a></li>
                            <li class="menu-item"><a href="html/pages/auths/auth-reset-v2.html" class="menu-link" target="_blank">Forgot Password v2</a></li>
                            <li class="menu-item"><a href="html/pages/auths/auth-reset-v3.html" class="menu-link" target="_blank">Forgot Password v3</a></li>
                          </ul>
                        </div>
                      </li>
                      <li class="menu-item has-sub">
                        <a href="#" class="menu-link menu-toggle">Error Pages</a>
                        <div class="menu-sub">
                          <ul class="menu-list">
                            <li class="menu-item"><a href="html/pages/errors/404-classic.html" target="_blank" class="menu-link">404 Classic</a></li>
                            <li class="menu-item"><a href="html/pages/errors/404-modern.html" target="_blank" class="menu-link">404 Modern</a></li>
                            <li class="menu-item"><a href="html/pages/errors/504-classic.html" target="_blank" class="menu-link">504 Classic</a></li>
                            <li class="menu-item"><a href="html/pages/errors/504-modern.html" target="_blank" class="menu-link">504 Modern</a></li>
                          </ul>
                        </div>
                      </li>
                    </ul>
                  </div>
                </li>
                <li class="menu-item"><a href="#home" class="menu-link nav-link">Home</a></li>
                <li class="menu-item"><a href="#feature" class="menu-link nav-link">Features</a></li>
                <li class="menu-item"><a href="#pricing" class="menu-link nav-link">Pricing</a></li>
                <li class="menu-item"><a href="#story" class="menu-link nav-link">Story</a></li>
              </ul>
              <ul class="menu-btns">
                <li>
                  <a href="https://1.envato.market/e0y3g" target="_blank" class="btn btn-primary btn-lg">Download App</a>
                </li>
              </ul>
            </nav><!-- .nk-nav-menu -->
          </div><!-- .header-warp-->
        </div><!-- .container-->
      </div><!-- .header-main-->
      <div class="header-content py-6 is-dark mt-lg-n1 mt-n3">
        <div class="container">
          <div class="row flex-row-reverse justify-content-center text-center g-gs">
            <div class="col-lg-6 col-md-7">
              <div class="header-caption">
                <h1 class="header-title">Powelful Tool To Represent Your Dashboard.</h1>
                <p>A powerful admin dashboard template that especially build for developers and programmers. DashLite comes with all kind of components.</p>
                <ul class="header-action btns-inline py-3">
                  <li>
                    <a href="#" class="btn btn-primary btn-lg"><span>Get Started</span></a>
                  </li>
                  <li>
                    <a href="#" class="btn btn-danger btn-lg"><span>View Demo</span></a>
                  </li>
                </ul><!-- .header-action -->
                <ul class="header-icon list-inline pt-1">
                  <li><img class="h-20px" src="./images/icon/libs/javascript.png" alt=""></li>
                  <li><img class="h-20px" src="./images/icon/libs/sass.png" alt=""></li>
                  <li><img class="h-20px" src="./images/icon/libs/gulp.png" alt=""></li>
                  <li><img class="h-20px" src="./images/icon/libs/bootstrap.png" alt=""></li>
                  <li><img class="h-20px" src="./images/icon/libs/html5.png" alt=""></li>
                  <li><img class="h-20px" src="./images/icon/libs/css3.png" alt=""></li>
                </ul>
              </div><!-- .header-caption -->
            </div><!-- .col -->
          </div><!-- .row -->
        </div><!-- .container -->
      </div><!-- .header-content -->
    </header><!-- .header -->
    <section class="section section-service pb-0" id="feature">
      <div class="container">
        <div class="row justify-content-center text-center">
          <div class="col-sm-8 col-lg-6">
            <div class="section-head">
              <h2 class="title">Make Your Website Growth With Next Level Visitors</h2>
            </div><!-- .section-head -->
          </div><!-- .col -->
        </div><!-- .row -->
        <div class="section-content">
          <div class="row justify-content-center text-center g-gs">
            <div class="col-sm-8 col-md-6 col-lg-4">
              <div class="service">
                <div class="service-icon styled-icon styled-icon-s4 styled-icon-6x circle text-primary">
                  <svg x="0px" y="0px" viewBox="0 0 512 512" style="fill:currentColor" xml:space="preserve">
                                            <path style="fill:currentColor; opacity:.52;" d="M197.3,0h-160C16.7,0,0,16.7,0,37.3v96c0,20.6,16.7,37.3,37.3,37.3h160c20.6,0,37.3-16.8,37.3-37.3v-96
	C234.7,16.7,217.9,0,197.3,0z" />
                    <path style="fill:currentColor" d="M197.3,213.3h-160C16.7,213.3,0,230.1,0,250.7v224C0,495.2,16.7,512,37.3,512h160c20.6,0,37.3-16.8,37.3-37.3
	v-224C234.7,230.1,217.9,213.3,197.3,213.3z" />
                    <path style="fill:currentColor; opacity:.52;" d="M474.7,341.3h-160c-20.6,0-37.3,16.8-37.3,37.3v96c0,20.6,16.7,37.3,37.3,37.3h160c20.6,0,37.3-16.8,37.3-37.3
	v-96C512,358.1,495.2,341.3,474.7,341.3z" />
                    <path style="fill:currentColor" d="M474.7,0h-160c-20.6,0-37.3,16.7-37.3,37.3v224c0,20.6,16.7,37.3,37.3,37.3h160c20.6,0,37.3-16.8,37.3-37.3
	v-224C512,16.7,495.2,0,474.7,0z" />
                                        </svg>
                </div><!-- .service-icon -->
                <div class="service-text">
                  <h4 class="title">Friendly Design</h4>
                  <p>Lorem ipsum dolor sit amet, conse ctetur adipisicing elit, sed do eiusm lod tempor incididunt ctechtner.</p>
                </div><!-- .service-text -->
              </div><!-- .service -->
            </div><!-- .col -->
            <div class="col-sm-8 col-md-6 col-lg-4">
              <div class="service">
                <div class="service-icon styled-icon styled-icon-s4 styled-icon-6x circle text-primary">
                  <svg x="0px" y="0px" viewBox="0 0 512 512" style="fill:currentColor" xml:space="preserve">
                                            <path style="fill:currentColor" d="M486.9,71.7c-0.9-6.6-5.9-12-12.5-13.8L261.2,0.6c-3-0.8-6.2-0.8-9.3,0L38.7,57.9c-6.7,1.8-11.6,7.2-12.5,13.8
	C25,80.3-3.2,283,69.1,383.9C141.4,484.6,248,510.5,252.5,511.5c1.3,0.3,2.7,0.5,4.1,0.5c1.4,0,2.7-0.2,4.1-0.5
	c4.5-1,111.1-26.9,183.4-127.6C516.4,283,488.2,80.3,486.9,71.7z M394.1,190.1L248.6,330.4c-3.4,3.3-7.8,4.9-12.2,4.9
	s-8.9-1.6-12.2-4.9l-89.9-86.8c-3.3-3.1-5.1-7.4-5.1-11.8c0-4.4,1.8-8.7,5.1-11.8l17.8-17.2c6.8-6.5,17.7-6.5,24.5,0l59.8,57.7
	l115.3-111.3c3.3-3.1,7.7-4.9,12.2-4.9c4.6,0,9,1.8,12.2,4.9l17.8,17.2C400.8,172.9,400.8,183.5,394.1,190.1z" />
                                        </svg>
                </div><!-- .service-icon -->
                <div class="service-text">
                  <h4 class="title">Strong Security</h4>
                  <p>Lorem ipsum dolor sit amet, conse ctetur adipisicing elit, sed do eiusm lod tempor incididunt ctechtner.</p>
                </div><!-- .secvice-text -->
              </div><!-- .service -->
            </div><!-- .col- -->
            <div class="col-sm-8 col-md-6 col-lg-4">
              <div class="service">
                <div class="service-icon styled-icon styled-icon-s4 styled-icon-6x circle text-primary">
                  <svg x="0px" y="0px" viewBox="0 0 512 512" style="fill:currentColor" xml:space="preserve">
                                            <g>
                                              <defs>
                                                <rect id="PIESVGID_1_" x="5.7" width="500.1" height="512" />
                                              </defs>
                                              <clipPath id="PIESVGID_2_">
                                                <use xlink:href="#PIESVGID_1_" style="overflow:visible;" />
                                              </clipPath>
                                              <g style="clip-path:url(#PIESVGID_2_);">
                                                <path style="fill:currentColor; opacity:.52;" d="M266.1,0c-5.8,0-10.4,4.8-10.4,10.7v234.4c0,5.9,4.7,10.7,10.4,10.7h229.2c5.8,0,10.4-4.8,10.4-10.7
			C505.6,109.8,398.4,0.1,266.1,0z" />
                                                <path style="fill:currentColor" d="M378.5,451.6L234.9,262.7V32c0-5.9-4.7-10.7-10.4-10.7C103.8,21.3,5.7,131.2,5.7,266.4
			C5.8,401.7,113,511.3,245.3,511.5c48,3.8,95.5-12.4,131.6-45.1C381.3,462.7,382,456.2,378.5,451.6z" />
                                                <path style="fill:currentColor; opacity:.7;" d="M495.3,277H287c-5.8,0-10.4,4.8-10.4,10.7c0,2.4,0.8,4.8,2.3,6.7l135.4,171.5c1.8,2.3,4.5,3.7,7.4,3.9h0.7
			c2.6,0,5.2-1,7.1-2.9c48.5-46.4,76.1-111.3,76.2-179.3C505.8,281.8,501.1,277,495.3,277z" />
                                              </g>
                                            </g>
                                        </svg>
                </div><!-- .service-icon -->
                <div class="service-text">
                  <h4 class="title">Data Analycis</h4>
                  <p>Lorem ipsum dolor sit amet, conse ctetur adipisicing elit, sed do eiusm lod tempor incididunt ctechtner.</p>
                </div><!-- .service-text -->
              </div><!-- .service -->
            </div><!-- .col -->
          </div><!-- .row -->
        </div><!-- .section-content -->
      </div><!-- .container -->
    </section><!-- .section -->
    <section class="section section-feature pb-0">
      <div class="container">
        <div class="row g-gs justify-content-between align-items-center">
          <div class="col-lg-6">
            <div class="img-block">
              <img src="./images/gfx/d.png" alt="">
            </div>
          </div><!-- .col -->
          <div class="col-lg-5">
            <div class="text-block">
              <h2 class="title mb-3">Topics, Notes And Action Items All In One Place </h2>
              <ul class="list list-lg list-purple list-checked-circle gy-4">
                <li class="ps-5"><strong>Amazing Features</strong>: For Enhanced performance we use Lite Speed web server, HTTP/2,PHP7.We make your Everything stays organized by to pic.Need to discuss a topic further.</li>
                <li class="ps-5"><strong>Topics, notes and action items</strong>: Everything stays organized by topic.Need to discuss a topic further? Set it to Revisit and it.We make your everything stays organized.</li>
              </ul>
            </div><!-- .text-block -->
          </div><!-- .col -->
        </div><!-- .row -->
      </div><!-- .container -->
    </section><!-- .section -->
    <section class="section section-feature pb-0">
      <div class="container">
        <div class="row g-gs flex-row-reverse justify-content-between align-items-center">
          <div class="col-lg-6">
            <div class="img-block">
              <img src="./images/gfx/e.png" alt="Dashlite">
            </div>
          </div><!-- .col -->
          <div class="col-lg-5">
            <div class="text-block">
              <h2 class="title mb-3">Amazing Tool For Creative Profesional</h2>
              <p>Bring to the table win-win survival strategies to ensure proactive domination.At the end of the day, going forward, a new normal that has envolved from generation X ison the runway heading toward</p>
              <ul class="list list-lg list-purple list-checked-circle pt-1">
                <li class="ps-5 pb-1"><strong>Where meetings come together in one</strong></li>
                <li class="ps-5 pb-1"><strong>Workspaces forevery meeting.</strong></li>
                <li class="ps-5 pb-1"><strong>Amazing Feature.For Enhanced performance.</strong></li>
              </ul>
            </div><!-- .text-block -->
          </div><!-- .col -->
        </div><!-- .row -->
      </div><!-- .container -->
    </section><!-- .section -->
    <section class="section section-pricing pb-0" id="pricing">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-xl-6 col-md-8 col-sm-10">
            <div class="section-head text-center">
              <h2 class="title fw-medium">Choose Your Plan</h2>
              <p>Best plan dolor sit amet, consectetur adipiscing elit. Commodo at fringilla dictum ut ante habitasse quis. Ut integer in </p>
            </div><!-- .section-head -->
          </div><!-- .col -->
        </div><!-- .row -->
        <div class="row justify-content-center g-gs">
          <div class="col-xl-4 col-lg-4 col-sm-6">
            <div class="pricing pricing-s3 pricing-s3-featured card card-shadow card-bordered round-xl">
              <div class="card-inner card-inner-lg">
                <h4 class="title pb-2 fw-normal">Basic</h4>
                <h1 class="pb-4 fw-medium"><sub>$</sub>15</h1>
                <ul class="list list-success list-check gy-2">
                  <li><strong>6 Dashboard</strong></li>
                  <li><strong>24/7 Live Support</strong></li>
                  <li><strong>20 screen</strong></li>
                  <li><strong>Tech Support</strong></li>
                  <li><strong>Clean Design</strong></li>
                </ul>
                <div class="pricing-action">
                  <a href="#" class="btn btn-outline-light btn-lg btn-block"><span>Buy Plan</span></a>
                </div>
              </div>
            </div>
          </div><!-- .col -->
          <div class="col-xl-4 col-lg-4 col-sm-6">
            <div class="pricing pricing-s3 pricing-featured card card-shadow card-bordered round-xl">
              <div class="card-inner card-inner-lg">
                <h4 class="title pb-2 fw-normal">Premium</h4>
                <h1 class="pb-4 fw-medium"><sub>$</sub>20</h1>
                <ul class="list list-success list-check gy-2">
                  <li><strong>16 Dashboard</strong></li>
                  <li><strong>24/7 Live Support</strong></li>
                  <li><strong>20 screen</strong></li>
                  <li><strong>Tech Support</strong></li>
                  <li><strong>Analytics & Reports</strong></li>
                </ul>
                <div class="pricing-action">
                  <a href="#" class="btn btn-outline-light btn-lg btn-block"><span>Buy Plan</span></a>
                </div>
              </div>
            </div>
          </div><!-- .col -->
          <div class="col-xl-4 col-lg-4 col-sm-6">
            <div class="pricing pricing-s3 pricing-s3-featured card card-shadow card-bordered round-xl">
              <div class="card-inner card-inner-lg">
                <h4 class="title pb-2 fw-normal">Ultimate</h4>
                <h1 class="pb-4 fw-medium"><sub>$</sub>30</h1>
                <ul class="list list-success list-check gy-2">
                  <li><strong>6 Dashboard</strong></li>
                  <li><strong>24/7 Live Support</strong></li>
                  <li><strong>20 screen</strong></li>
                  <li><strong>Tech Support</strong></li>
                  <li><strong>Clean Design</strong></li>
                </ul>
                <div class="pricing-action">
                  <a href="#" class="btn btn-outline-light btn-lg btn-block"><span>Buy Plan</span></a>
                </div>
              </div>
            </div>
          </div><!-- .col -->
        </div><!-- .row -->
      </div><!-- .container -->
    </section><!-- .section -->
    <section class="section section-about" id="story">
      <div class="container">
        <div class="row align-items-center justify-content-between g-gs">
          <div class="col-lg-6">
            <div class="img-block">
              <img src="./images/gfx/f.png" alt="img">
            </div>
          </div><!-- .col -->
          <div class="col-xl-5 col-lg-6">
            <div class="text-block">
              <h2 class="title fw-medium">Story of Making DashLite</h2>
              <p>In marketplace, most of dashboard are generic. On other hand developers and programmers faced lots problem to build their application because those generic dashboard does not provide real-use-case pages. To solve the problem, Softnio Team make a vision.</p>
              <p>Our vision is so simple. Create the largest and the most comprehensive conceptual base dashboard including great UI/UX.</p>
              <h6 class="overline-title">Designed and developed by</h6>
              <div class="row gy-3">
                <div class="col-sm-6">
                  <div class="user user-s1">
                    <div class="img">
                      <img class="img-circle sm" src="./images/client/sq-b.jpg" alt="">
                    </div><!-- img-->
                    <div class="info">
                      <h6 class="name">Abu Bin Ishityak</h6>
                      <div class="role text-uppercase">Role as Designer</div>
                    </div>
                  </div><!-- user -->
                </div>
                <div class="col-sm-6">
                  <div class="user user-s1">
                    <div class="img">
                      <img class="img-circle sm" src="./images/client/sq-a.jpg" alt="">
                    </div><!-- img-->
                    <div class="info">
                      <h6 class="name">Softnio Team</h6>
                      <div class="role text-uppercase">Role as Designer</div>
                    </div>
                  </div><!-- user -->
                </div>
              </div>
            </div><!-- .text-block -->
          </div><!-- .col -->
        </div><!-- .row -->
      </div><!-- .container -->
    </section><!-- .section -->
    <section class="section section-cta bg-lighter" id="cta">
      <div class="container">
        <div class="row justify-content-center text-center">
          <div class="col-xl-6 col-lg-7 col-md-8">
            <div class="text-block is-compact">
              <h2 class="title">Experience Our Dashlite Service</h2>
              <p>Our vision is so simple. Create the largest and the most comprehensive conceptual base dashboard including great UI/UX ui/ux.</p>
              <ul class="btns-inline">
                <li>
                  <a href="#" class="btn btn-lg btn-primary">Get Dashlite</a>
                </li>
              </ul>
            </div>
          </div><!-- ,col -->
        </div><!-- .row -->
      </div><!-- .container -->
    </section><!-- .section -->
    <footer class="footer bg-dark is-dark section section-sm" id="footer">
      <div class="container">
        <div class="row g-3 align-items-center">
          <div class="col-md-3">
            <div class="footer-logo">
              <a href="html/index.html" class="logo-link">
                <img class="logo-light logo-img" src="./images/logo.png" srcset="./images/logo2x.png 2x" alt="logo">
                <img class="logo-dark logo-img" src="./images/logo-dark.png" srcset="./images/logo-dark2x.png 2x" alt="logo-dark">
              </a>
            </div><!-- .footer-logo -->
          </div><!-- .col -->
          <div class="col-md-9 d-flex justify-content-md-end">
            <ul class="link-inline gx-4">
              <li><a href="#">All Preview</a></li>
              <li><a href="#">Features</a></li>
              <li><a href="#">Doc</a></li>
              <li><a href="#">Need Help?</a></li>
            </ul><!-- .footer-nav -->
          </div><!-- .col -->
        </div>
        <div class="row g-3 align-items-center pt-4">
          <div class="col-md-8">
            <div class="text-base">&copy; 2023 Dashlite. Template Made by <a class="text-base fw-bold" href="#">Softnio</a></div>
          </div><!-- .col -->
          <div class="col-md-4 d-flex justify-content-md-end">
            <ul class="social">
              <li><a href="#"><em class="icon ni ni-facebook-f"></em></a></li>
              <li><a href="#"><em class="icon ni ni-instagram"></em></a></li>
              <li><a href="#"><em class="icon ni ni-twitter"></em></a></li>
            </ul><!-- .footer-icon -->
          </div><!-- .col -->
        </div><!-- .row -->
      </div><!-- .container -->
    </footer><!-- .footer -->
  </div>
  <!-- main @e -->
</div>
<!-- app-root @e -->
<!-- JavaScript -->
<script src="./assets/js/bundle.js?ver=3.2.0"></script>
<script src="./assets/js/scripts.js?ver=3.2.0"></script>
</body>

</html>