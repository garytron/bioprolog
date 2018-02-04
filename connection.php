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

		if($resultado2)
		{
			print_r($resultado2->fetch_object());
		}
		else
		{
			print_r($resultado);
		}
	}

	$con->close();
?>