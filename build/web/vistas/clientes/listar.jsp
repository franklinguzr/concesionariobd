<%-- 
    Document   : listar
    Created on : 15/01/2020, 08:24:26 PM
    Author     : FRANKLIN
--%>


<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.udea.entity.Clientes"%>
<%@page import="com.udea.ejb.ClientesFacade"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>clientes!</h1>
        <table >
            <thead>
                <tr>
                    <th>ID CLIENTE</th>
                    <th>NOMBRE</th>
                    <th>CONTACTO</th>
                </tr>
            </thead>
            <%         
                if (request.getAttribute("listaclientes")!=null) {
                List<Clientes>listaclientes=(List)request.getAttribute("listaclientes");
                
                for (Clientes cliente : listaclientes) {
                              
            %>
            <tbody>
                <tr>
                    <td> <%=cliente.getId()%></td>
                    <td> <%=cliente.getNombre()%></td>
                    <td> <%=cliente.getTelefono()%></td>
                    <td> 
                        <a href="/../concesionariodb/ServletClientes?action=editar&id<%=cliente.getId()%>&nombre<%=cliente.getNombre()%>&contacto<%=cliente.getTelefono()%>">editar</a>
                        <a onclick="return confirm('Esta seguro?')" href="/../concesionariodb/ServletClientes?action=eliminar&id=<%=cliente.getId()%>">Eliminar</a>
                    </td>
                </tr>
                <%
                    }
                    }
                    
                %>
            <a  href="/../concesionariodb/ServletClientes?action=listar">Actualizar</a>
            </tbody>
        </table>

        
    </body>
</html>
