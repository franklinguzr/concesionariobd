<%-- 
    Document   : agregar
    Created on : 15/01/2020, 08:25:31 PM
    Author     : FRANKLIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Ventas</title>
    </head>
    <body>
        <div>
            <h1>Agregar Venta</h1>
            <form action="/../concesionariodb/ServletVentas?action=agregar">
                Placa vehiculo<br>
                <input type="text" name="placa">
                <br>ID cliente<br>
                <input type="text" name="id">
                <input type="hidden" name="txtid">
                <br>
                <input  type="submit" name="action" value="agregar" >
            </form>
        </div>
    </body>
</html>
