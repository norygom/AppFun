<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file = "../conexion/controlador.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Test BD</title>
</head>

<body>
	<h1>
    	<p>Probando la conexion a BD</p>
    </h1>
	<%
	try {
		Class.forName(driver); // Clase para llamar el Driver de postgreSQL
		Connection con = DriverManager.getConnection(URL,usuario,contra); // Variable de conexion
	%>
    <p>Conexion exitosa a la BD</p>
    <%
		con.close(); // Cierra la conexion a la BD
		}
	catch(Exception e) { // Captura el error si lo hay
	%>
    <p>Error al conectar a la BD</p>
    <%
		out.println("El error es: " + e.getMessage()); // Especifica el error "getMessage"
		}
	%>
</body>
</html>