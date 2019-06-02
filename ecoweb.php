<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="carousel/dist/assets/owl.carousel.min.css" />
    <link rel="stylesheet" href="css/menu.css">
    <link rel="stylesheet" href="css/plantas.css">
    <link rel="stylesheet" href="css/footer-distributed-with-address-and-phones.css">	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <title>EcoWeb</title>
</head>
<body>
    <div style="background-color: #3a3a3a;">
        <div id='cssmenu'>
            <ul>
            <li><a href='index.php'><span>Home</span></a></li>
            <li><a href='ecoweb.php'><span>Ecoweb</span></a></li>
            <li><a href='canales/index.php'><span>Canales</span></a></li>
            </ul>
        </div>
        <div style="clear: both;" ></div>
        <div class="owl-carousel slide-one-item bg-dark">
            <?php
                $imagenesArray = [];
                array_push($imagenesArray,"<a href='#'><img src='images/ecoweb/carousel/eco.jpg' alt='Image' class='img-fluid'></a>");
                array_push($imagenesArray,"<a href='#'><img src='images/ecoweb/carousel/eco2.jpg' alt='Image' class='img-fluid'></a>");
                array_push($imagenesArray,"<a href='#'><img src='images/ecoweb/carousel/eco3.jpg' alt='Image' class='img-fluid'></a>");
                array_push($imagenesArray,"<a href='#'><img src='images/ecoweb/carousel/eco4.jpg' alt='Image' class='img-fluid'></a>");
                shuffle($imagenesArray);
                foreach($imagenesArray as $image){
                    echo $image;
                }
            ?>
        </div>
    </div>
    <div>
        <img src="images/ecoweb/logo.png" alt="" style="display: block; padding: 10px; margin-left: auto; margin-right: auto;">
    </div>
    <div>
        <div>
            <div class="contenedor-planta">
                <div class="div-imagen">
                    <img src="images/ecoweb/plantas/1.jpg" alt="Jehu's Planta" class="imagen-planta">
                    <div class="leyenda">Jehú Jair</div>
                </div>
                <div class="div-imagen">
                    <img src="images/ecoweb/plantas/2.jpg" alt="Jehu's Planta" class="imagen-planta">
                    <div class="leyenda">Jehú Jair</div>
                </div>
                <div class="div-imagen">
                    <img src="images/ecoweb/plantas/3.jpg" alt="Jehu's Planta" class="imagen-planta">
                    <div class="leyenda">Jehú Jair</div>
                </div>
                <div class="div-imagen">
                    <img src="images/ecoweb/plantas/4.jpg" alt="Jehu's Planta" class="imagen-planta">
                    <div class="leyenda">Jehú Jair</div>
                </div>
                <div class="div-imagen">
                    <img src="images/ecoweb/plantas/5.jpg" alt="Jehu's Planta" class="imagen-planta">
                    <div class="leyenda">Jehú Jair</div>
                </div>
                <div class="planta-break"></div> 
            </div>
            <div class="contenedor-planta">
                <div class="div-imagen">
                    <img src="images/ecoweb/plantas/1a.jpg" alt="Jehu's Planta" class="imagen-planta">
                    <div class="leyenda">Herson</div>
                </div>
                <div class="div-imagen">
                    <img src="images/ecoweb/plantas/2a.jpg" alt="Jehu's Planta" class="imagen-planta">
                    <div class="leyenda">Herson</div>
                </div>
                <div class="div-imagen">
                    <img src="images/ecoweb/plantas/3a.jpg" alt="Jehu's Planta" class="imagen-planta">
                    <div class="leyenda">Herson</div>
                </div>
                <div class="div-imagen">
                    <img src="images/ecoweb/plantas/4a.jpg" alt="Jehu's Planta" class="imagen-planta">
                    <div class="leyenda">Herson</div>
                </div>
                <div class="div-imagen">
                    <img src="images/ecoweb/plantas/5a.jpg" alt="Jehu's Planta" class="imagen-planta">
                    <div class="leyenda">Herson</div>
                </div>
                <div class="planta-break"></div> 
            </div>
            <div class="contenedor-planta">
                <div class="div-imagen">
                    <img src="images/ecoweb/plantas/6.jpg" alt="Jehu's Planta" class="imagen-planta">
                    <div class="leyenda">Jehú Jair</div>
                </div>
                <div class="div-imagen">
                    <img src="images/ecoweb/plantas/7.jpg" alt="Jehu's Planta" class="imagen-planta">
                    <div class="leyenda">Jehú Jair</div>
                </div>
                <div class="div-imagen">
                    <img src="images/ecoweb/plantas/8.jpg" alt="Jehu's Planta" class="imagen-planta">
                    <div class="leyenda">Jehú Jair</div>
                </div>
                <div class="div-imagen">
                    <img src="images/ecoweb/plantas/9.jpg" alt="Jehu's Planta" class="imagen-planta">
                    <div class="leyenda">Jehú Jair</div>
                </div>
                <div class="div-imagen">
                    <img src="images/ecoweb/plantas/10.jpg" alt="Jehu's Planta" class="imagen-planta">
                    <div class="leyenda">Jehú Jair</div>
                </div>
                <div class="planta-break"></div> 
            </div>
            <div class="contenedor-planta">
                <div class="div-imagen">
                    <img src="images/ecoweb/plantas/11.jpg" alt="Jehu's Planta" class="imagen-planta">
                    <div class="leyenda">Jehú Jair</div>
                </div>
                <div class="div-imagen">
                    <img src="images/ecoweb/plantas/12.jpg" alt="Jehu's Planta" class="imagen-planta">
                    <div class="leyenda">Jehú Jair</div>
                </div>
                <div class="div-imagen">
                    <img src="images/ecoweb/plantas/4.jpg" alt="Jehu's Planta" class="imagen-planta">
                    <div class="leyenda">Jehú Jair</div>
                </div>
                <div class="div-imagen">
                    <img src="images/ecoweb/plantas/11a.jpg" alt="Jehu's Planta" class="imagen-planta">
                    <div class="leyenda">Herson</div>
                </div>
                <div class="div-imagen">
                    <img src="images/ecoweb/plantas/12a.jpg" alt="Jehu's Planta" class="imagen-planta">
                    <div class="leyenda">Herson</div>
                </div>
                <div class="planta-break"></div> 
        </div>
    </div>
    <footer class="footer-distributed">

    <div class="footer-left">

        <h3>Mds<span>TV</span></h3>

        <p class="footer-links">
            <a href="index.php">Home</a>
            ·
            <a href="ecoweb">Ecoweb</a>
            ·
            <a href="#">About</a>
        </p>

        <p class="footer-company-name">MdsTv &copy; 2019</p>
    </div>

    <div class="footer-center">

        <div>
            <i class="fa fa-map-marker"></i>
            <p><span>ITSCH</span> Michoacán, México</p>
        </div>

        <div>
            <i class="fa fa-phone"></i>
            <p>+1 555 123456</p>
        </div>

        <div>
            <i class="fa fa-envelope"></i>
            <p><a href="mailto:support@company.com">mdstvContact@mdstv.com</a></p>
        </div>

    </div>

    <div class="footer-right">

        <p class="footer-company-about">
            <span>Acerca de la compania</span>
            La companía #1 a nivel mundial and entretenimiento.
        </p>

        <div class="footer-icons">

            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-github"></i></a>

        </div>

    </div>

    </footer>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="carousel/dist/owl.carousel.min.js"></script>
    <script>
        $(document).ready(function(){
            var siteCarousel = function () {
                if ( $('.nonloop-block-13').length > 0 ) {
                    $('.nonloop-block-13').owlCarousel({
                    center: false,
                    items: 1,
                    loop: true,
                        stagePadding: 0,
                    margin: 0,
                    autoplay: true,
                    nav: true,
                        navText: ['<span class="icon-arrow_back">', '<span class="icon-arrow_forward">'],
                    responsive:{
                    600:{
                        margin: 0,
                        nav: true,
                    items: 2
                    },
                    1000:{
                        margin: 0,
                        stagePadding: 0,
                        nav: true,
                    items: 2
                    },
                    1200:{
                        margin: 0,
                        stagePadding: 0,
                        nav: true,
                    items: 3
                    }
                    }
                    });
                }

                $('.slide-one-item').owlCarousel({
                center: false,
                items: 2,
                loop: true,
                    stagePadding: 0,
                margin: 0,
                smartSpeed: 1500,
                autoplay: true,
                pauseOnHover: false,
                dots: true,
                nav: true,
                navText: ['<span class="icon-keyboard_arrow_left">', '<span class="icon-keyboard_arrow_right">']
            });
            };
            siteCarousel();
            $('.owl-nav').hide();
            $('.owl-dots').hide();
        });
    </script>
</body>
</html>