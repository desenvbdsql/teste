/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlers;

import java.io.IOException;
import java.io.PrintWriter;
import beans.Usuario;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.PageContext;
import models.UsuarioDao;

public class Controle extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");

        String flag = request.getParameter("flag");

        if (flag == null) {
            request.getRequestDispatcher("index.html").
                    forward(request, response);
        }

        // Verifica qual ação deve ser tomada
        switch (flag) {
            case "home":
                
                
                 // significa que o formulário foi preenchido e foi submetido ao Controle
                    // declara as variaveis string para receber os dados postados
                 
                    
                   Usuario usuario = new Usuario(); 
                       
                     usuario.setNome(request.getParameter("usuario"));
                     usuario.setSenha(request.getParameter("senha"));
                     
                    UsuarioDao usuarioDao = new UsuarioDao();
                    
                    
                    List<Usuario> ListaUsuario = usuarioDao.Pesquisar(usuario);
                            
              
                        if(ListaUsuario.isEmpty())
                        {
                          String erro = "Campos vazios ou inválidos!";
                        request.setAttribute("mensagem", erro);
                        request.getRequestDispatcher("views/erro.jsp").forward(request, response);
                        }
                        
                        int idUsuario=0;
                        int idPerfil =0;
                        String nome ="";
                        //jogar na sessao
                        for(Usuario teste:ListaUsuario)
                        {
                            idUsuario =teste.getIdUsuario();
                            idPerfil= teste.getIdPerfil();
                            nome = teste.getNome();
                        }
                        
                        
                        
                        if(idPerfil == 2){
                               // Redireciona para a View
                request.getRequestDispatcher("views/home.jsp").forward(request, response);

                            
                        }
                        else if(idPerfil == 1){
                            
                             // Redireciona para a View
                request.getRequestDispatcher("views/home.jsp").forward(request, response);
                            
                        }
                   

                break;

            case "perfil":

                // Redireciona para a View
                request.getRequestDispatcher("views/perfil.jsp").forward(request, response);

                break;

            case "administradora":

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

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Controle.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(Controle.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
