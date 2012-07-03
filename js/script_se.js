// JavaScript Document
var capas = ["capa1"]; 
	function mostrar(capa) { 
		for (i = 0, total = capas.length; i < total; i ++) 
			document.getElementById(capas[i]).style.display = (capas[i] == capa) ? "block":"none"; 
	  } 