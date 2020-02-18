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
        <title>LISTAR VENTAS</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body background="https://source.unsplash.com/twukN12EN7c/1920x1080">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
       <a class="navbar-brand" href="../../index.jsp">CONCESIONARIO</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="../clientes/menu.jsp">CLIENTES</a></li>
      <li><a href="../vehiculos/menu.jsp">VEHICULOS</a></li>
      <li class="active"><a href="menu.jsp">VENTAS</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
   <h1>Lista de ventas</h1>
          <table id="tabla" class=" table table-hover" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">PLACA VEHICULO</th>
                    <th scope="col">ID CLIENTE</th>
                </tr>
            </thead>
           <%         
                if (request.getAttribute("listaVentas")!=null) {
                List<Ventas>listaVentas=(List)request.getAttribute("listaVentas");
                 for (Ventas venta : listaVentas) {
                          
            %>
            <tbody>
                <tr>
                    <td>
                        <b>  <%=venta.getId()%> </b>
                    </td>
                    <td>
                       <b> <%=venta.getPlacaVehiculo()%></b>
                    </td>
                    <td><b><%=venta.getIDcliente()%></b></td>   
                    <td>
                        <div class="btn-group">
                            <a  href="/../concesionariodb/ServletVentas?action=editar&ID=<%=venta.getId()%>">Editar</a> |
                            <a onclick="return confirm('Esta seguro?')" href="/../concesionariodb/ServletVentas?action=eliminar&id=<%=venta.getId()%>">Eliminar</a>
                    </div>
                    </td>
                </tr>
                <%
                    }
                    }
                %>
                <a  href="/../concesionariodb/ServletVentas?action=listar">Actualizar Tabla</a>
            </tbody>
        </table>  
 </div>
    </body>
</html>

