<%-- 
    Document   : editar
    Created on : 15/01/2020, 08:25:38 PM
    Author     : FRANKLIN
--%>

<%@page import="com.udea.entity.Ventas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           Ventas venta = new Ventas();
             venta=(Ventas)request.getAttribute("venta");
             
        %>
        <div>
            <h1>Editar Venta(<%=venta.getId()%>)</h1>
            <form action="/../concesionariodb/ServletVentas?action=actualizar">
                <input type="hidden" name="ID" value="<%=venta.getId()%>">
                <br>Marca<br>
                <input type="text" name="vehiculo" value="<%=venta.getPlacaVehiculo()%>">
                <br>Modelo<br>
                <input type="text" name="cliente" value="<%=venta.getIDcliente()%>">
               <br>
                <input  type="submit" name="action" value="actualizar" >
            </form>
                
        </div>
    </body>
</html>
