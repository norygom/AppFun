<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Registro</title>
<script type="text/javascript">
function MM_validateForm() { //v4.0
  if (document.getElementById){
    var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
    for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=document.getElementById(args[i]);
      if (val) { nm=val.name; if ((val=val.value)!="") {
        if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
          if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
        } else if (test!='R') { num = parseFloat(val);
          if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
          if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
            min=test.substring(8,p); max=test.substring(p+1);
            if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
      } } } else if (test.charAt(0) == 'R') errors += '- '+'El '+nm+' es obligatorio.\n'; }
    } if (errors) alert('Verifica tus datos:\n'+errors);
    document.MM_returnValue = (errors == '');
} }
</script>
</head>

<body>
        <form action="municipio_n.jsp" method="post" name="form1" id="form1" onsubmit="MM_validateForm('nombre','','R');return document.MM_returnValue">
            <table width="302" border="1">
                <tr>
                    <td align="center">Nombre</td>
                    <td align="center"><input name="nombre" type="text" id="nombre" size="20" maxlength="20" /></td>
                </tr>
                <tr>
                  <td align="center"><input type="submit" name="guardar" id="guardar" value="Guardar" /></td>
                  <td align="center"><input type="reset" name="cancelar" id="cancelar" value="Cancelar" /></td>
              </tr>
            </table>
    </form>
    <p><a href="list_municipio.jsp">Listado de Municipios</a></p>
    <p><a href="../index.jsp">Inicio</a></p>
</body>
</html>