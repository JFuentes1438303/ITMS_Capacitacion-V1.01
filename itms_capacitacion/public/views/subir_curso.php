<?php  
	session_start();
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="../../vendor/css/bootstrap.min.css">
		<link rel="stylesheet" href="../../css/estilos.css">
		<link rel="stylesheet" href="../../css/simple-sidebar.css">
		<link rel="shortcut icon" href="../../files/img/ITMS2.ico">
		<title>Document</title>
	</head>

	<body>
    <div class="d-flex toggled" id="wrapper">
      <!-- Sidebar -->
      <div id="sidebar-wrapper">

        <div class="b_bottom">
            <a href="home.php">
              <img src="../../files/img/Logo ITMS.png" class="logo">
            </a>
        </div>

        <div class="list-group list-group-flush">

          <ul class="navbar-nav list-group-item-action">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" role="button">
                Mi Perfil
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                <a class="dropdown-item" href="#">Subir curso</a>
                <a class="dropdown-item" href="#">Mis cursos</a>
                <a class="dropdown-item" href="../models/cerrar_sesion.php">Cerrar sesión</a>
              </div>
            </li>
          </ul>

          <a href="#" class="list-group-item list-group-item-action enlaces">
            Audios
          </a>

          <a href="#" class="list-group-item list-group-item-action enlaces">
            Videos
          </a>

          <a href="#" class="list-group-item list-group-item-action enlaces">
            Multimedia 
          </a>

          <a href="#" class="list-group-item list-group-item-action enlaces">
            Documentos 
          </a>

        </div>
      </div>
      <!-- /#sidebar-wrapper -->

      <!-- Page Content -->
      <div id="page-content-wrapper">

      <nav class="navbar navbar-expand-lg navegacion b_bottom">
        <button class="btn boton_menu" id="menu-toggle">
          <i class="fas fa-bars"></i>
        </button>

          <ul class="navbar-nav sesion">
            <li class="nav-item">
              <?php 
                echo "Bienvenido(a) ".$_SESSION["nombres"]." ".$_SESSION["apellidos"];
              ?>
            </li>
          </ul>
      </nav>

      <div class="container div color2">
        <div class="row b_bottom">
          <div class="col-sm-3 color1">
            <img src="../../files/img/Logo ITMS.png" class="logo2">
          </div>
          <div class="col-sm-9 encabezado2">
            Subir curso
          </div>
        </div>

        <form action="../models/subir_curso.php" enctype="multipart/form-data" method="POST">

          <!-- <div class="row espacio">
            <div class="col-sm-3 t_centro" style=" margin-top: 0.5%">
              <label for="tarchivo" class="col-form-label">
                Seleccione el tipo de archivo que desea subir
              </label>
            </div>
            <div class="col-sm-3">
              <?php  
                include("../models/tipo_archivo.php");
              ?>
              <input type="text" name="nombre" class="form-control inputs">
            </div>
            <div class="col-sm-3 t_centro" >
              <label for="descripcion" class="col-form-label">
                Descripcion
              </label>
            </div>
            <div class="col-sm-3">
              <input type="text" name="descripcion" class="form-control inputs">
            </div>
          </div> -->

          <div class="row espacio">
            <div class="col-sm-3 t_centro">
              <label for="archivo">Agregar archivo</label>
            </div>
            <div class="col-sm-6">
              <input type="file" name="archivo" id="archivo">
            </div>
            <div class="col-sm-3">
              <input type="submit" class="btn btn-sm btn-outline-dark" value="Subir archivo"></input>
            </div>
          </div>
          <br>
        </form>
      </div>
		

    		<script src="../../vendor/js/bootstrap.bundle.min.js"></script>
    		<script src="../../vendor/jquery/jquery.js"></script>
      	<script src="https:kit.fontawesome.com/2c36e9b7b1.js"></script>


		 <script>
        $("#menu-toggle").click(function(e) {
          e.preventDefault();
          $("#wrapper").toggleClass("toggled");
        });
      </script>
	</body>
</html>