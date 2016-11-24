package controlers;

import beans.Administradora;
import beans.AloSindico;
import beans.Sindico;
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
import models.AloSindicoDAO;
import models.SindicoDAO;
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
                System.out.println(".........CONTROLE........");
                String titulo = request.getParameter("ctl00$ContentPlaceHolder1$txtTitulo");
                String mensagem = request.getParameter("ctl00$ContentPlaceHolder1$txtAloSindico");

                AloSindicoDAO sindDAO = new AloSindicoDAO();
                AloSindico msgsindico = new AloSindico();

                msgsindico.setAssunto(titulo);
                msgsindico.setMensagem(mensagem);

                System.out.println(titulo);

                sindDAO.Cadastrar(msgsindico);

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

            case "altSenhaSindico":

                String senhaAtual = request.getParameter("senhaAtual");
                String senhaNova = request.getParameter("novaSenha");
                String confSenhaNova = request.getParameter("confSenhaNova");
                String nomeSind = session.getAttribute("nome").toString();

                if (senhaAtual != "") {
                    if (senhaNova == confSenhaNova) {

                        SindicoDAO sindicoDAO = new SindicoDAO();
                        Sindico sindico = new Sindico();
                        sindico.setSenha(senhaNova);
                        sindico.setNome(nomeSind);

                        sindicoDAO.editarSenha(sindico);

                        request.getRequestDispatcher("views/viewSindico/alterarSenha.jsp").forward(request, response);

                    } else {
                        request.getRequestDispatcher("views/erro.jsp").forward(request, response);
                    }
                } else {
                    request.getRequestDispatcher("views/erro.jsp").forward(request, response);
                }

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
