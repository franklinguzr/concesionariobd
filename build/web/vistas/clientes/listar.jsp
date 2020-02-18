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
      <li class="active"><a href="menu.jsp">CLIENTES</a></li>
      <li><a href="../vehiculos/menu.jsp">VEHICULOS</a></li>
      <li><a href="../ventas/menu.jsp">VENTAS</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
   <h1>Lista de clientes</h1>
        
          <table id="tabla" class=" table table-hover" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <th scope="col">ID CLIENTE</th>
                    <th scope="col">NOMBRE</th>
                    <th scope="col">CONTACTO</th>
                    <th scope="col">ACCIONES</th>
                </tr>
            </thead>
            <%         
                if (request.getAttribute("listaclientes")!=null) {
                List<Clientes>listaclientes=(List)request.getAttribute("listaclientes");
                
                for (Clientes cliente : listaclientes) {
                              
            %>
            <tbody>
                <tr>
                    <td>
                        <b>  <%=cliente.getId()%> </b>
                    </td>
                    <td>
                       <b> <%=cliente.getNombre()%></b>
                    </td>
                    <td><b><%=cliente.getTelefono()%></b></td>   
                    <td>
                        <div class="btn-group">
                            <a  href="/../concesionariodb/ServletClientes?action=editar&ID=<%=cliente.getId()%>">Editar</a> |
                        <a onclick="return confirm('Esta seguro?')" href="/../concesionariodb/ServletClientes?action=eliminar&id=<%=cliente.getId()%>">Eliminar</a>
                        </div>
                    </td>
                </tr>
                <%
                    }
                    }
                %>
                <a  href="/../concesionariodb/ServletClientes?action=listar">Actualizar Tabla</a>
            </tbody>
        </table>  
 </div>
    </body>
</html>
