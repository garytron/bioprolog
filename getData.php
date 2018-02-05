<?php  
    
    //Recibimos datos GET.
	$Hojas = $_GET['Hojas'];
	$Aciculas = $_GET['Aciculas'];
	$TamAciculas = $_GET['TamAciculas'];
	$Crit1 = $_GET['Crit1'];
	$Pinas = $_GET['Pinas'];
	$Crit2 = $_GET['Crit2'];
	$Crit3 = $_GET['Crit3'];
	$TamHojas = $_GET['TamHojas'];
	
	//Creamos el query para prolog.
	$query = "pino(".$Hojas.",".$Aciculas.",".$TamAciculas.",".$Crit1.",".$Pinas.",".$Crit2.",".$Crit3.",".$TamHojas.")";

	//Ejecutamos el comando en prolog.
	$output = shell_exec('swipl -s pinos2.pl -g "'. $query .'" -t halt.');

	//Quitamos los saltos de linea del output.
	$resultado=str_replace("\n","",$output);

	//Codificamos en notación JSON.
	//$resultado = json_encode($output,JSON_UNESCAPED_UNICODE);
	
	include 'connection.php';
?>