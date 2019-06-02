<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/menu.css">
    <link rel="stylesheet" href="css/plantas.css">
    <link rel="stylesheet" href="css/footer-distributed-with-address-and-phones.css">	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <style>
        .imagen {
            position: absolute;
            display: block;
            max-width: 500px;
            max-height: 500px;
            width: auto;
            height: auto;
            margin: auto !important;
            left: 0px;
            bottom: 0px;
            right: 0px;
            top: 0px;
        }
    </style>
    <title>MdsTv</title>
</head>
<body class="body-image">
    <div id='cssmenu'>
        <ul>
        <li><a href='index.php'><span>Home</span></a></li>
        <li><a href='ecoweb.php'><span>Ecoweb</span></a></li>
        <li><a href='canales/index.php'><span>Canales</span></a></li>
        </ul>
    </div>
    <div class="planta-break"></div>
    <?php
        $canalNumero = 0;
        $canalNombre = "";
        $programaActual = "";
        $programacion = [];
        $dia = 0;
        $diasArray = ["Lunes","Martes","Miécoles","Jueves","Viernes","Sábado","Domingo"];
        if(isset($_GET['canalNumero']) && isset($_GET['canalNombre']) && isset($_GET['programa']) && isset($_GET['dia'])){
            $canalNumero = $_GET['canalNumero'];
            $canalNombre = $_GET['canalNombre'];
            $programaActual = $_GET['programa'];
            $dia = $_GET['dia'];
            $consulta = [];
            $siguientesProgramas = [];
            exec("swipl -s base_de_conocimientos.pl -g \"getProgramacion(Nombre,'".$canalNombre."',Dia,Hora,Duracion,Descripcion).\" -t halt.",$consulta);
            for($i = 0; $i < count($consulta); ++$i){
                $tempArray = explode("|",$consulta[$i]);
                array_shift($tempArray);
                array_push($programacion,$tempArray);
            }
            $consulta = [];
            exec("swipl -s base_de_conocimientos.pl -g \"getProgramacion(Nombre,'".$canalNombre."',".$dia.",Hora,Duracion,Descripcion).\" -t halt.",$consulta);
            $siguienteDia = $dia+1 == 7 ? 0 : $dia+1;
            exec("swipl -s base_de_conocimientos.pl -g \"getProgramacion(Nombre,'".$canalNombre."',".$siguienteDia.",Hora,Duracion,Descripcion).\" -t halt.",$consulta);
            for($i = 0; $i < count($consulta); ++$i){
                $tempArray = explode("|",$consulta[$i]);
                array_shift($tempArray);
                array_push($siguientesProgramas,$tempArray);
            }
        }else{
            header("Location: index.php");
        }
    ?>
    <div>
        <div class="row" style="min-height: 500px;">
            <div class="col-sm-6" style="background-color: white;">
                <?php
                    function canalANombreImagen($nombre){
                        $partes  = explode(" ",$nombre);
                        $nombreImagen = "";
                        foreach ($partes as $parte) {
                            $nombreImagen = $nombreImagen.$parte;                            
                        }
                        $nombreImagen = $nombreImagen.".png";
                        return $nombreImagen;
                    }
                    $rutaImagen = "images/canales/".canalANombreImagen(($canalNombre));
                    echo "<img class='imagen centrar' src='".$rutaImagen."' alt='Que paso joven?'>";
                ?>
            </div>
            <div class="col-sm-6">
            <div class="list-group">
                <?php
                    for($i = 0; $i < count($siguientesProgramas); ++$i){
                        if($programaActual == $siguientesProgramas[$i][0]){
                            for($j = 0; $j < 5 && $i < count($siguientesProgramas); ++$j, ++$i){
                                $secuencia = $j == 0 ? "Actualmente": "Después";
                                $tempPrograma = $siguientesProgramas[$i][0];
                                $descripcion = $siguientesProgramas[$i][6];
                                $tempDia = $siguientesProgramas[$i][3];
                                $codigoHtml = "<a href='#' class='list-group-item list-group-item-action'>";
                                $codigoHtml = $codigoHtml."<div class='d-flex w-100 justify-content-between'>";
                                $codigoHtml = $codigoHtml."<h5 class='mb-1'><strong>".$tempPrograma."</strong><italic><small>~".$secuencia."</italic></small></h5><small>".$diasArray[$tempDia]."</small></div>";
                                $codigoHtml = $codigoHtml."<p class='mb-1'>".$descripcion."</p>";
                                $codigoHtml = $codigoHtml."<small>".$canalNombre." #".$canalNumero."</small></a>";
                                echo $codigoHtml;
                            }
                        }
                    }
                ?>
                </div>
            </div>
        </div>
    </div>
    <div class="table-responsive table-hover">
        <table class="table text-white">
            <thead class="bg-blue">
                <tr>
                    <th scope="col" class="bordes text-center">#</th>
                    <?php
                        $timeFormat = "AM";
                        for($hour24 = 0, $hour12 = 12; $hour24 < 24; ++$hour24,++$hour12){
                            echo "<th scope='col' class='sub-tabla bordes'>".$hour12." ".$timeFormat."</th>";
                            if($hour12 == 12) $hour12 = 0;
                            if($hour12 == 11) $timeFormat = $timeFormat == "PM"? "AM" : "PM";
                        }
                    ?>
                </tr>
            </thead>
            <tbody>
                <?php
                    $i = 0;
                    $diaIndice = 0;
                    while($i < count($programacion)){
                        $codigoHtml = "<tr>";
                        $codigoHtml = $codigoHtml."<th colspan='1' class='bordes'>".$diasArray[$diaIndice]."</th>";
                        $horasAcumuladas = 0;
                        while($horasAcumuladas < 24){
                            $programaNombre = $programacion[$i][0];
                            $duracion = $programacion[$i][5];
                            $descripcion = $programacion[$i][6];
                            $programaInfo = "<strong>".$programaNombre."</strong> (".$duracion." hrs) .- ".$descripcion;
                            $codigoHtml = $codigoHtml."<td colspan='".$duracion."' class='bordes'>".$programaInfo."</td>";
                            ++$i;
                            $horasAcumuladas += $duracion;
                        }
                        ++$diaIndice;
                        $codigoHtml = $codigoHtml."</tr>";
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
    <script src="libs/popper.js/1.14.7/umd/popper.min.js"></script>
</body>
</html>