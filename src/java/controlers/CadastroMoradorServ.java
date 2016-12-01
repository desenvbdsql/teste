/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlers;

import beans.Torre;
import beans.Usuario;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.TorreDAO;
import models.UsuarioDao;

/**
 *
 * @author Rangel
 */
@WebServlet
public class CadastroMoradorServ extends HttpServlet {

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

        List<Usuario> listaUsuario = new ArrayList();
        List<Torre> listaTorre = new ArrayList();

        Usuario user = new Usuario();
        Torre torre = new Torre();

        UsuarioDao usuarioDAO = new UsuarioDao();
        TorreDAO torreDAO = new TorreDAO();

        String flag = request.getParameter("flag");

        if (flag != null) {
            if (flag.equals("listaUsuario")) {

////            listaUsuario = usuarioDAO.listar();
//            listaTorre = torreDAO.buscaTorre();
//            listaUsuario = usuarioDAO.listar();
//            for(Torre tr : listaTorre) {
//                for(Usuario usr : listaUsuario){
//                    usrg.setTorre(tr.getTorre());
//                    usrg.setTorre(usr.getNome());
//                    usrg.setTorre(usr.getEmail());
//                    usrg.setTorre(usr.getApto());
//                }
//                listaUser.add(usrg);
////                idTorre = tr.getIdTorre();
////                tore = tr.getTorre();
//            }
//            request.setAttribute("listaUser", listaUser);
                request.getRequestDispatcher("views/viewSindico/listaUsuario.jsp").forward(request, response);
            }
        } else {
            user.setIdPerfil(2);

            torre.setTorre(request.getParameter("torre"));

            user.setNome(request.getParameter("nomeMorador"));
            user.setEmail(request.getParameter("emailMorador"));
            user.setSenha(request.getParameter("senhaMorador"));
            user.setApto(request.getParameter("aptMorador"));

            user.setIdTorre(torreDAO.pesquisaTorre(torre.getTorre()));

            usuarioDAO.inserir(user);

            request.getRequestDispatcher("views/viewSindico/listaUsuario.jsp").forward(request, response);
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
            Logger.getLogger(Controlec.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(Controlec.class.getName()).log(Level.SEVERE, null, ex);
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
