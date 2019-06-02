<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/menu.css">
    <link rel="stylesheet" href="../css/footer-distributed-with-address-and-phones.css">	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <title>MdsTV</title>
</head>
<body>
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
    <div style="width: 70%; margin: auto; padding: 30px;">
            <?php
                if(isset($_GET["canal"]) && isset($_GET["numero"])){
                    $canalNombre = $_GET["canal"];
                    $numero = $_GET["numero"];
                }
            ?>
            <div class="alert alert-success" role="alert" id="msj-success" style="display: none;">
            </div>
            <div class="alert alert-danger" role="alert" id="msj-error" style="display: none;">
            </div>
            <div class="form-group">
            <label for="nombre">Nombre</label>
                <?php
                    echo "<input name='name' type='text' class='form-control' id='nombre' placeholder='Nombre del canal' required value='".$canalNombre."'>";
                ?>
            </div>
            <div class="form-group">
            <label for="canal"> Canal</label>
                <input name="canal" type="text" class="form-control" id="canal" placeholder="Número del canal" required value=<?php echo $numero; ?>>
            </div>
            <button name="" type="submit" class="btn btn-primary" onclick="agregarCanal();">Guardar</button>
        
    </div>
    <div style="position: absolute; bottom: 0; width: 100%;">
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
        function agregarCanal(){
            var canalNombre = $("#nombre").val();
            var canalNumero = $("#canal").val();
            if(canalNombre != "" && canalNumero != ""){
                $('#msj-success').html("Canal "+canalNombre+" modificado correctamente!!!");
                $('#msj-success').css('display','block');
                $('#msj-success').delay(2000).fadeOut(300);
                setTimeout(function() {
                    window.location.replace("index.php");
                }, 2500);
                
            }else{
                $('#msj-error').html("Favor de llenar todos los campos.");
                $('#msj-error').css('display','block');
                $('#msj-error').delay(2000).fadeOut(300);
            }
        }
    </script>
</body>
</html>
