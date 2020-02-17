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
        <title>Agregar Vehiculos</title>
    </head>
    <body>
        <div>
            <h1>Agregar Vehiculo</h1>
            <form action="/../concesionariodb/ServletAutos?action=agregar">
                PLACA:
                <input type="text" name="placa">
                <br>MARCA:
                <input type="text" name="marca">
                <br>MODELO:
                <input type="text" name="modelo">
                <br>IMAGEN
                <input type="file" name="foto" accept=".jpg,.png,.gif" >
                <br>
                <input  type="submit" name="action" value="agregar" >
            </form>
        </div>
    </body>
</html>
