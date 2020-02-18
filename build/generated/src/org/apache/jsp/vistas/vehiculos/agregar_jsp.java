package org.apache.jsp.vistas.vehiculos;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class agregar_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Agregar Vehiculos</title>\n");
      out.write("         <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\n");
      out.write("         <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\n");
      out.write("         <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body background=\"https://source.unsplash.com/twukN12EN7c/1920x1080\">\n");
      out.write("       <nav class=\"navbar navbar-inverse\">\n");
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
      out.write("</nav> \n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-12\">\n");
      out.write("                    <div class=\"well well-sm\">\n");
      out.write("                <form class=\"form-horizontal\"  action=\"/../concesionariodb/ServletAutos?action=agregar\">\n");
      out.write("                <fieldset>\n");
      out.write("                        <legend class=\"text-center header\">Agregar Vehiculo</legend>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <span class=\"col-md-1 col-md-offset-2 text-center\"><i class=\"fa fa-user bigicon\"></i></span>\n");
      out.write("                            <div class=\"col-md-8\">\n");
      out.write("                                <input id=\"ID\" name=\"placa\" type=\"text\" placeholder=\"placa\" class=\"form-control\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <span class=\"col-md-1 col-md-offset-2 text-center\"><i class=\"fa fa-user bigicon\"></i></span>\n");
      out.write("                            <div class=\"col-md-8\">\n");
      out.write("                                <input id=\"nombre\" name=\"marca\" type=\"text\" placeholder=\"marca\" class=\"form-control\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <span class=\"col-md-1 col-md-offset-2 text-center\"><i class=\"fa fa-envelope-o bigicon\"></i></span>\n");
      out.write("                            <div class=\"col-md-8\">\n");
      out.write("                               <input id=\"contacto\" name=\"modelo\" type=\"text\" placeholder=\"modelo\" class=\"form-control\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <span class=\"col-md-1 col-md-offset-2 text-center\"><i class=\"fa fa-envelope-o bigicon\"></i></span>\n");
      out.write("                            <div class=\"col-md-8\">\n");
      out.write("                                <input type=\"file\" name=\"foto\" accept=\".jpg,.png,.gif\" >\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <span class=\"col-md-1 col-md-offset-2 text-center\"><i class=\"fa fa-envelope-o bigicon\"></i></span>\n");
      out.write("                            <div class=\"col-md-8\">\n");
      out.write("                       <button type=\"submit\" class=\"btn btn-primary btn-lg\" name=\"action\" value=\"agregar\">Submit</button>\n");
      out.write("                        </div>\n");
      out.write("                            </div>\n");
      out.write("                    </fieldset>\n");
      out.write("                </form>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("           </div>\n");
      out.write("            </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
