<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../carousel/dist/assets/owl.carousel.min.css" />
    <link rel="stylesheet" href="../css/menu.css">
    <link rel="stylesheet" href="../js/clockpicker/src/clockpicker.css">
    <link rel="stylesheet" href="../css/footer-distributed-with-address-and-phones.css">	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <title>MdsTV</title>
</head>
<body style="min-height: 100%;">
    <div style="background-color: #3a3a3a;">
        <div id='cssmenu'>
            <ul>
                <li><a href='../index.php'><span>Home</span></a></li>
                <li><a href='../ecoweb.php'><span>Ecoweb</span></a></li>
                <li><a href='index.php'><span>Canales</span></a></li>
            </ul>
        </div>
        <div style="clear: both;"></div>
    </div>
    <div style="width: 80%; margin: auto; padding: 30px;">
        <div class="alert alert-warning" role="alert" id="msj-warning" style="display: none;">
        </div>
        <?php
            function concatenaMas($canalNombre){
                $arrayNombres = explode(" ",$canalNombre);
                $canalNombreGet = "";
                for($i = 0; $i < count($arrayNombres); ++$i){
                    if($i > 0) $canalNombreGet = $canalNombreGet."+";
                    $canalNombreGet = $canalNombreGet.$arrayNombres[$i];
                }
                return $canalNombreGet;
            }
            $consulta = [];
            exec("swipl -s ../base_de_conocimientos.pl -g \"getCanales(X,Y).\" -t halt.",$consulta);
            $canales = [];
            for($i = 0; $i < count($consulta); ++$i){
                $tempArray = explode("|",$consulta[$i]);
                array_push($canales,$tempArray);
            }
        ?>
        <a href="create.php" class="btn btn-primary float-left">
        <img src="../images/icons/add-24.png" alt="">
        </a>
        <table class="table">
        <thead class="thead-dark">
            <tr>
            <th scope="col">#</th>
            <th scope="col">Nombre</th>
            <th scope="col">Número</th>
            <th scope="col">Acción</th>
            </tr>
        </thead>
        <tbody>
            <?php
                for($i = 0; $i < count($canales); ++$i){
                    $htmlCode = "<tr><th scope='row'>".$i."</th>";
                    $htmlCode = $htmlCode."<td>".$canales[$i][0]."</td>";
                    $htmlCode = $htmlCode."<td>".$canales[$i][1]."</td><td>";
                    $htmlCode = $htmlCode."<a href='edit.php?canal=".concatenaMas($canales[$i][0])."&numero=".$canales[$i][1]."' class='btn btn-warning'>";
                    $htmlCode = $htmlCode."<img src='../images/icons/edit-2-24.png'></a>";
                    $htmlCode = $htmlCode."<a href='#' class='btn btn-danger ml-3' onclick='confirmacion(\"".$canales[$i][0]."\");'>";
                    $htmlCode = $htmlCode."<img src='../images/icons/x-mark-3-24.png'></a></td>";
                    echo $htmlCode;
                }
            ?>
        </tbody>
        </table>
    </div>
    <div>
        <footer class="footer-distributed" >
            
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
    </div>
    <script src="../js/jquery-3.4.1.min.js"></script>
    <script>
        function confirmacion(canal){
            var decision = confirm("Esta seguro que desea eliminar?");
            if(decision){
                $('#msj-warning').html("El canal "+canal+" ha sido eliminado");
                $('#msj-warning').css('display','block');
                $('#msj-warning').delay(2000).fadeOut(300);
            }
        }
    </script>
</body>
</html>
