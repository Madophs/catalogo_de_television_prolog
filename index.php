<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="carousel/dist/assets/owl.carousel.min.css" />
    <link rel="stylesheet" href="css/styles.css">
    <title>MdsTV</title>
</head>
<body>
    <div class="owl-carousel slide-one-item">
        <?php
            $imagenesArray = [];
            array_push($imagenesArray,"<a href='#'><img src='images/venom.jpg' alt='Image' class='img-fluid'></a>");
            array_push($imagenesArray,"<a href='#'><img src='images/captain_marvel.jpg' alt='Image' class='img-fluid'></a>");
            array_push($imagenesArray,"<a href='#'><img src='images/toy.jpg' alt='Image' class='img-fluid'></a>");
            array_push($imagenesArray,"<a href='#'><img src='images/black.jpg' alt='Image' class='img-fluid'></a>");
            array_push($imagenesArray,"<a href='#''><img src='images/men.jpg' alt='Image' class='img-fluid'></a>");
            array_push($imagenesArray,"<a href='#''><img src='images/endgame.png' alt='Image' class='img-fluid'></a>");
            shuffle($imagenesArray);
            foreach($imagenesArray as $image){
                echo $image;
            }
        ?>
    </div>
    <?php

        function comparacion($a, $b){
            if($a[2] == $b[2]){
                return ($a[4] < $b[4]) ? -1 : 1;
            }
            return ($a[2] < $b[2]) ? -1: 1;
        }

        function seleccionarProgramas($dia,$hora){
            exec("swipl -s base_de_conocimientos.pl -g \"getProgramacion(Nombre,Canal,$dia,Hora,Duracion).\" -t halt.",$consulta);
            $programacion = [];
            for($i = 0; $i < count($consulta); ++$i){
                $tempArray = explode("|",$consulta[$i]);
                array_shift($tempArray);
                if(($tempArray[4] >= $hora && $tempArray[4] < ($hora+3)) || ($tempArray[4] <= $hora && $tempArray[4]+$tempArray[5] > $hora)){
                    array_push($programacion,$tempArray);
                }
            }
            if($hora >= 22){
                $siguienteDia = (($dia + 1) == 7) ? 0 : $dia + 1;
                $siguienteHora = 0;
                $consulta = [];
                exec("swipl -s base_de_conocimientos.pl -g \"getProgramacion(Nombre,Canal,$siguienteDia,Hora,Duracion).\" -t halt.",$consulta);
                for($i = 0; $i < count($consulta); ++$i){
                    $tempArray = explode("|",$consulta[$i]);
                    array_shift($tempArray);
                    if(($tempArray[4] >= $siguienteHora && $tempArray[4] < ($siguienteHora+3)) || ($tempArray[4] <= $siguienteHora && $tempArray[4]+$tempArray[5] > $siguienteHora)){
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
        if(isset($_GET["actualizar"])){
            $dia = $_GET["dia"];
            $hora = $_GET["hora"];
            $programacion = seleccionarProgramas($dia, $hora);
        }else{
            $dia = 0;
            $hora = 0;
            $programacion = seleccionarProgramas($dia, $hora);
        }
    ?>
    <form action="">
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <label class="input-group-text" for="dia_select">Día</label>
            </div>
            <select class="custom-select" name="dia" id="dia_select">
                <?php
                    for($i = 0; $i < 7; ++$i){
                        if(isset($_GET["dia"]) && $_GET["dia"] == $i){
                            echo "<option value='$i' selected>$diasArray[$i]</option>";
                        }else{
                            echo "<option value='$i'>$diasArray[$i]</option>";
                        }
                    }
                ?>
            </select>
            <div class="input-group-prepend">
                <label class="input-group-text" for="hora_select">Día</label>
            </div>
            <select class="custom-select" name="hora" id="hora_select">
                <?php
                    $timeFormat = "AM";
                    $hourFormatArray = [];
                    for($hour24 = 0, $hour12 = 12; $hour24 < 24; ++$hour24,++$hour12){
                        if(isset($_GET["hora"]) && $_GET["hora"] == $hour24){
                            echo "<option value='$hour24' selected>$hour12 $timeFormat</option>";
                        }else{
                            echo "<option value='$hour24'>$hour12 $timeFormat</option>";
                        }
                        array_push($hourFormatArray,$hour12." ".$timeFormat);
                        if($hour12 == 12) $hour12 = 0;
                        if($hour12 == 11) $timeFormat = $timeFormat == "PM"? "AM" : "PM";
                    }
                    array_push($hourFormatArray,"12 AM");
                    array_push($hourFormatArray,"1 AM");
                ?>
            </select>
            <input type="submit" class="btn btn-primary" name="actualizar"value = "Consultar">
        </div>
    </form>
    <div class="table-responsive-xl table-hover">
        <table class="table">
            <thead class="thead-light">
                <tr>
                    <th scope="col" style="width: 3%;">#</th>
                    <th scope="col" style="width: 19%;">Canal</th>
                    <th scope="col" style="width: 26%;"><?php echo $hourFormatArray[$hora]; ?></th>
                    <th scope="col" style="width: 26%;"><?php echo $hourFormatArray[$hora+1]; ?></th>
                    <th scope="col" style="width: 26%;"><?php echo $hourFormatArray[$hora+2]; ?></th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $i = 0;
                    $ant = "";
                    $actual = "";
                    while($i < count($programacion)){
                        $actual = $programacion[$i][1];
                        
                        $codigoHtml = "";

                        $codigoHtml = $codigoHtml."<tr><th scope='row' class='bordes'>".$programacion[$i][2]."</th>";
                        $codigoHtml = $codigoHtml."<td class='bordes'><form action='canal.php' onclick='submitChannel(".$programacion[$i][2].")' id='form-".$programacion[$i][2]."'>";
                        $codigoHtml = $codigoHtml."<input type='hidden' name='canalNumero' value='".$programacion[$i][2]."'>";
                        $codigoHtml = $codigoHtml."<input type='hidden' name='canalNombre' value='".$actual."'>";
                        $codigoHtml = $codigoHtml."<input type='hidden' name='programa' value='".$programacion[$i][0]."'>".$actual."</form></td>";
                        $limite = 0;
                        do{
                            if($i == count($programacion)) break;
                            if($hora <= $programacion[$i][4]){
                                if($hora+3 <= $programacion[$i][4]+$programacion[$i][5]){
                                    $diferenciaEntreHoras = $hora+3 - $programacion[$i][4];
                                }else{
                                    $diferenciaEntreHoras = $programacion[$i][5];
                                }
                            }else{
                                if($hora+3 <= $programacion[$i][4]+$programacion[$i][5]){
                                    $diferenciaEntreHoras = 3;
                                }else{
                                    $diferenciaEntreHoras = ($programacion[$i][4]+$programacion[$i][5]) - $hora;
                                }
                            }
                            if($limite < 3){
                                $codigoHtml = $codigoHtml."<td colspan='$diferenciaEntreHoras' class='bordes'>".$programacion[$i][0]."</td>";
                            }
                            $limite += $diferenciaEntreHoras;
                            $prev = $actual;
                            $actual = $programacion[++$i][1];
                        }while($actual == $prev);
                        $codigoHtml = $codigoHtml. "</tr>";
                        echo $codigoHtml;
                    }        
                ?>
            </tbody>
        </table>
    </div>
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
</body>
</html>
