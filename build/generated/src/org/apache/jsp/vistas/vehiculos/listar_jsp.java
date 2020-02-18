package org.apache.jsp.vistas.vehiculos;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import com.udea.entity.Vehiculos;

public final class listar_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body background=\"https://source.unsplash.com/twukN12EN7c/1920x1080\">\n");
      out.write("<nav class=\"navbar navbar-inverse\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("      <a class=\"navbar-brand\" href=\"\">CONCESIONARIO</a>\n");
      out.write("    </div>\n");
      out.write("    <ul class=\"nav navbar-nav\">\n");
      out.write("      <li><a href=\"#\">MENU PRINCIPAL</a></li>\n");
      out.write("      <li><a href=\"vistas/clientes/menu.jsp\">CLIENTES</a></li>\n");
      out.write("      <li class=\"active\"><a href=\"vistas/vehiculos/menu.jsp\">VEHICULOS</a></li>\n");
      out.write("      <li><a href=\"vistas/ventas/menu.jsp\">VENTAS</a></li>\n");
      out.write("    </ul>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("  \n");
      out.write("<div class=\"container\">\n");
      out.write("   <h1>Lista de vehiculos</h1>\n");
      out.write("        \n");
      out.write("          <table id=\"tabla\" class=\" table table-hover\" cellspacing=\"0\" width=\"100%\">\n");
      out.write("            <thead>\n");
      out.write("                <tr>\n");
      out.write("                    <th scope=\"col\">PLACA</th>\n");
      out.write("                    <th scope=\"col\">MARCA</th>\n");
      out.write("                    <th scope=\"col\">MODELO</th>\n");
      out.write("                    <th scope=\"col\">FOTO</th>\n");
      out.write("                    <th scope=\"col\">ACCIONES</th>\n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");
      out.write("            ");

                 if (request.getAttribute("listarAutos")!=null) {
                List<Vehiculos>listaAutos=(List)request.getAttribute("listarAutos");  
                for (Vehiculos vehiculo : listaAutos) {
              
      out.write("\n");
      out.write("            <tbody>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <b>  ");
      out.print(vehiculo.getPlaca());
      out.write(" </b>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                       <b> ");
      out.print(vehiculo.getMarca());
      out.write("</b>\n");
      out.write("                    </td>\n");
      out.write("                    <td><b>");
      out.print( vehiculo.getModelo());
      out.write(" </b></td>   \n");
      out.write("                    <td> <img source=\"");
      out.print( vehiculo.getFoto());
      out.write("\" width=\"50\"></td>\n");
      out.write("                    <td>\n");
      out.write("                        <div class=\"btn-group\">\n");
      out.write("                            <a  href=\"/../concesionariodb/ServletAutos?action=editar&placa=");
      out.print(vehiculo.getPlaca());
      out.write("\">Editar</a> |\n");
      out.write("                        <a onclick=\"return confirm('Esta seguro?')\" href=\"/../concesionariodb/ServletAutos?action=eliminar&placa=");
      out.print(vehiculo.getPlaca());
      out.write("\">Eliminar</a>\n");
      out.write("                        </div>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                ");

                    }
                    }
                
      out.write("\n");
      out.write("                <a  href=\"/../concesionariodb/ServletAutos?action=listar\">Actualizar</a>\n");
      out.write("            </tbody>\n");
      out.write("        </table>  \n");
      out.write(" </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
