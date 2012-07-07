<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file = "../conexion/controlador.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="../js/script_se.js"></script>
<title>Listado de Cobradores</title>
</head>

<body>
	<h1>Listado de los Cobradores</h1>
    
    <%
	try {
		Class.forName(driver);
		Connection con = DriverManager.getConnection(URL,usuario,contra);
		
		// Preparar consulta
		Statement consulta = con.createStatement(); 
		ResultSet rs = consulta.executeQuery("SELECT * FROM cobrador c INNER JOIN persona p ON c.id_persona = p.id_persona INNER JOIN detalle_domicilio dc ON p.id_detalle_dom = dc.id_detalle_dom INNER JOIN colonia co ON dc.id_colonia = co.id_colonia"); 
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
                    <td>Comision</td>
                    <td>Nombre</td>
                    <td>Colonia</td>
                  </tr>
 			<%
				while(siguiente) //Mientras haya un registro en la tabla
					{
			%>
                  <tr class="estilocelda">
                    <td><%=rs.getString("comision")%></td>
                    <td><%=rs.getString("nombre")%></td>
                    <td><%=rs.getString("nombre_col")%></td>
                  </tr>
			<%
					siguiente = rs.next(); // Busca el proximo registro 
				}
			%>
				</table>	
		<%	
				}
			%>    
    <div>
    	<a style="cursor:pointer" onClick="mostrar('capa1')"><p>Nueva Colonia</p></a>
	</div>
	
    <div id="capa1" style="display:block;">
        <form id="form1" name="form1" method="post" action="">
            <table width="302" border="1">
                <tr>
                    <td width="138">Nombre</td>
                    <td width="148"><label for="nombre"></label>
                    <input type="text" name="nombre" id="nombre" /></td>
                </tr>
                <tr>
                    <td>Apellido Paterno</td>
                    <td><label for="ap_materno"></label>
                  <input type="text" name="ap_paterno" id="ap_paterno" /></td>
                </tr>
                <tr>
                  <td>Apellido Materno</td>
                  <td><label for="ap_materno"></label>
                  <input type="text" name="ap_materno" id="ap_materno" /></td>
              </tr>
                <tr>
                  <td>Estado Civil</td>
                  <td><label for="edo_civil"></label>
                  <input type="text" name="edo_civil" id="edo_civil" /></td>
                </tr>
                <tr>
                  <td>Telefono Casa</td>
                  <td><label for="tel_casa"></label>
                  <input type="text" name="tel_casa" id="tel_casa" /></td>
                </tr>
                <tr>
                  <td>Telefono Movil</td>
                  <td><label for="tel_movil"></label>
                  <input type="text" name="tel_movil" id="tel_movil" /></td>
                </tr>
                <tr>
                  <td>Codigo Postal</td>
                  <td><label for="cod_postal"></label>
                  <input type="text" name="cod_postal" id="cod_postal" /></td>
                </tr>
                <tr>
                  <td>Domicilio</td>
                  <td><label for="domicilio"></label>
                  <input type="text" name="domicilio" id="domicilio" /></td>
                </tr>
                <tr>
                  <td>Entre calles</td>
                  <td><label for="entre"></label>
                  <input type="text" name="entre" id="entre" /></td>
                </tr>
                <tr>
                  <td>Observaciones</td>
                  <td><label for="observaciones"></label>
                  <input type="text" name="observaciones" id="observaciones" /></td>
                </tr>
                <tr>
                  <td>Comision</td>
                  <td><label for="comision"></label>
                  <input type="text" name="comision" id="comision" /></td>
                </tr>
                <tr>
                  <td>Estado</td>
                  <td><label for="estado"></label>
                    <select name="estado" id="estado">
			<%
			Statement consulta1 = con.createStatement(); 
			ResultSet rs1 = consulta.executeQuery("SELECT DISTINCT nombre_est FROM estado ORDER BY nombre_est");
                while(rs1.next())
                {
                %>
                    <option><%=rs1.getString("nombre_est")%></option>                    
                <%                   
                }                                               
            %>	
                  </select></td>
                </tr>
                <tr>
                  <td>Municipio</td>
                  <td><label for="municipio"></label>
                    <select name="municipio" id="municipio">
            <%
			Statement consulta2 = con.createStatement(); 
			ResultSet rs2 = consulta.executeQuery("SELECT DISTINCT nombre_mun FROM municipio ORDER BY nombre_mun");
                while(rs2.next())
                {
                %>
                    <option><%=rs2.getString("nombre_mun")%></option>                    
                <%                   
                }                                               
            %>	
                  </select></td>
                </tr>
                <tr>
                  <td>Localidad</td>
                  <td><label for="localidad"></label>
                    <select name="localidad" id="localidad">
             <%
			Statement consulta3 = con.createStatement(); 
			ResultSet rs3 = consulta.executeQuery("SELECT DISTINCT nombre_loc FROM localidad ORDER BY nombre_loc");
                while(rs3.next())
                {
                %>
                    <option><%=rs3.getString("nombre_loc")%></option>                    
                <%                   
                }                                               
            %>	
                  </select></td>
                </tr>
                <tr>
                  <td>Colonia</td>
                  <td><label for="colonia"></label>
                    <select name="colonia" id="colonia">
             <%
			Statement consulta4 = con.createStatement(); 
			ResultSet rs4 = consulta.executeQuery("SELECT DISTINCT nombre_col FROM colonia ORDER BY nombre_col");
                while(rs4.next())
                {
                %>
                    <option><%=rs4.getString("nombre_col")%></option>                    
                <%                   
                }                                               
            %>	
                  </select></td>
                </tr>
                <tr>
                  <td><input type="submit" name="guardar" id="guardar" value="Guardar" /></td>
                  <td><input type="reset" name="cancelar" id="cancelar" value="Cancelar" /></td>
                </tr>
            </table>
    </form>
</div>

	<%
			consulta.close();
			consulta1.close();
			consulta2.close();
			consulta3.close();
			consulta4.close();
			con.close();
		}
	catch(Exception e){
		%>
		Ocurrio un error al conectarse
	<%
		out.println("El error es: " + e.getMessage());
		}
	%>
    
    <p><a href="bienvenida_co.jsp">Regresar</a></p>
</body>
</html>