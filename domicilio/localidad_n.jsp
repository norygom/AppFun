<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file = "../conexion/controlador.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Conexion Exitosa</title>
</head>

<body>
	<%
	//Variables
	String nombre = String.valueOf(request.getParameter("nombre"));
	
	try {
		Class.forName(driver);
		Connection con = DriverManager.getConnection(URL,usuario,contra);
		
		// Preparar consulta
		Statement consulta = con.createStatement(); 
		consulta.executeQuery("INSERT INTO localidad (nombre_loc) VALUES('"+ nombre +"')"); 
		
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
    <p><a href="list_localidad.jsp">Regresar</a></p>
</body>
</html>