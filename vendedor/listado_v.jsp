<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file = "../conexion/controlador.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Listado de Vendedores</title>
</head>

<body>
	<h1>Listado de los Vendedores</h1>
    
    <%
	try {
		Class.forName(driver);
		Connection con = DriverManager.getConnection(URL,usuario,contra);
		
		// Preparar consulta
		Statement consulta = con.createStatement(); 
		ResultSet rs = consulta.executeQuery("SELECT * FROM vendedor v INNER JOIN persona p ON v.id_persona = p.id_persona"); 
		boolean siguiente = rs.next(); 
		
		if(!siguiente){
		%>
            <p>No hay registros</p>
        <%
			}else{
				// Mostrar los registros
		%>
        		<table width="790" height="50" border="1" align="center">
                  <tr class="estilocelda">
                    <td>Matricula</td>
                    <td>Nombre</td>
                    <td>Direccion</td>
                    <td>Sexo</td>
                    <td>Estado</td>
                    <td>Ciudad</td>
                    <td>Carrera</td>
                    <td>Telefono</td>
                    <td>Correo</td>
                  </tr>
 			<%
				while(siguiente) //Mientras haya un registro en la tabla
					{
			%>
                  <tr class="estilocelda">
                    <td><%=rs.getString("matricula")%></td>
                    <td><%=rs.getString("nombre")%></td>
                    <td><%=rs.getString("direccion")%></td>
                    <td><%=rs.getString("sexo")%></td>
                    <td><%=rs.getString("estado")%></td>
                    <td><%=rs.getString("ciudad")%></td>
                    <td><%=rs.getString("carrera")%></td>
                    <td><%=rs.getString("telefono")%></td>
                    <td><%=rs.getString("correo")%> </td>
                  </tr>
			<%
					siguiente = rs.next(); // Busca el proximo registro 
				}
			%>
				</table>	
		<%	
				}
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
    <p><a href="bienvenida_v.jsp">Regresar</a></p>
</body>
</html>