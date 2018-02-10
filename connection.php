<?php

	// Configuracion para la BD.
	$host = "localhost";
	$db = "taxonomia";
	$user = "root";
	$pass = "";
	$port = 3306;

	$con = new mysqli($host,$user,$pass,$db,$port);

	// Checando conexión
	if($con->connect_error)
	{
	  echo json_encode(array('error' => $con->connect_error));
	}
	else 
	{
		$query = "SELECT * FROM pino WHERE nombre_cientifico = ".$resultado.";";
		$resultado2 = $con->query($query);

		if($resultado2->num_rows > 0)
		{
			while($data = $resultado2->fetch_assoc())
			{
				$data2 = array('nombre' => $data['nombre'],
								'nombre_cientifico' => $data['nombre_cientifico'],
								'descripcion' => utf8_encode($data['descripcion']),
								'imagen' => $data['imagen'],
								'status' => 'success');
			}
			echo json_encode($data2);
		}
		else
		{
			echo json_encode(array('error' => utf8_encode($output)));
		}

		//Cerramos conexión.
		$con->close();
	}
?>