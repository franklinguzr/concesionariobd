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
      <li class="active"><a href="menu.jsp">VEHICULOS</a></li>
      <li><a href="../ventas/menu.jsp">VENTAS</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
   <h1>Lista de vehiculos</h1>
        
          <table id="tabla" class=" table table-hover" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <th scope="col">PLACA</th>
                    <th scope="col">MARCA</th>
                    <th scope="col">MODELO</th>
                    <th scope="col">FOTO</th>
                    <th scope="col">ACCIONES</th>
                </tr>
            </thead>
            <%
                 if (request.getAttribute("listarAutos")!=null) {
                List<Vehiculos>listaAutos=(List)request.getAttribute("listarAutos");  
                for (Vehiculos vehiculo : listaAutos) {
              %>
            <tbody>
                <tr>
                    <td>
                        <b>  <%=vehiculo.getPlaca()%> </b>
                    </td>
                    <td>
                       <b> <%=vehiculo.getMarca()%></b>
                    </td>
                    <td><b><%= vehiculo.getModelo()%> </b></td>   
                    <td> <img source="<%= vehiculo.getFoto()%>" width="50"></td>
                    <td>
                        <div class="btn-group">
                            <a  href="/../concesionariodb/ServletAutos?action=editar&placa=<%=vehiculo.getPlaca()%>">Editar</a> |
                        <a onclick="return confirm('Esta seguro?')" href="/../concesionariodb/ServletAutos?action=eliminar&placa=<%=vehiculo.getPlaca()%>">Eliminar</a>
                        </div>
                    </td>
                </tr>
                <%
                    }
                    }
                %>
                <a  href="/../concesionariodb/ServletAutos?action=listar">Actualizar</a>
            </tbody>
        </table>  
 </div>
    </body>
</html>
