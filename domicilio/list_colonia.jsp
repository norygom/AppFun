<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file = "../conexion/controlador.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="../js/script_se.js"></script>
<title>Colonias</title>
</head>

<body>
	<h1>Listado de las Colonias</h1>
    
    <%
	try {
		Class.forName(driver);
		Connection con = DriverManager.getConnection(URL,usuario,contra);
		
		// Preparar consulta
		Statement consulta = con.createStatement(); 
		ResultSet rs = consulta.executeQuery("SELECT * FROM colonia ORDER BY id_colonia"); 
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
                  	<td>ID</td>
                    <td>Nombre</td>
                  </tr>
 			<%
				while(siguiente) //Mientras haya un registro en la tabla
					{
			%>
                  <tr class="estilocelda">
                  	<td><%=rs.getString("id_colonia")%></td>
                    <td><%=rs.getString("nombre_col")%></td>
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
    
    <div>
    	<a style="cursor:pointer" onClick="mostrar('capa1')"><p>Nueva Colonia</p></a>
	</div>
	
    <div id="capa1" style="display:none;">
        <form id="form1" name="form1" method="post" action="colonia_n.jsp">
            <table width="302" border="1">
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="nombre" id="nombre" /></td>
                </tr>
                <tr>
                  <td><input type="submit" name="guardar" id="guardar" value="Guardar" /></td>
                  <td><input type="reset" name="cancelar" id="cancelar" value="Cancelar" /></td>
              </tr>
            </table>
    </form>
        </div>

    <p><a href="bienvenida_d.jsp">Regresar</a></p>
</body>
</html>