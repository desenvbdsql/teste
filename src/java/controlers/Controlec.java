package controlers;

import beans.Administradora;
import java.io.IOException;
import beans.Usuario;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.SendResult;
import models.AdministradoraDAO;
import models.UsuarioDao;

public class Controlec extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession();
        String flag = request.getParameter("flag");

        switch (flag) {

            case "perfil":

                // Redireciona para a View
                request.getRequestDispatcher("views/perfil.jsp").forward(request, response);

                break;

            case "administradora":                
                
//                Administradora adm = new Administradora();
                
//                AdministradoraDAO admDao = new AdministradoraDAO();
                List<Administradora> listaAdm = new AdministradoraDAO().Pesquisar();

                request.setAttribute("listaAdm", listaAdm);

                // Redireciona para a View
                request.getRequestDispatcher("views/administradora.jsp").forward(request, response);

                break;

            case "alosindico":

                // Redireciona para a View
                request.getRequestDispatcher("views/aloSindico.jsp").forward(request, response);

                break;

            case "assembleia":

                // Redireciona para a View
                request.getRequestDispatcher("views/assembleia.jsp").forward(request, response);

                break;

            case "ocorrencia":

                // Redireciona para a View
                request.getRequestDispatcher("views/ocorrencia.jsp").forward(request, response);

                break;

            case "aviso":

                // Redireciona para a View
                request.getRequestDispatcher("views/aviso.jsp").forward(request, response);

                break;

            case "suporte":

                // Redireciona para a View
                request.getRequestDispatcher("views/suporte.jsp").forward(request, response);

                break;

            case "altSenha":

                Usuario usu = new Usuario();
                usu.setApto(Integer.parseInt(request.getParameter("apto")));

                UsuarioDao usuDao = new UsuarioDao();
                List<Usuario> ListaUsu = usuDao.recuperaSenha(usu);

//                if(ListaUsu.isEmpty())
//                        {
//                          String erro = "Campos vazios ou inválidos!";
//                        request.setAttribute("mensagem", erro);
//                        request.getRequestDispatcher("views/erro.jsp").forward(request, response);
//                        }
//                String apto = "";
//                jogar na sessao
//                for (Usuario teste : ListaUsu) {
//                apto = teste.getApto();
//                }
                request.setAttribute("listaApto", ListaUsu);

                request.getRequestDispatcher("views/AlterarSenha.jsp").forward(request, response);

                break;

            case "editSenha":

                int ap = Integer.parseInt(request.getParameter("ap"));

                String s = request.getParameter(String.valueOf("novaSenha"));
                String cs = request.getParameter("confSenha");

                if ((s != null) && (cs != null)) {
                    Usuario user = new Usuario();
                    UsuarioDao userDao = new UsuarioDao();

                    user.setApto(ap);
                    user.setSenha(s);
                    userDao.editarSenha(user);
                    request.getRequestDispatcher("index.html").forward(request, response);

                } else {
                    request.getRequestDispatcher("index.html").forward(request, response);
                }

                break;
        }
    }

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

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
