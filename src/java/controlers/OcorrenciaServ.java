/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlers;

import beans.OcorrenciaMorador;
import beans.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.OcorrenciaDAO;
import models.UsuarioDao;

/**
 *
 * @author Rangel
 */
public class OcorrenciaServ extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        
        HttpSession session = request.getSession();
        
        String nome = session.getAttribute("nome").toString();
        String email = session.getAttribute("email").toString();
        
        //List<Usuario> listaUsuario = new ArrayList();
        //List<Torre> listaTorre = new ArrayList();
        //UsuarioDao usuarioDAO = new UsuarioDao();
        Usuario user = new UsuarioDao().pesquisarUsuario(nome, email);
        OcorrenciaMorador ocorrenciaMorador = new OcorrenciaMorador();
        
        OcorrenciaDAO ocorrenciaDAO = new OcorrenciaDAO();
        
        String flag = request.getParameter("flag");

        switch (flag) {
            case "Gravar":

                ocorrenciaMorador.setTipoOcorrencia(request.getParameter("tipoOcorrencia"));
                ocorrenciaMorador.setDataOcorrencia(request.getParameter("dataOcorrencia"));
                ocorrenciaMorador.setTituloOcorrencia(request.getParameter("tituloOcorrencia"));
                ocorrenciaMorador.setOcorrencia(request.getParameter("ocorrencia"));
                ocorrenciaMorador.setStatusOcorrencia("Nao lida");
                ocorrenciaMorador.setIdUsuario(user.getIdUsuario());
                
                ocorrenciaDAO.cadastrarOcorrencia(ocorrenciaMorador);
                
                request.getRequestDispatcher("views/ocorrencia.jsp").forward(request, response);
                
                break;
                
            case "Editar":
                ocorrenciaDAO = new OcorrenciaDAO();
                ocorrenciaMorador = new OcorrenciaMorador();
                ocorrenciaMorador.setIdOcorrencia(Integer.parseInt(request.getParameter("idOcorrenciaM")));
                ocorrenciaMorador.setTituloOcorrencia(request.getParameter("tituloOcorrenciaM"));
                
                ocorrenciaDAO.alterarOcorrencia(ocorrenciaMorador);
                
                request.getRequestDispatcher("views/ocorrencia.jsp").forward(request, response);
                
                break;
                
            case "Excluir":
                ocorrenciaDAO = new OcorrenciaDAO();
                ocorrenciaMorador = new OcorrenciaMorador();
                ocorrenciaMorador.setIdOcorrencia(Integer.parseInt(request.getParameter("idOcorrenciaM")));
                
                ocorrenciaDAO.excluirOcorrencia(ocorrenciaMorador);
                
                request.getRequestDispatcher("views/ocorrencia.jsp").forward(request, response);
                
                break;
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
        } catch (SQLException ex) {
            Logger.getLogger(OcorrenciaServ.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (SQLException ex) {
            Logger.getLogger(OcorrenciaServ.class.getName()).log(Level.SEVERE, null, ex);
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
