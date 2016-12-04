/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlers;

import beans.Aviso;
import java.io.IOException;
import java.io.PrintWriter;

import java.sql.SQLException;
import java.text.ParseException;

import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;
import models.AvisoDAO;

/**
 *
 * @author ICE TI
 */
public class QuadroAviso extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     * @throws java.text.ParseException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        
        HttpSession session = request.getSession();

        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           

        String flag = request.getParameter("flag");

        switch (flag) {
            
            
            case "Salvar":
                
            String titulo = request.getParameter("titulo");
            String data = request.getParameter("dataAviso");
            String dataExp = request.getParameter("dataExp");
            String mensagem = request.getParameter("mensagemAviso");

            ArrayList<Aviso> listaAviso = new ArrayList<>();

            Aviso aviso = new Aviso();
            aviso.setTitulo(titulo);
            aviso.setData(data);
            aviso.setDataExp(dataExp);
            aviso.setMensagemAviso(mensagem);

            AvisoDAO avisoDAO = new AvisoDAO();
            avisoDAO.Inserir(aviso);

            listaAviso.add(aviso);

            request.setAttribute("listaAviso", listaAviso);

            request.getRequestDispatcher("views/viewSindico/aviso.jsp").forward(request, response);
            
            break;

            case "Editar":
                
//                System.out.println(request.getParameter("titulomsg"));
//
                
                int id =(Integer.parseInt(request.getParameter("idmsg")));
                String tituloUp = request.getParameter("titulomsg");
                String dataUp = request.getParameter("datamsg");
                String dataExpUp = request.getParameter("dataexpmsg");
                String mensagemUp = request.getParameter("mensagemAviso");

                 aviso = new Aviso();
                
                aviso.setIdQuadroAviso(id);
                aviso.setTitulo(tituloUp);
                aviso.setData(dataUp);
                aviso.setDataExp(dataExpUp);
                aviso.setMensagemAviso(mensagemUp);

                 avisoDAO = new AvisoDAO();
                avisoDAO.Salvar(aviso);

                request.getRequestDispatcher("views/viewSindico/aviso.jsp").forward(request, response);

                
                break;

            case "Excluir":
                avisoDAO = new AvisoDAO();
                aviso = new Aviso();
                aviso.setIdQuadroAviso(Integer.parseInt(request.getParameter("idmsg")));
                avisoDAO.excluir(aviso);
                //usuarioDAO
                request.getRequestDispatcher("views/viewSindico/aviso.jsp").forward(request, response);
                break;

        }

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
        try {
            processRequest(request, response);
        





} catch (SQLException | ParseException ex) {
            Logger.getLogger(QuadroAviso.class


.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        



} catch (SQLException | ParseException ex) {
            Logger.getLogger(QuadroAviso.class


.getName()).log(Level.SEVERE, null, ex);
        }
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
