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
                  <li><a href="?a=home">Home</a></li>
                  <li><a style="color:#c79021!important;" href="?a=about">About</a></li>
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
          <h3>About <span>us</span></h3>
        </div>
      </div>
    </div>

  </div>

  <div class="contentTopContainer">
    <div class="contentTopInnerAbout">
      <p> Welcome to the website of {$settings.site_name} LTD! If you find yourself here, you are definitely in search of reliable and profitable investment. Yes, you are just at the right place! Our company offers trust assets management of the highest quality on the basis of foreign exchange and profitable trade through Funds exchanges. There is no other worldwide financial market that can guarantee a Hourly ability to generate constant profit with the large price swings of BitCoin and other crypto currencies. Proposed modalities for strengthening cooperation will be accepted by anyone who uses cryptocurrency and knows about its fantastic prospects.</p>
      <p>{$settings.site_name} LTD investment project is a product of careful preparation and fruitful work of experts in the field of mining, highly profitable trade in cryptocurrencies and online marketing. Using modern methods of doing business and a personal approach to each client, we offer a unique investment model to people who want to use cryptocurrencies not only as a method of payment, but also as a reliable source of stable income.</p>
      <p>Your deposit is working on an ongoing basis, and makes profit every hour with the ability to withdraw profit. Your deposit is for life and irretrievable. This proposal would be interesting not only for beginners of cryptocurrency operation, but also for experienced online investors. {$settings.site_name} LTD Business uses only modern mining equipment and trades at the most stable markets, which minimizes the risk of financial loss to customers and guarantees them a stable income accrued every 60 minutes. Join our company today and start making high profits!</p>


    </div>
  </div>
  <div class="investmentContainer">
    <div class="investmentInner">
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

{$SiteName = "Capital Coin Investment"}
{$PageTage = "Secured Investment Platform"}
{$siteLogo = "/assets/images/logo/logo.png"}
{$siteLogoDark = "/assets/images/logo/logo.png"}
{$siteIcon = "/assets/images/logo/favicon.png"}
{include file="front_header.tpl"}

      <div class="header-content my-auto py-5 is-dark">
        <div class="container">
          <div class="row flex-lg-row-reverse align-items-center justify-content-between g-gs">
            <div class="col-lg-6">
              <div class="header-image header-image-s2">
                <img src="./images/header/gfx-b.png" alt="">
              </div><!-- .header-image -->
            </div><!-- .col- -->
            <div class="col-lg-5 col-md-10">
              <div class="header-caption">
                <h1 class="header-title fw-medium">About Us {$SiteName}</h1>
              </div><!-- .header-caption -->
            </div><!-- .col -->
          </div>
          <div class="row mt-5">
            <div class="col-lg-4">
              <div class="header-text">
                <p>Welcome to the website of {$SiteName} If you find yourself here, you are definitely in search of reliable and profitable investment. Yes, you are just at the right place! Our company offers trust assets management of the highest quality on the basis of foreign exchange and profitable trade through Funds exchanges. There is no other worldwide financial market that can guarantee a</p>
              </div>
            </div>
            <div class="col-lg-4">
              <div class="header-text">
                <p>Hourly ability to generate constant profit with the large price swings of BitCoin and other cryptocurrencies. Proposed modalities for strengthening cooperation will be accepted by anyone who uses cryptocurrency and knows about its fantastic prospects.</p>

                <p>{$SiteName} investment project is a product of careful preparation and fruitful work of experts in the field of mining, highly profitable trade in cryptocurrencies</p>
              </div>
            </div>
            <div class="col-lg-4">
              <div class="header-text">
                <p>and online marketing. Using modern methods of doing business and a personal approach to each client, we offer a unique investment model to people who want to use cryptocurrencies not only as a method of payment, but also as a reliable source of stable income.</p>
              </div>
            </div>
            <div class="col-lg-12 my-4">
              <div class="header-text">
                Your deposit is working on an ongoing basis, and makes profit every hour with the ability to withdraw profit. Your deposit is for life and irretrievable. This proposal would be interesting not only for beginners of cryptocurrency operation, but also for experienced online investors. {$SiteName} Business uses only modern mining equipment and trades at the most stable markets, which minimizes the risk of financial loss to customers and guarantees them a stable income accrued every 60 minutes. Join our company today and start making high profits!
              </div>
            </div>
          </div><!-- .row -->
        </div><!-- .container -->
      </div><!-- .header-content -->
      <div class="header-brand py-4 py-lg-4">
        <div class="container">
          <div class="row align-items-center gy-gs gx-5">
            <div class="col-4 col-lg-2">
              <div class="brand-item h-40px">
                <img src="./images/brand/a.png" alt="">
              </div>
            </div><!-- .col -->
            <div class="col-4 col-lg-2">
              <div class="brand-item h-40px">
                <img src="./images/brand/b.png" alt="">
              </div>
            </div><!-- .col -->
            <div class="col-4 col-lg-2">
              <div class="brand-item h-40px">
                <img src="./images/brand/c.png" alt="">
              </div>
            </div><!-- .col -->
            <div class="col-4 col-lg-2">
              <div class="brand-item h-40px">
                <img src="./images/brand/d.png" alt="">
              </div>
            </div><!-- .col -->
            <div class="col-4 col-lg-2">
              <div class="brand-item h-40px">
                <img src="./images/brand/e.png" alt="">
              </div>
            </div><!-- .col -->
            <div class="col-4 col-lg-2">
              <div class="brand-item h-40px">
                <img src="./images/brand/f.png" alt="">
              </div>
            </div><!-- .col -->
          </div><!-- .row -->
        </div><!-- .container -->
      </div><!-- .header-brand -->
    </header><!-- .header -->
    <section class="section section-feature" id="feature">
      <div class="container">
        <div class="row align-items-center justify-content-between g-gs">
          <div class="col-lg-6">
            <div class="img-block">
              <img src="./images/gfx/d.png" alt="">
            </div><!-- .img-block -->
          </div><!-- .col -->
          <div class="col-xl-5 col-lg-6">
            <div class="text-block">
              <h3 class="title fw-medium mb-5">Make Your Website Growth</h3>
              <div class="g-gs">
                <div class="service service-inline service-s6">
                  <div class="service-icon styled-icon styled-icon-4x styled-icon-s4 text-primary">
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
                  </div>
                  <div class="service-text">
                    <h5 class="title fw-medium">Friendly Design</h5>
                    <p>Many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.</p>
                  </div>
                </div><!-- .service -->
                <div class="service service-inline service-s6">
                  <div class="service-icon styled-icon styled-icon-4x styled-icon-s4 text-primary">
                    <svg x="0px" y="0px" viewBox="0 0 512 512" style="fill:currentColor" xml:space="preserve">
                                                <path style="fill:currentColor" d="M486.9,71.7c-0.9-6.6-5.9-12-12.5-13.8L261.2,0.6c-3-0.8-6.2-0.8-9.3,0L38.7,57.9c-6.7,1.8-11.6,7.2-12.5,13.8
	C25,80.3-3.2,283,69.1,383.9C141.4,484.6,248,510.5,252.5,511.5c1.3,0.3,2.7,0.5,4.1,0.5c1.4,0,2.7-0.2,4.1-0.5
	c4.5-1,111.1-26.9,183.4-127.6C516.4,283,488.2,80.3,486.9,71.7z M394.1,190.1L248.6,330.4c-3.4,3.3-7.8,4.9-12.2,4.9
	s-8.9-1.6-12.2-4.9l-89.9-86.8c-3.3-3.1-5.1-7.4-5.1-11.8c0-4.4,1.8-8.7,5.1-11.8l17.8-17.2c6.8-6.5,17.7-6.5,24.5,0l59.8,57.7
	l115.3-111.3c3.3-3.1,7.7-4.9,12.2-4.9c4.6,0,9,1.8,12.2,4.9l17.8,17.2C400.8,172.9,400.8,183.5,394.1,190.1z" />
                                            </svg>
                  </div>
                  <div class="service-text">
                    <h5 class="title fw-medium">Strong Security</h5>
                    <p>Slightly variations of passages available the majority have suffered alteration even slightly believable.</p>
                  </div>
                </div><!-- .service -->
                <div class="service service-inline service-s6">
                  <div class="service-icon styled-icon styled-icon-4x styled-icon-s4 text-primary">
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
                  </div>
                  <div class="service-text">
                    <h5 class=" fw-medium">Data Analycis</h5>
                    <p>Slightly variations of passages available the majority have suffered alteration even slightly believable.</p>
                  </div>
                </div><!-- .service -->
              </div>
            </div><!-- .text-block -->
          </div><!-- .col -->
        </div><!-- .row -->
      </div><!-- .container -->
    </section><!-- .section -->
    <section class="section section-feature bg-dark is-dark">
      <div class="container">
        <div class="row justify-content-center text-center">
          <div class="col-lg-8 col-md-10">
            <div class="section-head">
              <h2 class="title fw-medium">Special Features</h2>
              <p>An overview of DashLite – is fully clean and premium designed admin template which included beautiful hand-crafted components & elements.</p>
            </div><!-- .section-head -->
          </div><!-- .col -->
        </div><!-- .row -->
        <div class="section-content">
          <div class="row justify-content-center">
            <div class="col-xl-8 col-lg-10">
              <div class="row text-center g-gs">
                <div class="col-md-3 col-6">
                  <div class="card card-shadow service is-compact">
                    <div class="card-inner">
                      <div class="service-icon styled-icon styled-icon-s4 styled-icon-6x circle text-primary">
                        <svg x="0px" y="0px" viewBox="0 0 512 512" style="fill:currentColor" xml:space="preserve">
                                                        <path style="fill:currentColor" d="M256,0C114.6,0,0,114.6,0,256c0,141.4,114.6,256,256,256c23.6,0,42.7-19.1,42.7-42.7c0-11.1-4.1-21.1-11.1-28.6
	c-6.7-7.5-10.7-17.3-10.7-28.3c0-23.6,19.1-42.7,42.7-42.7h50.2c78.5,0,142.2-63.7,142.2-142.2C512,101.8,397.4,0,256,0z M99.6,256
	c-23.6,0-42.7-19.1-42.7-42.7s19.1-42.7,42.7-42.7c23.6,0,42.7,19.1,42.7,42.7S123.2,256,99.6,256z M184.9,142.2
	c-23.6,0-42.7-19.1-42.7-42.7c0-23.6,19.1-42.7,42.7-42.7s42.7,19.1,42.7,42.7C227.6,123.2,208.5,142.2,184.9,142.2z M327.1,142.2
	c-23.6,0-42.7-19.1-42.7-42.7c0-23.6,19.1-42.7,42.7-42.7s42.7,19.1,42.7,42.7C369.8,123.2,350.7,142.2,327.1,142.2z M412.4,256
	c-23.6,0-42.7-19.1-42.7-42.7s19.1-42.7,42.7-42.7c23.6,0,42.7,19.1,42.7,42.7S436.1,256,412.4,256z" />
                                                    </svg>
                      </div>
                      <div class="service-text">
                        <h6 class="title text-dark fs-14px">Colourful</h6>
                      </div>
                    </div><!-- .service -->
                  </div><!-- .card -->
                </div><!-- .col -->
                <div class="col-md-3 col-6">
                  <div class="card card-shadow service is-compact">
                    <div class="card-inner">
                      <div class="service-icon styled-icon styled-icon-s4 styled-icon-6x circle text-primary">
                        <svg x="0px" y="0px" viewBox="0 0 512 512" style="fill:currentColor" xml:space="preserve">
                                                        <rect x="238.9" y="392.5" style="fill:currentColor" width="34.1" height="102.4" />
                          <path style="fill:currentColor" d="M162.1,477.9h187.7c4.7,0,8.5,3.8,8.5,8.5v17.1c0,4.7-3.8,8.5-8.5,8.5H162.1c-4.7,0-8.5-3.8-8.5-8.5v-17.1
	C153.6,481.7,157.4,477.9,162.1,477.9z" />
                          <path style="fill:currentColor" d="M0,34.1C0,15.3,15.3,0,34.1,0h443.7C496.7,0,512,15.3,512,34.1v341.3H0V34.1z" />
                          <path style="fill:currentColor" d="M0,375.5h512c0,18.9-15.3,34.1-34.1,34.1H34.1C15.3,409.6,0,394.3,0,375.5z" />
                          <g>
                            <defs>
                              <rect id="CODEDISPLAY_SVGID_1_" x="119.5" y="102.4" width="256.6" height="204.8" />
                            </defs>
                            <clipPath id="CODEDISPLAY_SVGID_2_">
                              <use xlink:href="#CODEDISPLAY_SVGID_1_" style="overflow:visible;" />
                            </clipPath>
                            <g style="clip-path:url(#CODEDISPLAY_SVGID_2_);">
                              <path style="fill:#fff" d="M373.5,198.2l-59.4-63.1c-3.6-3.9-9.7-4.1-13.6-0.4c-3.9,3.7-4,9.8-0.4,13.7l53.1,56.5l-53.1,56.5
			c-3.6,3.9-3.5,10,0.4,13.7c1.9,1.8,4.2,2.6,6.6,2.6c2.6,0,5.1-1,7-3l59.4-63.1C377,207.7,377,201.9,373.5,198.2z" />
                              <path style="fill:#fff" d="M195.4,261.3l-53.1-56.5l53.1-56.5c3.6-3.9,3.5-10-0.4-13.7c-3.9-3.7-10-3.5-13.6,0.4l-59.4,63.1
			c-3.5,3.7-3.5,9.5,0,13.3l59.4,63.1c1.9,2,4.4,3,7,3c2.4,0,4.7-0.9,6.6-2.6C198.9,271.3,199.1,265.2,195.4,261.3z" />
                              <path style="fill:#fff" d="M263.4,102.5c-5.3-0.8-10.2,2.8-11,8.1l-28.2,185.5c-0.8,5.3,2.8,10.2,8.1,11c0.5,0.1,1,0.1,1.5,0.1
			c4.7,0,8.8-3.4,9.5-8.2l28.2-185.5C272.2,108.2,268.6,103.3,263.4,102.5z" />
                            </g>
                          </g>
                                                    </svg>
                      </div>
                      <div class="service-text">
                        <h6 class="title text-dark fs-14px">Well Coded</h6>
                      </div>
                    </div><!-- .service -->
                  </div><!-- .card -->
                </div><!-- .col -->
                <div class="col-md-3 col-6">
                  <div class="card card-shadow service is-compact">
                    <div class="card-inner">
                      <div class="service-icon styled-icon styled-icon-s4 styled-icon-6x circle text-primary">
                        <svg x="0px" y="0px" viewBox="0 0 512 512" style="fill:currentColor" xml:space="preserve">
                                                        <g>
                                                          <defs>
                                                            <rect id="TOOLSALT_SVGID_1_" width="512" height="512" />
                                                          </defs>
                                                          <clipPath id="TOOLSALT_SVGID_2_">
                                                            <use xlink:href="#TOOLSALT_SVGID_1_" style="overflow:visible;" />
                                                          </clipPath>
                                                          <g style="clip-path:url(#TOOLSALT_SVGID_2_);">
                                                            <path style="fill:currentColor" d="M32.6,394.6L0,512l117.4-32.5L32.6,394.6z" />
                                                            <path style="fill:currentColor" d="M498.9,34.3l-21.2-21.2c-17.5-17.5-46.1-17.5-63.6,0l-15.2,15.2l84.9,84.9L498.9,98
			C516.4,80.5,516.4,51.8,498.9,34.3z" />
                                                            <path style="fill:currentColor" d="M377.7,49.5l-21.2,21.2l84.9,84.9l21.2-21.2L377.7,49.5z" />
                                                            <path style="fill:currentColor" d="M388.2,145L106.8,426.4l31.8,31.8l281.5-281.5L388.2,145z" />
                                                            <path style="fill:currentColor" d="M335.2,91.9L53.8,373.4l31.8,31.8L367,123.7L335.2,91.9z" />
                                                            <path style="fill:currentColor" d="M483.4,345.6c-22.1-22.1-52.1-31.3-80.9-27.8l-40.5-40.5l-84.8,84.8l40.5,40.5c-3,24.1,3.1,49,18,69.4
			l89.3-89.3l76.2,76.2C520.1,422.3,514.1,376.2,483.4,345.6z" />
                                                            <path style="fill:currentColor" d="M403.9,446.3L357,493.2c30,21.9,69.6,24.6,101.9,8.1L403.9,446.3z" />
                                                            <path style="fill:currentColor" d="M53.1,10.7l55,55L155,18.8C125.1-3.2,85.4-5.9,53.1,10.7z" />
                                                            <path style="fill:currentColor" d="M194.3,109.4c3-24.1-3.1-49-18-69.4l-89.3,89.3L10.7,53.1C-8.1,89.7-2.1,135.8,28.6,166.4
			c22.1,22.1,52.1,31.4,80.9,27.8l40.5,40.5l84.9-84.8L194.3,109.4z" />
                                                          </g>
                                                        </g>
                                                    </svg>
                      </div>
                      <div class="service-text">
                        <h6 class="title text-dark fs-14px">Easy Customise</h6>
                      </div>
                    </div><!-- .service -->
                  </div><!-- .card -->
                </div><!-- .col -->
                <div class="col-md-3 col-6">
                  <div class="card card-shadow service is-compact">
                    <div class="card-inner">
                      <div class="service-icon styled-icon styled-icon-s4 styled-icon-6x circle text-primary">
                        <svg x="0px" y="0px" viewBox="0 0 512 512" style="fill:currentColor" xml:space="preserve">
                                                        <path style="fill:currentColor" d="M487,192.8h-39.3v-17.1C447.7,77.7,352.2,0,256,0C160,0,64.3,77.5,64.3,175.7v17.1H25c-13.8,0-25,11.2-25,25
	v108.5c0,13.8,11.2,25,25,25h39.3v31.5c0,53.5,43.5,97,97,97h39.5v7.1c0,13.8,11.2,25,25,25h60.3c13.8,0,25-11.2,25-25v-44.3
	c0-13.8-11.2-25-25-25h-60.3c-13.8,0-25,11.2-25,25v7.1h-39.5c-37,0-67-30.1-67-67v-7.4h39.3c13.8,0,25-11.2,25-25V193.7
	c0-13.8-11.2-25-25-25H94.5C99,95.2,173.9,30,256,30s157,65.2,161.5,138.7h-39.1c-13.8,0-25,11.2-25,25v156.7c0,13.8,11.2,25,25,25
	h44.3c13.5,0,24.5-10.7,25-24.1H487c13.8,0,25-11.2,25-25V217.8C512,204,500.8,192.8,487,192.8z" />
                                                    </svg>
                      </div>
                      <div class="service-text">
                        <h6 class="title text-dark fs-14px">24/7 Support</h6>
                      </div>
                    </div><!-- .service -->
                  </div><!-- .card -->
                </div><!-- .col -->
              </div><!-- .row -->
            </div>
          </div>
        </div><!-- .section-content -->
      </div><!-- .container -->
    </section><!-- .section -->
    <section class="section section-dashboard bg-lighter" id="previews">
      <div class="container">
        <div class="row justify-content-center text-center">
          <div class="col-lg-7 col-md-10">
            <div class="section-head">
              <h2 class="title fw-medium">Multipurpose Admin Dashboard</h2>
              <p>DashLite template included different layouts that fit into any application. Also all the layouts supported Dark Theme Mode & RTL Compatibility.</p>
            </div><!-- .section-head -->
          </div><!-- .col -->
        </div><!-- .row -->
        <div class="row text-center g-gs justify-center">
          <div class="col-lg-4 col-sm-6 col-mb-9">
            <a href="/demo1/index.html" class="card card-shadow product product-s2">
              <div class="card-inner product-img bg-purple">
                <img src="./images/product/a.jpg" alt="">
              </div>
              <div class="card-inner product-info">
                <h6 class="title">Layout - Demo 1</h6>
              </div><!-- .card-inner-->
            </a><!-- .card -->
          </div><!-- .col -->
          <div class="col-lg-4 col-sm-6 col-mb-9">
            <a href="/demo2/index.html" class="card card-shadow product product-s2">
              <div class="card-inner product-img bg-pink">
                <img src="./images/product/b.jpg" alt="">
              </div>
              <div class="card-inner product-info">
                <h6 class="title">Layout - Demo 2</h6>
              </div><!-- .card-inner-->
            </a><!-- .card -->
          </div><!-- .col -->
          <div class="col-lg-4 col-sm-6 col-mb-9">
            <a href="/demo3/index.html" class="card card-shadow product product-s2">
              <div class="card-inner product-img bg-teal">
                <img src="./images/product/c.jpg" alt="">
              </div>
              <div class="card-inner product-info">
                <h6 class="title">Layout - Demo 3</h6>
              </div><!-- .card-inner-->
            </a><!-- .card -->
          </div><!-- .col -->
          <div class="col-lg-4 col-sm-6 col-mb-9">
            <a href="/demo4/index.html" class="card card-shadow product product-s2">
              <div class="card-inner product-img bg-danger">
                <img src="./images/product/d.jpg" alt="">
              </div>
              <div class="card-inner product-info">
                <h6 class="title">Layout - Demo 4</h6>
              </div><!-- .card-inner-->
            </a><!-- .card -->
          </div><!-- .col -->
          <div class="col-lg-4 col-sm-6 col-mb-9">
            <a href="/demo5/index.html" class="card card-shadow product product-s2">
              <div class="card-inner product-img bg-warning">
                <img src="./images/product/e.jpg" alt="">
              </div>
              <div class="card-inner product-info">
                <h6 class="title">Layout - Demo 5</h6>
              </div><!-- .card-inner-->
            </a><!-- .card -->
          </div><!-- .col -->
          <div class="col-lg-4 col-sm-6 col-mb-9">
            <a href="/demo6/index.html" class="card card-shadow product product-s2">
              <div class="card-inner product-img bg-info">
                <img src="./images/product/f.jpg" alt="">
              </div>
              <div class="card-inner product-info">
                <h6 class="title">Layout - Demo 6</h6>
              </div><!-- .card-inner-->
            </a><!-- .card -->
          </div><!-- .col -->
        </div><!-- .row -->
      </div><!-- .container -->
    </section><!-- .section -->
    <section class="section section-feature pb-0">
      <div class="container">
        <div class="row g-gs justify-content-lg-between align-items-center">
          <div class="col-xl-6 col-lg-7">
            <div class="row text-center g-gs pe-lg-4 pe-xl-0 pb-3 pb-lg-0">
              <div class="col-sm-4 col-6">
                <div class="card card-full card-shadow">
                  <div class="card-inner">
                    <div class="card-img mb-3">
                      <img class="h-60px" src="./images/icon/libs/javascript.png" alt="">
                    </div>
                    <div class="text-dark h6">Javascript</div>
                  </div>
                </div><!-- .card -->
              </div><!-- .col -->
              <div class="col-sm-4 col-6">
                <div class="card card-full card-shadow">
                  <div class="card-inner">
                    <div class="card-img mb-3">
                      <img class="h-60px" src="./images/icon/libs/sass.png" alt="">
                    </div>
                    <div class="text-dark h6">Sass</div>
                  </div>
                </div><!-- .card -->
              </div><!-- .col -->
              <div class="col-sm-4 col-6">
                <div class="card card-full card-shadow">
                  <div class="card-inner">
                    <div class="card-img mb-3">
                      <img class="h-60px" src="./images/icon/libs/gulp.png" alt="">
                    </div>
                    <div class="text-dark h6">Gulp</div>
                  </div>
                </div><!-- .card -->
              </div><!-- .col -->
              <div class="col-sm-4 col-6">
                <div class="card card-full card-shadow">
                  <div class="card-inner">
                    <div class="card-img mb-3">
                      <img class="h-60px" src="./images/icon/libs/bootstrap.png" alt="">
                    </div>
                    <div class="text-dark h6">Bootstrap</div>
                  </div>
                </div><!-- .card -->
              </div><!-- .col -->
              <div class="col-sm-4 col-6">
                <div class="card card-full card-shadow">
                  <div class="card-inner">
                    <div class="card-img mb-3">
                      <img class="h-60px" src="./images/icon/libs/html5.png" alt="">
                    </div>
                    <div class="text-dark h6">Html 5</div>
                  </div>
                </div><!-- .card -->
              </div><!-- .col -->
              <div class="col-sm-4 col-6">
                <div class="card card-full card-shadow">
                  <div class="card-inner">
                    <div class="card-img mb-3">
                      <img class="h-60px" src="./images/icon/libs/css3.png" alt="">
                    </div>
                    <div class="text-dark h6">Css 3</div>
                  </div>
                </div><!-- .card -->
              </div><!-- .col -->
            </div>
          </div><!-- .col -->
          <div class="col-lg-5">
            <div class="text-block">
              <h3 class="title fw-medium">Language & Framework</h3>
              <p>An overview of DashLite is fully clean and premium designed admin template which developped by popular framework, beautiful hand-crafted components & elements.</p>
              <ul class="list list-lg list-primary list-checked-circle outlined">
                <li>Full native </li>
                <li>Popular and widely used framework</li>
                <li>Amazing feature for enhanced performance.</li>
              </ul>
            </div>
          </div>
        </div><!-- .row -->
      </div><!-- .container -->
    </section><!-- .section -->
    <section class="section section-testimonial" id="reviews">
      <div class="container">
        <div class="row justify-content-lg-center text-lg-center">
          <div class="col-lg-6 col-md-10">
            <div class="section-head">
              <h2 class="title fw-medium">Our Clients Experience With Us</h2>
              <p>DashLite template included different layouts that fit into any application. Also all the layouts supported Dark Theme Mode & RTL Compatibility.</p>
            </div>
          </div><!-- .col -->
        </div><!-- .row -->
        <div class="row g-gs">
          <div class="col-md-6">
            <div class="card card-shadow">
              <div class="card-inner card-inner-lg">
                <div class="review review-s4">
                  <div class="review-user user user-s1">
                    <div class="img">
                      <img class="img-circle sm" src="./images/client/sq-a.jpg" alt="">
                    </div><!-- img-->
                    <div class="info">
                      <h6 class="name">Michael Afonso</h6>
                      <div class="rating rating-sm">
                        <ul class="rating-stars">
                          <li><em class="icon ni ni-star-fill"></em></li>
                          <li><em class="icon ni ni-star-fill"></em></li>
                          <li><em class="icon ni ni-star-fill"></em></li>
                          <li><em class="icon ni ni-star-fill"></em></li>
                          <li><em class="icon ni ni-star-fill"></em></li>
                        </ul>
                      </div>
                    </div>
                  </div><!-- user -->
                  <div class="review-text">
                    <p>I must explain to you how all this mistakeng idea of pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings.</p>
                  </div>
                </div><!-- review-->
              </div><!-- .card-inner -->
            </div><!-- .card -->
          </div><!-- .col -->
          <div class="col-md-6">
            <div class="card card-shadow">
              <div class="card-inner card-inner-lg">
                <div class="review review-s4">
                  <div class="review-user user user-s1">
                    <div class="img">
                      <img class="img-circle sm" src="./images/client/sq-c.jpg" alt="">
                    </div><!-- img-->
                    <div class="info">
                      <h6 class="name">Dianna Smiley</h6>
                      <div class="rating rating-sm">
                        <ul class="rating-stars">
                          <li><em class="icon ni ni-star-fill"></em></li>
                          <li><em class="icon ni ni-star-fill"></em></li>
                          <li><em class="icon ni ni-star-fill"></em></li>
                          <li><em class="icon ni ni-star-fill"></em></li>
                          <li><em class="icon ni ni-star-fill"></em></li>
                        </ul>
                      </div>
                    </div>
                  </div><!-- user -->
                  <div class="review-text">
                    <p>I must explain to you how all this mistakeng idea of pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings.</p>
                  </div>
                </div><!-- review-->
              </div><!-- .card-inner -->
            </div><!-- .card -->
          </div><!-- .col -->
        </div><!-- .row -->
      </div><!-- .container -->
    </section><!-- .section -->
    <section class="section section-cta bg-dark is-dark" id="cta">
      <div class="container">
        <div class="row justify-content-center text-center">
          <div class="col-md-8">
            <div class="text-block is-compact">
              <h2 class="title fw-medium">More Than 2000+ People Using It</h2>
              <p class="pe-lg-7 ps-lg-7">DashLite template included different layouts that fit into any application.Do not forgot to check what's coming next.</p>
              <ul class="btns-inline justify-center">
                <li>
                  <a href="#" class="btn btn-xl btn-danger">Purchase $28</a>
                </li>
              </ul>
            </div>
          </div><!-- .col -->
        </div><!-- .row -->
      </div><!-- .container -->
    </section><!-- .section -->
   {include file="front_footer.tpl"}