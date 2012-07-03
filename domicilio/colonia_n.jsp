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
	int id = Integer.valueOf(request.getParameter("id_colonia")).intValue(); 
	String nombre = String.valueOf(request.getParameter("nombre"));
	
	out.println(id);
	out.println(nombre);
	%>
    
</body>
</html>