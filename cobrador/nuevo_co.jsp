<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file = "../conexion/controlador.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Registro Exitoso</title>
</head>

<body>
	<%
	//Variables 
	String nombre = String.valueOf(request.getParameter("nombre"));
	String ap_pat = String.valueOf(request.getParameter("ap_paterno"));
	String ap_mat = String.valueOf(request.getParameter("ap_materno"));
	String ed_civ = String.valueOf(request.getParameter("edo_civil"));
	int tel_ca = Integer.valueOf(request.getParameter("tel_casa")).intValue();
	int tel_mo = Integer.valueOf(request.getParameter("tel_movil")).intValue();
	int cod_po = Integer.valueOf(request.getParameter("cod_postal")).intValue();
	String domici = String.valueOf(request.getParameter("domicilio"));
	String ent_ca = String.valueOf(request.getParameter("entre"));
	String observ = String.valueOf(request.getParameter("observaciones"));
	int comisi = Integer.valueOf(request.getParameter("comision")).intValue();
	String estado = String.valueOf(request.getParameter("estado"));
	String munici = String.valueOf(request.getParameter("municipio"));
	String locali = String.valueOf(request.getParameter("localidad"));
	String coloni = String.valueOf(request.getParameter("colonia"));
			
	try {
		Class.forName(driver);
		Connection con = DriverManager.getConnection(URL,usuario,contra);
		
		// Preparar consulta
		Statement consulta = con.createStatement(); 
		consulta.executeQuery("INSERT INTO persona"); 
		
			consulta.close();
			con.close();
			
		}
	catch(Exception e){
		%>
		Ocurrio un error al conectarse
	<%
		out.println("El error es: " + e.getMessage());
		}
	%>
</body>
</html>