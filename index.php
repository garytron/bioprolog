<?php  
    /*if(!file_exists("ejemplo.pl")) die("No se puede localizar el archivo ejemplo.pl, el directorio actual es: ".__DIR__);
    $echo  = `echo anda.`;
    echo "La consola ".($echo ? $echo : "NO anda");
    $output = `swipl -s pinos.pl -g "pino(aciculas,dosgrupos,_,largas,_,grandes,_,irregular)." -t halt.`;
    var_dump($output);*/
    
    /*$res="Data Passed Successfully: " . $_GET['album'];
	echo json_encode($res);*/

	/*$Hojas = ($_GET['Hojas'] != null) ?: "_";
	$Aciculas = ($_GET['Aciculas']) ?: "_";
	$TamAciculas = ($_GET['TamAciculas']) ?: "_";
	$Crit1 = ($_GET['Crit1']) ?: "_";
	$Pinas = ($_GET['Pinas']) ?: "_";
	$Crit3 = ($_GET['Crit3']) ?: "_";
	$Crit2 = ($_GET['Crit2']) ?: "_";
	$TamHojas = ($_GET['TamHojas']) ?: "_";*/

	//print_r($_GET);
	$Hojas = $_GET['Hojas'];
	$Aciculas = $_GET['Aciculas'];
	$TamAciculas = $_GET['TamAciculas'];
	$Crit1 = $_GET['Crit1'];
	$Pinas = $_GET['Pinas'];
	$Crit2 = $_GET['Crit2'];
	$Crit3 = $_GET['Crit3'];
	$TamHojas = $_GET['TamHojas'];
	

	$query = "pino(".$Hojas.",".$Aciculas.",".$TamAciculas.",".$Crit1.",".$Pinas.",".$Crit2.",".$Crit3.",".$TamHojas.")";
	//$query = "pino(".$Hojas.").";
	//$query = "pino(aciculas,dosgrupos,_,largas,_,grandes,_,irregular).";
	$output = shell_exec('swipl -s pinos2.pl -g '. $query .' -t halt.');
	//Quitamos los saltos de linea.
	$output=str_replace("\n","",$output);
	//Codificamos en notación JSON.
	//echo json_encode($output,JSON_UNESCAPED_UNICODE);
	$resultado = json_encode($output,JSON_UNESCAPED_UNICODE);
	//echo $resultado;

	include 'connection.php';
?>