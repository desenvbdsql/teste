package controlers;

import beans.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.UsuarioDao;

public class LoginServ extends HttpServlet {

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
        
        try {

            String name = request.getParameter("usuario");
            String pwd = request.getParameter("senha");

            if ((name.equals("")) || (pwd.equals(""))) {
                String erro = "Campos vazios ou inválidos!";
                request.setAttribute("mensagem", erro);
                request.getRequestDispatcher("views/erro.jsp").forward(request, response);
            }

            UsuarioDao uDAO = new UsuarioDao();
            List<Usuario> usuario = uDAO.pesquisaLogin(name, pwd);
            
            if (usuario != null) {

                for (Usuario usu : usuario) {

                    session.setAttribute("idUsuario", usu.getIdUsuario());
                    session.setAttribute("idPerfil", usu.getIdPerfil());
                    session.setAttribute("nome", usu.getNome());
                    session.setAttribute("email", usu.getEmail());
                    session.setAttribute("apto", usu.getApto());

                    //request.getRequestDispatcher("views/home.jsp").forward(request, response);
                    if (session.getAttribute("idPerfil").equals(1)) {
                        // Redireciona para a View
                        
                        request.getRequestDispatcher("views/home.jsp").forward(request, response);

                    } else if (session.getAttribute("idPerfil").equals(2)) {
                        // Redireciona para a View
                        request.getRequestDispatcher("views/home.jsp").forward(request, response);

                    }
                }

            } else {
                request.getRequestDispatcher("index.html").forward(request, response);
            }

        } finally {
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
        PrintWriter out = response.getWriter();
        out.printf("sai fora");

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
            Logger.getLogger(LoginServ.class.getName()).log(Level.SEVERE, null, ex);
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
