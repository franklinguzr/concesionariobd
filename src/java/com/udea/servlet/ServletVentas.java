/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.servlet;

import com.udea.ejb.VentasFacade;
import com.udea.ejb.VentasFacadeLocal;
import com.udea.entity.Ventas;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author FRANKLIN
 */
public class ServletVentas extends HttpServlet {

    @EJB
    private VentasFacadeLocal ventasFacade;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String accion=null;
           String url=null;
           accion=request.getParameter("action");
            if(accion.equals("listar")){
            request.setAttribute("listaVentas", ventasFacade.findAll());
                url="vistas/ventas/listar.jsp";
            }else if(accion.equals("agregar")){
            Ventas venta= new Ventas();
            venta.setPlacaVehiculo(request.getParameter("placa"));
            venta.setIDcliente(Integer.parseInt(request.getParameter("Identificacion")));
            ventasFacade.create(venta);
            url="vistas/ventas/listar.jsp";
            }else if(accion.equals("eliminar")){
            ventasFacade.remove(ventasFacade.find(Integer.parseInt(request.getParameter("id"))));
            url="vistas/ventas/listar.jsp";
            }else if(accion.equals("editar")){
            request.setAttribute("venta", ventasFacade.find(Integer.parseInt(request.getParameter("ID"))));
            url="vistas/ventas/editar.jsp";
            }
            else if(accion.equals("actualizar")){
            Ventas venta= ventasFacade.find(Integer.parseInt(request.getParameter("ID")));
             if (request.getParameter("cliente")!=null) {
                   venta.setIDcliente(Integer.parseInt(request.getParameter("cliente")));
             }
                if (request.getParameter("placa")!=null) {
                    venta.setPlacaVehiculo(request.getParameter("placa"));
             }
                 ventasFacade.edit(venta);
             url="vistas/ventas/listar.jsp";
        }
            RequestDispatcher pagina= request.getRequestDispatcher(url);
                pagina.forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
