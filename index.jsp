<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>AppFun</title>
<style type="text/css">
<!--
body {
	background-image: url(imagenes/fondo.png);
	text-align: center;
}
-->
</style>
<link rel="stylesheet" href="css/estilos.css"/>
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarVertical.css" rel="stylesheet" type="text/css" />
</head> 

<body>
<h1>&quot;Funerales Juan Pablo&quot;</h1>
<ul id="MenuBar1" class="MenuBarVertical">
  <li><a href="cliente/bienvenida_c.jsp">Clientes</a>
    <ul>
      <li><a href="cliente/bienvenida_c.jsp">Nuevo Cliente</a></li>
      <li><a href="cliente/listado_c.jsp">Ver clientes</a></li>
    </ul>
  </li>
  <li><a href="cobrador/bienvenida_co.jsp" class="MenuBarItemSubmenu">Cobradores</a>
    <ul>
      <li><a href="cobrador/form_co.jsp">Nuevo cobrador</a></li>
      <li><a href="cobrador/listado_co.jsp">Ver cobradores</a></li>
    </ul>
  </li>
  <li><a href="domicilio/bienvenida_d.jsp">Domicilios</a>
    <ul>
      <li><a class="MenuBarItemSubmenu" href="#">Nuevo</a>
        <ul>
          <li><a href="domicilio/form_est.jsp">Estado</a></li>
          <li><a href="domicilio/form_mun.jsp">Municipio</a></li>
          <li><a href="domicilio/form_loc.jsp">Localidad/Poblado</a></li>
          <li><a href="domicilio/form_col.jsp">Colonia</a></li>
        </ul>
      </li>
      <li><a href="#" class="MenuBarItemSubmenu">Ver</a>
        <ul>
          <li><a href="domicilio/list_estado.jsp">Estados</a></li>
          <li><a href="domicilio/list_municipio.jsp">Municipios</a></li>
          <li><a href="domicilio/list_localidad.jsp">Localidades/Pueblos</a></li>
          <li><a href="domicilio/list_localidad.jsp">Colonias</a></li>
        </ul>
      </li>
</ul>
  </li>
  <li><a href="vendedor/bienvenida_v.jsp" class="MenuBarItemSubmenu">Vendedores</a>
    <ul>
      <li><a href="vendedor/bienvenida_v.jsp">Nuevo vemdedor</a></li>
      <li><a href="vendedor/listado_v.jsp">Ver vendedores</a></li>
    </ul>
  </li>
  <li><a href="conexion/test.jsp">Test BD</a></li>
  <li><a href="sitemap.html">Mapa del Sitio</a></li>
</ul>
<p><img src="imagenes/logofun.jpg" width="273" height="181" alt="logofun" />
  </script>
</p>
<p><a href="cliente/bienvenida_c.jsp"></a></p>
    <p><a href="cobrador/bienvenida_co.jsp"></a></p>
    <p><a href="domicilio/bienvenida_d.jsp"></a></p>
    <p><a href="vendedor/bienvenida_v.jsp"></a></p>
<p><a href="conexion/test.jsp"></a></p>
<script type="text/javascript">
<!--
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
//-->
    </script>
</body>
</html>