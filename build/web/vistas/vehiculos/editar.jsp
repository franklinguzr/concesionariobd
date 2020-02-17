<%-- 
    Document   : editar
    Created on : 15/01/2020, 08:25:38 PM
    Author     : FRANKLIN
--%>

<%@page import="com.udea.ejb.VehiculosFacade"%>
<%@page import="com.udea.ejb.VehiculosFacadeLocal"%>
<%@page import="com.udea.entity.Vehiculos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          
          Vehiculos vehiculo = new Vehiculos();
          vehiculo=(Vehiculos)request.getAttribute("vehiculo");
        %>
        <div>
            <h1>Editar Vehiculo(<%=vehiculo.getPlaca()%>)</h1>
            <form action="/../concesionariodb/ServletAutos?action=actualizar">
                <input type="hidden" name="placa" value="<%=vehiculo.getPlaca()%>">
                <br>Marca<br>
                <input type="text" name="marca" value="<%=vehiculo.getMarca()%>">
                <br>Modelo<br>
                <input type="text" name="modelo" value="<%=vehiculo.getModelo()%>">
                <br>Foto<br>
                <input type="image" name="foto" value="<%=vehiculo.getFoto()%>">
                
                <br>
                <input  type="submit" name="action" value="actualizar" >
            </form>
                
        </div>
    </body>
</html>
