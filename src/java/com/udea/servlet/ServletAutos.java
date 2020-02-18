/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.servlet;

import com.udea.ejb.VehiculosFacadeLocal;
import com.udea.entity.Clientes;
import com.udea.entity.Vehiculos;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
public class ServletAutos extends HttpServlet {

    @EJB
    private VehiculosFacadeLocal vehiculosFacade;

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
        
        try (PrintWriter out = response.getWriter()){
           String accion=null;
           String url=null;
           accion=request.getParameter("action");
            if(accion.equals("listar")){
            request.setAttribute("listarAutos", vehiculosFacade.findAll());
                url="vistas/vehiculos/listar.jsp";
            }else if(accion.equals("agregar")){
            Vehiculos vehiculo= new Vehiculos();
            vehiculo.setPlaca(request.getParameter("placa"));
            vehiculo.setMarca(request.getParameter("marca"));
            vehiculo.setModelo(request.getParameter("modelo"));
            vehiculo.setFoto(request.getParameter("foto"));
            vehiculosFacade.create(vehiculo);
            url="vistas/vehiculos/listar.jsp";
            }else if(accion.equals("eliminar")){
            vehiculosFacade.remove(vehiculosFacade.find(request.getParameter("placa")));
            url="vistas/vehiculos/listar.jsp";
            }else if(accion.equals("editar")){
            request.setAttribute("vehiculo", vehiculosFacade.find(request.getParameter("placa")));
            url="vistas/vehiculos/editar.jsp";
            }
            else if(accion.equals("actualizar")){
            Vehiculos vehiculo= vehiculosFacade.find(request.getParameter("placa"));
            
                if (request.getParameter("marca")!=null) {
            vehiculo.setMarca(request.getParameter("marca"));
             }
                if (request.getParameter("modelo")!=null) {
            vehiculo.setModelo(request.getParameter("modelo"));
             }
                if (request.getParameter("foto")!=null) {
                    vehiculo.setFoto(request.getParameter("foto"));
                }
                vehiculosFacade.edit(vehiculo);
             url="vistas/vehiculos/listar.jsp";
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
