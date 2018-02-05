<?php

	$host = "localhost";
	$db = "taxonomia";
	$user = "root";
	$pass = "";


	$con = new mysqli($host,$user,$pass,$db);

	// Checando conexión
	if(mysqli_connect_errno())
	{
	  echo "Error en MySQL: " . mysqli_connect_error();
	}
	else 
	{
		$query = "SELECT * FROM pino WHERE nombre_cientifico = ".$resultado.";";
		$resultado2 = $con->query($query);

		while($data = $resultado2->fetch_assoc())
		{
			$data2 = array('nombre' => $data['nombre'], 
							'nombre_cientifico' =>  $data['nombre_cientifico'],
							'imagen' =>  $data['imagen'],
							'descripcion' =>  $data['descripcion']);
		}
		echo json_encode($data2,JSON_UNESCAPED_UNICODE);
	}

	$con->close();
?>