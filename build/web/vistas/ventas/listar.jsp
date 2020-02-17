<%-- 
    Document   : listar
    Created on : 15/01/2020, 08:24:26 PM
    Author     : FRANKLIN
--%>


<%@page import="com.udea.entity.Ventas"%>
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
        
        <h1>VENTAS</h1>
        <table >
            <thead>
                <tr>
                    <th>ID VENTA</th>
                    <th>PLACA VEHICULO</th>
                    <th>ID CLIENTE</th>
                </tr>
            </thead>
            <%         
                if (request.getAttribute("listaVentas")!=null) {
                List<Ventas>listaVentas=(List)request.getAttribute("listaVentas");
                 for (Ventas venta : listaVentas) {
                          
            %>
            <tbody>
                <tr>
                    <td> <%=venta.getId()%></td>
                    <td> <%=venta.getPlacaVehiculo()%></td>
                    <td> <%=venta.getIDcliente()%></td>
                    <td> 
                        <a  href="/../concesionariodb/ServletVentas?action=editar&ID=<%=venta.getId()%>">Editar</a>
                    </td>
                    <td> 
                        <a onclick="return confirm('Esta seguro?')" href="/../concesionariodb/ServletVentas?action=eliminar&id=<%=venta.getId()%>">Eliminar</a>
                    </td>
                </tr>
                <%
                    }
                    }
                    
                %>
            <a  href="/../concesionariodb/ServletVentas?action=listar">Actualizar</a>
            </tbody>
        </table>

        
    </body>
</html>
