<%-- 
    Document   : menu
    Created on : 15/01/2020, 08:36:33 PM
    Author     : FRANKLIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
  <title>MENU CLIENTES</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
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
  <h3>Bienvenido al menu de gestion de su concesionario</h3>
  <p>Nota: en la pagina de listar puede realizar distintas acciones como: modificar o eliminar.</p>
  <h1><a href="agregar.jsp" style="color:#000000;">AGREGAR</a></h1>
  <h1><a href="/../concesionariodb/ServletVentas?action=listar" style="color:#000000;">LISTAR</a></h1>
 </div>
</body>
</html>
