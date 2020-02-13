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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">CONCESIONARIO-CLIENTES</a>
      <button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="vistas/clientes/menu.jsp">Ventas</a>
          </li>
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="vistas/vehiculos/menu.jsp">Vehiculos</a>
          </li>
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="vistas/ventas/menu.jsp">Bentas</a> </li> <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#about">About</a>
          </li>
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#">Log in</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
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
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <!-- Footer -->
  <footer class="footer text-center">
    <div class="container">
      <div class="row">

        <!-- Footer Location -->
        <div class="col-lg-4 mb-5 mb-lg-0">
          <h4 class="text-uppercase mb-4">Responsables</h4>
          <p class="lead mb-0">Franklin, Andres and Wilson
            <br>Ingenieros de Sitemas</p>
        </div>

        <!-- Footer Social Icons -->
        <div class="col-lg-4 mb-5 mb-lg-0">
          <h4 class="text-uppercase mb-4">Around the Web</h4>
          <a class="btn btn-outline-light btn-social mx-1" href="#">
            <i class="fab fa-fw fa-facebook-f"></i>
          </a>
          <a class="btn btn-outline-light btn-social mx-1" href="#">
            <i class="fab fa-fw fa-twitter"></i>
          </a>
          <a class="btn btn-outline-light btn-social mx-1" href="#">
            <i class="fab fa-fw fa-linkedin-in"></i>
          </a>
          <a class="btn btn-outline-light btn-social mx-1" href="#">
            <i class="fab fa-fw fa-dribbble"></i>
          </a>
        </div>

        <!-- Footer About Text -->
        <div class="col-lg-4">
          <h4 class="text-uppercase mb-4">About Freelancer</h4>
          <p class="lead mb-0">Freelance is a free to use, MIT licensed Bootstrap theme created by
            <a href="http://startbootstrap.com">Start Bootstrap</a>.</p>
        </div>

      </div>
    </div>
  </footer>
    </body>
</html>
