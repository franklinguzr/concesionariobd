<%-- 
    Document   : editar
    Created on : 15/01/2020, 08:25:38 PM
    Author     : FRANKLIN
--%>

<%@page import="com.udea.ejb.VehiculosFacade"%>
<%@page import="com.udea.ejb.VehiculosFacadeLocal"%>
<%@page import="com.udea.entity.Vehiculos"%>
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
      <li><a href="../clientes/menu.jsp">CLIENTES</a></li>
      <li class="active"><a href="menu.jsp">VEHICULOS</a></li>
      <li><a href="../ventas/menu.jsp">VENTAS</a></li>
    </ul>
  </div>
</nav>
   <%
          Vehiculos vehiculo = new Vehiculos();
          vehiculo=(Vehiculos)request.getAttribute("vehiculo");
        %>
<div class="container">
  <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="well well-sm">
                <form class="form-horizontal"  action="/../concesionariodb/ServletAutos?action=actualizar">
                    <input type="hidden" name="placa" value="<%=vehiculo.getPlaca()%>">
                <fieldset>
                        <legend class="text-center header">Editar Vehiculo(<%=vehiculo.getPlaca()%>)</legend>
                        
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-8">
                                <input id="nombre" name="marca" type="text" value="<%=vehiculo.getMarca()%>" class="form-control">
                            </div>
                        </div>

                            <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-8">
                                <input id="nombre" name="modelo" type="text" value="<%=vehiculo.getModelo()%>" class="form-control">
                            </div>
                        </div>
                            
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope-o bigicon"></i></span>
                            <div class="col-md-8">
                               <input type="file" name="foto" accept=".jpg,.png,.gif" >
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