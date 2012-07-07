<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>AppFun</title>
<style type="text/css">
<!--
/*body {
	background-image: url(imagenes/fondo.png);
	text-align: center;
}*/
-->
</style>
<link rel="stylesheet" href="css/estilos.css"/>
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<script src="SpryAssets/SpryTooltip.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarVertical.css" rel="stylesheet" type="text/css" />
<link href="SpryAssets/SpryTooltip.css" rel="stylesheet" type="text/css" />
</head> 

<body>
<h1>&quot;Funerales Juan Pablo&quot;</h1>
<ul id="MenuBar1" class="MenuBarVertical">
  <li><a href="cliente/bienvenida_c.jsp">Clientes</a>
    <ul>
      <li id="sprytrigger1"><a href="cliente/bienvenida_c.jsp">Nuevo Cliente</a></li>
      <li id="sprytrigger2"><a href="cliente/listado_c.jsp">Ver clientes</a></li>
    </ul>
  </li>
  <li><a href="cobrador/bienvenida_co.jsp" class="MenuBarItemSubmenu">Cobradores</a>
    <ul>
<<<<<<< HEAD
      <li><a href="cobrador/form_co.jsp">Nuevo cobrador</a></li>
      <li><a href="cobrador/listado_co.jsp">Ver cobradores</a></li>
=======
      <li id="sprytrigger3"><a href="cobrador/nuevo_co.jsp">Nuevo cobrador</a></li>
      <li id="sprytrigger4"><a href="cliente/listado_c.jsp">Ver cobradores</a></li>
>>>>>>> Escritorio
    </ul>
  </li>
  <li><a href="domicilio/bienvenida_d.jsp">Domicilios</a>
    <ul>
      <li><a class="MenuBarItemSubmenu" href="#">Nuevo</a>
        <ul>
          <li id="sprytrigger5"><a href="domicilio/form_est.jsp">Estado</a></li>
          <li id="sprytrigger6"><a href="domicilio/form_mun.jsp">Municipio</a></li>
          <li id="sprytrigger7"><a href="domicilio/form_loc.jsp">Localidad/Poblado</a></li>
          <li id="sprytrigger8"><a href="domicilio/form_col.jsp">Colonia</a></li>
        </ul>
      </li>
      <li><a href="#" class="MenuBarItemSubmenu">Ver</a>
        <ul>
          <li id="sprytrigger9"><a href="domicilio/list_estado.jsp">Estados</a></li>
          <li id="sprytrigger10"><a href="domicilio/list_municipio.jsp">Municipios</a></li>
          <li id="sprytrigger11"><a href="domicilio/list_localidad.jsp">Localidades/Pueblos</a></li>
          <li id="sprytrigger12"><a href="domicilio/list_localidad.jsp">Colonias</a></li>
        </ul>
      </li>
</ul>
  </li>
  <li><a href="vendedor/bienvenida_v.jsp" class="MenuBarItemSubmenu">Vendedores</a>
    <ul>
      <li id="sprytrigger13"><a href="vendedor/bienvenida_v.jsp">Nuevo vendedor</a></li>
      <li id="sprytrigger14"><a href="vendedor/listado_v.jsp">Ver vendedores</a></li>
    </ul>
  </li>
  <li><a href="conexion/test.jsp">Test BD</a></li>
  <li><a href="sitemap.html">Mapa del Sitio</a></li>
</ul>
<div class="tooltipContent" id="sprytooltip14">Ver lista de vendedores.</div>
<div class="tooltipContent" id="sprytooltip13">Agregar nuevo vendedor.</div>
<div class="tooltipContent" id="sprytooltip12">Ver lista de colonias.</div>
<div class="tooltipContent" id="sprytooltip11">Ver lista de localidades.</div>
<div class="tooltipContent" id="sprytooltip10">Ver lista de municipios.</div>
<div class="tooltipContent" id="sprytooltip9">Ver lista de estados.</div>
<div class="tooltipContent" id="sprytooltip8">Agregar nueva colonia.</div>
<div class="tooltipContent" id="sprytooltip7">Agregar nueva localidad.</div>
<div class="tooltipContent" id="sprytooltip6">Agregar nuevo municipio.</div>
<div class="tooltipContent" id="sprytooltip5">Agregar nuevo estado.</div>
<div class="tooltipContent" id="sprytooltip4">Listado de cobradores.</div>
<div class="tooltipContent" id="sprytooltip3">Dar de alta un nuevo cobrador.</div>
<div class="tooltipContent" id="sprytooltip2">Listado de clientes.</div>
<div class="tooltipContent" id="sprytooltip1">Dar de alta un nuevo cliente.</div>
<p><img src="imagenes/logofun.jpg" width="352" height="217" alt="logofun" />
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
var sprytooltip1 = new Spry.Widget.Tooltip("sprytooltip1", "#sprytrigger1", {useEffect:"fade", followMouse:true});
var sprytooltip2 = new Spry.Widget.Tooltip("sprytooltip2", "#sprytrigger2", {followMouse:true, useEffect:"fade"});
var sprytooltip3 = new Spry.Widget.Tooltip("sprytooltip3", "#sprytrigger3", {followMouse:true, useEffect:"fade"});
var sprytooltip4 = new Spry.Widget.Tooltip("sprytooltip4", "#sprytrigger4", {followMouse:true, useEffect:"fade"});
var sprytooltip5 = new Spry.Widget.Tooltip("sprytooltip5", "#sprytrigger5", {followMouse:true, useEffect:"fade"});
var sprytooltip6 = new Spry.Widget.Tooltip("sprytooltip6", "#sprytrigger6", {followMouse:true, useEffect:"fade"});
var sprytooltip7 = new Spry.Widget.Tooltip("sprytooltip7", "#sprytrigger7", {followMouse:true, useEffect:"fade"});
var sprytooltip8 = new Spry.Widget.Tooltip("sprytooltip8", "#sprytrigger8", {followMouse:true, useEffect:"fade"});
var sprytooltip9 = new Spry.Widget.Tooltip("sprytooltip9", "#sprytrigger9", {followMouse:true, useEffect:"fade"});
var sprytooltip10 = new Spry.Widget.Tooltip("sprytooltip10", "#sprytrigger10", {followMouse:true, useEffect:"fade"});
var sprytooltip11 = new Spry.Widget.Tooltip("sprytooltip11", "#sprytrigger11", {followMouse:true, useEffect:"fade"});
var sprytooltip12 = new Spry.Widget.Tooltip("sprytooltip12", "#sprytrigger12", {followMouse:true, useEffect:"fade"});
var sprytooltip13 = new Spry.Widget.Tooltip("sprytooltip13", "#sprytrigger13", {followMouse:true, useEffect:"fade"});
var sprytooltip14 = new Spry.Widget.Tooltip("sprytooltip14", "#sprytrigger14", {followMouse:true, useEffect:"fade"});
//-->
</script>
</body>
</html>