<?php  
	
	$nombre_archivo = $_FILES['archivo']['name'];
	$tipo_archivo = $_FILES['archivo']['type'];
	$tamaño_archivo = $_FILES['archivo']['size'];

	$directorio = "../../cursos/";

	move_uploaded_file($_FILES['archivo']['tmp_name'], $directorio.$nombre_archivo);


?>