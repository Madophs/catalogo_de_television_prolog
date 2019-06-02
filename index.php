<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="carousel/dist/assets/owl.carousel.min.css" />
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/menu.css">
    <link rel="stylesheet" href="js/clockpicker/src/clockpicker.css">
    <link rel="stylesheet" href="css/footer-distributed-with-address-and-phones.css">	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">

    <style>
        
    </style>
    <title>MdsTV</title>
</head>
<body class="body-image">
    <div style="background-color: #3a3a3a;">
        <div id='cssmenu'>
            <ul>
            <li><a href='#'><span>Home</span></a></li>
            <li><a href='ecoweb.php'><span>Ecoweb</span></a></li>
            <li><a href='canales/index.php'><span>Canales</span></a></li>
            </ul>
        </div>
        <div style="clear: both;"></div>
        <div class="owl-carousel slide-one-item">
            <?php
            $imagenesArray = [];
            array_push($imagenesArray,"<a href='#'><img src='images/venom.jpg' alt='Image' class='img-fluid'></a>");
            array_push($imagenesArray,"<a href='#'><img src='images/captain_marvel.jpg' alt='Image' class='img-fluid'></a>");
            array_push($imagenesArray,"<a href='#'><img src='images/toy.jpg' alt='Image' class='img-fluid'></a>");
            array_push($imagenesArray,"<a href='#'><img src='images/black.jpg' alt='Image' class='img-fluid'></a>");
            array_push($imagenesArray,"<a href='#'><img src='images/men.jpg' alt='Image' class='img-fluid'></a>");
            array_push($imagenesArray,"<a href='#'><img src='images/endgame.png' alt='Image' class='img-fluid'></a>");
            array_push($imagenesArray,"<a href='#'><img src='images/mds.png' alt='Image' class='img-fluid'></a>");
            array_push($imagenesArray,"<a href='#'><img src='images/hersss.png' alt='Image' class='img-fluid'></a>");
            shuffle($imagenesArray);
            foreach($imagenesArray as $image){
                echo $image;
            }
            ?>
    </div>
</div>
    <?php
        function comparacion($a, $b){
            if($a[2] == $b[2]){
                return ($a[4] < $b[4]) ? -1 : 1;
            }
            return ($a[2] < $b[2]) ? -1: 1;
        }

        function seleccionarProgramas($dia,$hora){
            exec("swipl -s base_de_conocimientos.pl -g \"getProgramacion(Nombre,Canal,$dia,Hora,Duracion,Descripcion).\" -t halt.",$consulta);
            $programacion = [];
            for($i = 0; $i < count($consulta); ++$i){
                $tempArray = explode("|",$consulta[$i]);
                array_shift($tempArray);
                $horaInicio = $tempArray[4];
                $duracion = $tempArray[5];
                $horaFinal = $horaInicio + $duracion;
                if(($horaInicio >= $hora && $horaInicio < ($hora+3)) || ($horaInicio <= $hora && $horaFinal > $hora)){
                    array_push($programacion,$tempArray);
                }
            }
            if($hora >= 22){
                $siguienteDia = (($dia + 1) == 7) ? 0 : $dia + 1;
                $siguienteHora = 0;
                $consulta = [];
                exec("swipl -s base_de_conocimientos.pl -g \"getProgramacion(Nombre,Canal,$siguienteDia,Hora,Duracion,Descripcion).\" -t halt.",$consulta);
                for($i = 0; $i < count($consulta); ++$i){
                    $tempArray = explode("|",$consulta[$i]);
                    array_shift($tempArray);
                    $horaInicio = $tempArray[4];
                    $duracion = $tempArray[5];
                    $horaFinal = $horaInicio + $duracion;
                    if(($horaInicio >= $siguienteHora && $horaInicio < ($siguienteHora+3)) || ($horaInicio <= $siguienteHora && $horaFinal > $siguienteHora)){
                        $tempArray[4] += 24;
                        array_push($programacion,$tempArray);
                    }
                }
            }
            usort($programacion,"comparacion");
            /*for($i = 0; $i < count($programacion); ++$i){
                for($j = 0; $j < count($programacion[$i]); ++$j){
                    echo $programacion[$i][$j]." ->....";
                }
                echo "<br>";
            }*/
            return $programacion;
        }
    ?>
    <?php
        $diasArray = ["Lunes","Martes","Miécoles","Jueves","Viernes","Sábado","Domingo"];
        $programacion = [];
        $horaCompleta = "";
        if(isset($_GET["actualizar"])){
            $dia = $_GET["dia"];
            $horaCompleta = $_GET["hora"];
            $separaHora = explode(":",$horaCompleta);
            $hora = (int)$separaHora[0];
        }else{
            $dia = 0;
            $hora = 0;
            $horaCompleta = "00:00";
        }
        $timeFormat = "AM";
        $hourFormatArray = [];
        for($hour24 = 0, $hour12 = 12; $hour24 < 24; ++$hour24,++$hour12){
            array_push($hourFormatArray,$hour12." ".$timeFormat);
            if($hour12 == 12) $hour12 = 0;
            if($hour12 == 11) $timeFormat = $timeFormat == "PM"? "AM" : "PM";
        }
        $diaSiguiente = $dia+1 == 7 ? 0 : $dia+1;
        array_push($hourFormatArray,"12 AM (".$diasArray[$diaSiguiente].")");
        array_push($hourFormatArray,"1 AM (".$diasArray[$diaSiguiente].")");
        $programacion = seleccionarProgramas($dia, $hora);
    ?>
    <form action="">
        <div class="input-group mb-1 mt-1" >
            <div class="input-group-prepend">
                <label class="input-group-text ml-2 bg-primary text-light" for="dia_select">Día</label>
            </div>
            <div style="width: 20%; min-width: 100px;">
                    <select class="custom-select bg-blue text-white" name="dia" id="dia_select">
                        <?php
                            for($i = 0; $i < 7; ++$i){
                                if(isset($_GET["dia"]) && $_GET["dia"] == $i){
                                    echo "<option class='bg-blue-dark' value='$i' selected>$diasArray[$i]</option>";
                                }else{
                                    echo "<option class='bg-blue-dark' value='$i'>$diasArray[$i]</option>";
                                }
                            }
                        ?>
                    </select>
            </div>
            <div class="input-group-prepend">
                <label class="input-group-text bg-primary text-light ml-2" for="hora_select">Hora</label>
                <div class="input-group clockpicker">
                <input type="text" class="form-control bg-blue text-white" id="hora_select"name="hora" value=<?php echo $horaCompleta; ?> >
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-time"></span>
                </span>
            </div>
            </div>
            <input type="submit" class="btn btn-primary ml-2 border-white" name="actualizar"value = "Consultar">
        </div>
    </form>
    <div class="table-responsive-xl table-hover">
        <table class="table text-white bg-blue">
            <thead class="bg-blue">
                <tr>
                    <th scope="col" class="bordes" style="width: 3%;">#</th>
                    <th scope="col" class="bordes" style="width: 19%;">Canal</th>
                    <th scope="col" class="bordes" style="width: 26%;"><?php echo $hourFormatArray[$hora]; ?></th>
                    <th scope="col" class="bordes" style="width: 26%;"><?php echo $hourFormatArray[$hora+1]; ?></th>
                    <th scope="col" class="bordes" style="width: 26%;"><?php echo $hourFormatArray[$hora+2]; ?></th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $i = 0;
                    $canalAnterior = "";
                    $canalActual = "";
                    while($i < count($programacion)){
                        $canalActual = $programacion[$i][1];
                        $programaNombre = $programacion[$i][0];
                        $canalNumero = $programacion[$i][2];
                        $codigoHtml = "";
                        $codigoHtml = $codigoHtml."<tr><th scope='row' class='bordes'>".$canalNumero."</th>";
                        $codigoHtml = $codigoHtml."<td class='bordes'><form action='canal.php' onclick='submitChannel(".$canalNumero.")' id='form-".$canalNumero."'>";
                        $codigoHtml = $codigoHtml."<input type='hidden' name='canalNumero' value='".$canalNumero."'>";
                        $codigoHtml = $codigoHtml."<input type='hidden' name='canalNombre' value='".$canalActual."'>";
                        $codigoHtml = $codigoHtml."<input type='hidden' name='dia' value='".$dia."'>";
                        $codigoHtml = $codigoHtml."<input type='hidden' name='programa' value='".$programaNombre."'><strong>".$canalActual."</strong></form></td>";
                        $limite = 0;
                        do{
                            $programaNombre = $programacion[$i][0];
                            $horaInicio = $programacion[$i][4];
                            $duracion = $programacion[$i][5];
                            $horaFinal = $horaInicio + $duracion;
                            $descripcion = $programacion[$i][6];
                            if($i == count($programacion)) break;
                            if($hora <= $programacion[$i][4]){
                                if($hora+3 <= $horaFinal){
                                    $diferenciaEntreHoras = $hora+3 - $horaInicio;
                                }else{
                                    $diferenciaEntreHoras = $duracion;
                                }
                            }else{
                                if($hora+3 <= $horaFinal){
                                    $diferenciaEntreHoras = 3;
                                }else{
                                    $diferenciaEntreHoras = $horaFinal - $hora;
                                }
                            }
                            if($limite < 3){
                                $programaInfo = "<strong>".$programaNombre." </strong>(".$duracion." hrs) .- ".$descripcion;
                                $codigoHtml = $codigoHtml."<td colspan='$diferenciaEntreHoras' class='bordes'>".$programaInfo."</td>";
                            }
                            $limite += $diferenciaEntreHoras;
                            $canalAnterior = $canalActual;
                            $canalActual = $programacion[++$i][1];
                        }while($canalActual == $canalAnterior);
                        $codigoHtml = $codigoHtml. "</tr>";
                        echo $codigoHtml;
                    }
                ?>
            </tbody>
        </table>
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
        function submitChannel(variable){
            $('#form-'+variable).submit();
        }
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
                items: 3,
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
    <script src="js/clockpicker/src/clockpicker.js"></script>
    <script type="text/javascript">
        $('.clockpicker').clockpicker({
            placement: 'top',
            align: 'left',
            donetext: 'Done',
        });
    </script>
</body>
</html>
