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
	
	Connection con;
		Class.forName(driver);
		con = DriverManager.getConnection(URL,usuario,contra);
		Statement insertando; //Variable para ejecutar la consulta SQL
		insertando = con.createStatement();
		
		try{
			
		insertando.executeUpdate("INSERT INTO localidad (nombre_loc) VALUES('"+ nombre +"')"); 
		
			insertando.close();
	%>
    	<p>¡Se registro correctamente!</p>
    <%	
			con.close();
		}
	catch(Exception e){
		%>
		Ocurrio un error al conectarse
	<%
		out.println("El error es: " + e.getMessage());
		}
	%>
    <p><a href="list_localidad.jsp">Ver Localidades</a></p>
    <p><a href="form_loc.jsp">Nueva Localidad</a></p>
    <p><a href="../index.jsp">Inicio</a></p>
</body>
</html>