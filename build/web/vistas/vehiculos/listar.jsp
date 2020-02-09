<%-- 
    Document   : listar
    Created on : 22-ene-2020, 21:15:57
    Author     : FRANKLIN
--%>

<%@page import="java.util.List"%>
<%@page import="com.udea.entity.Vehiculos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>VEHICULOS</h1>
        <table >
            <thead>
                <tr>
                    <th>PLACA</th>
                    <th>MARCA</th>
                    <th>MODELO</th>
                    <th>FOTO</th>
                </tr>
            </thead>
            <%
                 if (request.getAttribute("listarAutos")!=null) {
                List<Vehiculos>listaAutos=(List)request.getAttribute("listarAutos");  
                for (Vehiculos vehiculo : listaAutos) {
                    
                       
              %>
            <tbody>
                <tr>
                    <td> <%=vehiculo.getPlaca()%></td>
                    <td><%=vehiculo.getMarca()%> </td>
                    <td><%= vehiculo.getModelo()%> </td>
                    <td><img width="100" height="100" src=<%=vehiculo.getFoto()%>>
                       </td>
                    
                </tr>
                <%
                }}
                %>
            <a  href="/../concesionariodb/ServletAutos?action=listar">Actualizar</a>
            </tbody>
        </table>

        
    </body>
</html>
