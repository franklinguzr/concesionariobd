<%-- 
    Document   : editar
    Created on : 15/01/2020, 08:25:38 PM
    Author     : FRANKLIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           String h= request.getParameter("id");
           String i=(String) request.getAttribute("idc");
        %>
        <div>
            <h1>Editar Persona</h1>
            <form action="/../concesionariodb/ServletClientes?action=actualizar">
                ID:<br>
                <input type="text" name="identificacion" value="<%=request.getAttribute("idc")%>">
                <br>Nombre:<br>
                <input type="text" name="nombre" value="">
                <br>Contacto:<br>
                <input type="text" name="contacto" value="">
                <input type="hidden">
                <br>
                <input  type="submit" name="action" value="agregar" onclick="return confirm('Actualizar?')">
            </form>
        </div>
    </body>
</html>
