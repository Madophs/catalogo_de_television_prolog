<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/styles.css">
    <title>MdsTv</title>
</head>
<body>
    <?php
        $canalNumero = 0;
        $canalNombre = "";
        $programaActual = "";
        $programacion = [];
        $diasArray = ["Lunes","Martes","Miécoles","Jueves","Viernes","Sábado","Domingo"];
        if(isset($_GET['canalNumero']) && isset($_GET['canalNombre']) && isset($_GET['programa'])){
            $canalNumero = $_GET['canalNumero'];
            $canalNombre = $_GET['canalNombre'];
            $programaActual = $_GET['programa'];
            $consulta = [];
            exec("swipl -s base_de_conocimientos.pl -g \"getProgramacion(Nombre,'".$canalNombre."',Dia,Hora,Duracion).\" -t halt.",$consulta);
            for($i = 0; $i < count($consulta); ++$i){
                $tempArray = explode("|",$consulta[$i]);
                array_shift($tempArray);
                array_push($programacion,$tempArray);
            }
        }else{
            header("Location: index.php");
        }
    ?>
    <div class="table-responsive-xl table-hover">
        <table class="table">
            <thead class="thead-light">
                <tr>
                    <th scope="col" style="width: 100px;">#</th>
                    <?php
                        $timeFormat = "AM";
                        for($hour24 = 0, $hour12 = 12; $hour24 < 24; ++$hour24,++$hour12){
                            echo "<th scope='col' class='sub-tabla'>".$hour12." ".$timeFormat."</th>";
                            if($hour12 == 12) $hour12 = 0;
                            if($hour12 == 11) $timeFormat = $timeFormat == "PM"? "AM" : "PM";
                        }
                        array_push($hourFormatArray,"12 AM");
                        array_push($hourFormatArray,"1 AM");
                    ?>
                </tr>
            </thead>
            <tbody>
                <?php
                    $i = 0;
                    $diaIndice = 0;
                    while($i < count($programacion)){
                        $codigoHtml = "<tr>";
                        $codigoHtml = $codigoHtml."<td colspan='1' class='bordes'>".$diasArray[$diaIndice]."</td>";
                        $horasAcumuladas = 0;
                        while($horasAcumuladas < 24){
                            $programaNombre = $programacion[$i][0];
                            $duracion = $programacion[$i][5];
                            $codigoHtml = $codigoHtml."<td colspan='".$duracion."' class='bordes'>".$programaNombre."</td>";
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
    <script src="js/jquery-3.4.1.min.js"></script>
</body>
</html>