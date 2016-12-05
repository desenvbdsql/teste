/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlers;

import beans.Assembleia;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.AssembleiaDAO;

/**
 *
 * @author ICE TI
 */
public class AssembleiaServ extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        
         String flag = request.getParameter("flag");
        
        switch (flag) {
            
            
            case "Salvar":
                
            String titulo = request.getParameter("titulo");
            String horario = request.getParameter("horario");
            String dataAssembleia = request.getParameter("dataAssembleia");
            String ordem = request.getParameter("ordem");
            String local = request.getParameter("local");

            ArrayList<Assembleia> listaAssembleia = new ArrayList<>();

            Assembleia assembleia = new Assembleia();
            assembleia.setTitulo(titulo);
            assembleia.setHorario(horario);
            assembleia.setData(dataAssembleia);
            assembleia.setOrdem(ordem);
            assembleia.setLocal(local);

            AssembleiaDAO assembleiaDAO = new AssembleiaDAO();
            assembleiaDAO.Inserir(assembleia);

            listaAssembleia.add(assembleia);

            request.setAttribute("listaAviso", listaAssembleia);

            request.getRequestDispatcher("views/viewSindico/assembleia.jsp").forward(request, response);
            
            break;

            case "Editar":
                
                
                int id =(Integer.parseInt(request.getParameter("idAssembleia")));
                String tituloEdit = request.getParameter("titulo");
                String horarioEdit = request.getParameter("horario");
                String dataEdit = request.getParameter("dataAssembleia");
                String ordemEdit = request.getParameter("ordem");
                String localEdit = request.getParameter("local");

                 assembleia = new Assembleia();
                
                assembleia.setIdAssembleia(id);
                assembleia.setTitulo(tituloEdit);
                assembleia.setHorario(horarioEdit);
                assembleia.setData(dataEdit);
                assembleia.setOrdem(ordemEdit);
                assembleia.setLocal(localEdit);

               assembleiaDAO = new AssembleiaDAO();
               assembleiaDAO.Salvar(assembleia);
    

                request.getRequestDispatcher("views/viewSindico/assembleia.jsp").forward(request, response);
                
                
                 break;
                 
                case "Excluir":
                    
                assembleiaDAO = new AssembleiaDAO();
                assembleia = new Assembleia();
                assembleia.setIdAssembleia(Integer.parseInt(request.getParameter("idAssembleia")));
                assembleiaDAO.excluir(assembleia);              
                request.getRequestDispatcher("views/viewSindico/assembleia.jsp").forward(request, response);
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
            Logger.getLogger(AssembleiaServ.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(AssembleiaServ.class.getName()).log(Level.SEVERE, null, ex);
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
