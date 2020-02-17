<%-- 
    Document   : editar
    Created on : 15/01/2020, 08:25:38 PM
    Author     : FRANKLIN
--%>

<%@page import="com.udea.entity.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          
          Clientes cliente = new Clientes();
          cliente=(Clientes)request.getAttribute("cliente");
         %>
        <div>
            <h1>Editar Persona(<%=cliente.getId()%>)</h1>
            <form action="/../concesionariodb/ServletClientes?action=actualizar">
                Nombre
                <input type="hidden" name="ID" value="<%=cliente.getId()%>">
                <input type="text" name="nombre" value="<%=cliente.getNombre()%>">
                <br>telefono<br>
                <input type="text" name="telefono" value="<%= cliente.getTelefono()%>">
               
                <input  type="submit" name="action" value="actualizar" >
            </form>
                
        </div>
    </body>
</html>
