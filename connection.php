<?php

	// Configuracion para la BD.
	$host = "35.229.109.109";
	$db = "taxonomia";
	$user = "root";
	$pass = "horus";
	$port = 3306;

	$con = new mysqli($host,$user,$pass,$db,$port);

	// Checando conexión
	if(mysqli_connect_errno())
	{
	  echo "Error en MySQL: " . mysqli_connect_error();
	}
	else 
	{
		$query = "SELECT * FROM pino WHERE nombre_cientifico = ".$resultado.";";
		$resultado2 = $con->query($query);

		if($resultado2->num_rows > 0)
		{
			while($data = $resultado2->fetch_assoc())
			{
				$data2 = array('nombre' => utf8_encode($data['nombre']),
								'nombre_cientifico' => $data['nombre_cientifico'],
								'descripcion' => utf8_encode($data['descripcion']),
								'imagen' => $data['imagen'],
								'status' => 'success');
			}
			echo json_encode($data2);
		}
		else
		{
			echo json_encode(array('error' => $output));
		}
	}

	//Cerramos conexión.
	$con->close();
?>