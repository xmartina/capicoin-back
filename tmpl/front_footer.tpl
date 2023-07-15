
<footer class="footer bg-dark is-dark section section-sm" id="footer">
    <div class="container">
        <div class="row g-3 align-items-center">
            <div class="col-md-3">
                <div class="footer-logo">
                    <a href="/" class="logo-link">
                        <img class="logo-light logo-img" src="{$siteLogo}" srcset="{$siteLogo} 2x" alt="logo">
                        <img class="logo-dark logo-img" src="{$siteLogo}" srcset="{$siteLogo} 2x" alt="logo-dark">
                    </a>
                </div><!-- .footer-logo -->
            </div><!-- .col -->
            <div class="col-md-9 d-flex justify-content-md-end">
                <ul class="link-inline gx-4">
                    <li><a href="?a=home">Home</a></li>
                    <li><a href="?a=about">About</a></li>
                    <li><a href="?a=faq">FAQ</a></li>
                    <li><a href="?a=support">Support</a></li>
                </ul><!-- .footer-nav -->
            </div><!-- .col -->
        </div>
        <div class="row g-3 align-items-center pt-4">
            <div class="col-md-8">
                <div class="text-base">&copy; 2023 {$SiteName}. | All Rights Reserved</div>
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
<script src="/assets/js/bundle.js?ver=3.2.0"></script>
<script src="/assets/js/front_script.js?ver=3.2.0"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>

<script>
    $('.carousel').carousel()
    $('#myModal').modal(options)
</script>
</body>

</html>