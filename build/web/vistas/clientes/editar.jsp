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
        <title>Agregar Clientes</title>
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
   <%
          
          Clientes cliente = new Clientes();
          cliente=(Clientes)request.getAttribute("cliente");
         %>
<div class="container">
  <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="well well-sm">
                <form class="form-horizontal"  action="/../concesionariodb/ServletClientes?action=actualizar">
                    <input type="hidden" name="ID" value="<%=cliente.getId()%>">
                <fieldset>
                        <legend class="text-center header">Editar Persona(<%=cliente.getId()%>)</legend>
                        
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-8">
                                <input id="nombre" name="nombre" type="text" value="<%=cliente.getNombre()%>" class="form-control">
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope-o bigicon"></i></span>
                            <div class="col-md-8">
                               <input id="contacto" name="telefono" type="text" value="<%= cliente.getTelefono()%>" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope-o bigicon"></i></span>
                            <div class="col-md-8">
                       <button type="submit" class="btn btn-primary btn-lg" name="action" value="actualizar">Submit</button>
                        </div>
                            </div>
                    </fieldset>
                </form>
                </div>
              </div>
           </div>
            </div>
 </div>
</body>
</html>
