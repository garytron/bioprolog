$(document).ready(function(){
  $("#enviar").click(function(){

  			var hoja = $('#Pregunta1 input[type="radio"]:checked').val();
			  var acicula = $('#Pregunta2 input[name=aciculas]:checked').val();
				var tamAcicula = $('#Pregunta3 input[type="radio"]:checked').val();
			  var c1 = $('#Pregunta4 input[type="radio"]:checked').val();
				var pinas = $('#Pregunta5 input[type="radio"]:checked').val();
			  var c3 = $('#Pregunta6 input[type="radio"]:checked').val();
				var c2 = $('#Pregunta7 input[type="radio"]:checked').val();
			  var tamHojas = $('#Pregunta8 input[type="radio"]:checked').val();

			  acicula = (acicula) ? acicula : "null";
			  tamAcicula = (tamAcicula) ? tamAcicula : "null";
			  c1 = (c1) ? c1 : "null";
			  pinas = (pinas) ? pinas : "null";
			  c3 = (c3) ? c3 : "null";
			  c2 = (c2) ? c2 : "null";
			  tamHojas = (tamHojas) ? tamHojas : "null";

				$('#Pregunta1').css('display','none');

				if(hoja == "aciculas")
				{
					$('#Pregunta2').css('display','');

					switch(acicula)
					{
						case "aisladas":
							enviarAjax(hoja,acicula,tamAcicula,c1,pinas,c3,c2,tamHojas);
							$('#reiniciar').css('display','');
						break;
						case "dosgrupos":
							$('#Pregunta2').css('display','none');
							$('#Pregunta3').css('display','');

							switch(tamAcicula)
							{
								case "cortas":
									$('#Pregunta3').css('display','none');
									$('#Pregunta4').css('display','');

									if(c1 != "null")
									{
										alert("enviando");
										enviarAjax(hoja,acicula,tamAcicula,c1,pinas,c3,c2,tamHojas);
										$('#reiniciar').css('display','');
									}
								break;
								case "largas":
									$('#Pregunta3').css('display','none');
									$('#Pregunta5').css('display','');

									switch(pinas)
									{
										case "pequenias":
										$('#Pregunta5').css('display','none');
										$('#Pregunta7').css('display','');

										if(c2 != "null")
										{
											alert("enviando");
											enviarAjax(hoja,acicula,tamAcicula,c1,pinas,c3,c2,tamHojas);
											$('#reiniciar').css('display','');
										}
										break;

										case "grandes":
										$('#Pregunta5').css('display','none');
										$('#Pregunta6').css('display','');

										if(c3 != "null")
										{
											alert("enviando");
											enviarAjax(hoja,acicula,tamAcicula,c1,pinas,c3,c2,tamHojas);
											$('#reiniciar').css('display','');
										}
										break;
									}
								break;
							}
						break;
						case "tresgrupos":
							$('#Pregunta2').css('display','none');
							$('#Pregunta8').css('display','');

							if (tamHojas != "null") 
							{
								enviarAjax(hoja,acicula,tamAcicula,c1,pinas,c3,c2,tamHojas);
								$('#reiniciar').css('display','');
							}
						break;
						default:
							if (acicula != "null")
							{
								enviarAjax(hoja,acicula,tamAcicula,c1,pinas,c3,c2,tamHojas);
								$('#reiniciar').css('display','');
							}
						break;
						
					}
				}
				else
				{
					enviarAjax(hoja,acicula,tamAcicula,c1,pinas,c3,c2,tamHojas);
					$('#enviar').css('display','none');
					$('#reiniciar').css('display','');
				}
				
	});

	$("#reiniciar").click(function(){
		$('#Pregunta1').css('display','');
		$('#Pregunta2').css('display','none');
		$('#Pregunta3').css('display','none');
		$('#Pregunta4').css('display','none');
		$('#Pregunta5').css('display','none');
		$('#Pregunta6').css('display','none');
		$('#Pregunta7').css('display','none');
		$('#Pregunta8').css('display','none');
		$('#enviar').css('display','');
		//location.reload();
		$('input[type=radio]').prop('checked', false);
		$('.default').prop('checked', true);
		$('#reiniciar').css('display','none');
		$('#resultado').empty();

	});

	function enviarAjax(hoja,acicula,tamAcicula,c1,pinas,c3,c2,tamHojas)
	{
		$.ajax({
      type: 'GET',
      url: './index.php', 
      data: {Hojas: hoja, Aciculas: acicula, TamAciculas: tamAcicula, 
      				Crit1: c1, Pinas: pinas, Crit3: c3, Crit2: c2, TamHojas: tamHojas},
      beforeSend: function(){
      	/*$(".windows8").append('<div class="wBall" id="wBall_1">');
      	$(".windows8").append('<div class="wInnerBall"></div>');
      	$(".windows8").append('</div>');
      	$(".windows8").append('<div class="wBall" id="wBall_2">');
      	$(".windows8").append('<div class="wInnerBall"></div>');
      	$(".windows8").append('</div>');
      	$(".windows8").append('<div class="wBall" id="wBall_3">');
      	$(".windows8").append('<div class="wInnerBall"></div>');
      	$(".windows8").append('</div>');
      	$(".windows8").append('<div class="wBall" id="wBall_4">');
      	$(".windows8").append('<div class="wInnerBall"></div>');
      	$(".windows8").append('</div>');
      	$(".windows8").append('<div class="wBall" id="wBall_5">');
      	$(".windows8").append('<div class="wInnerBall"></div>');
      	$(".windows8").append('</div>');*/
      	$("#modalbtn").trigger('click');
      	$("#spinner").show();
      },
      success: function(respuesta){
       $('#resultado').html(respuesta);
       $("#spinner").hide();
      }
    });
	}
});