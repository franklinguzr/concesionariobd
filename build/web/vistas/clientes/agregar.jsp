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
        <title>Agregar Clientes</title>
    </head>
    <body>
        <div>
            <h1>Agregar Persona</h1>
            <form action="/../concesionariodb/ServletClientes?action=agregar">
                ID:<br>
                <input type="text" name="identificacion">
                <br>Nombre:<br>
                <input type="text" name="nombre">
                <br>Contacto:<br>
                <input type="text" name="contacto">
                <input type="hidden" name="txtid">
                <br>
                <input  type="submit" name="action" value="agregar" >
            </form>
        </div>
    </body>
</html>
