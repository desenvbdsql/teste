/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import beans.Assembleia;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.Conexao;

/**
 *
 * @author ICE TI
 */
public class AssembleiaDAO {
    
    
        private Connection con ;
      
    
    
    public void Inserir(Assembleia assembleia) {

        if (con == null) {

            try {
                con = Conexao.getInstance().getConnection();
            } catch (SQLException ex) {
                System.out.println("Erro na pesquisa: " + ex.getMessage());
            }
        }

        try {
            String sql = "insert INTO tb_assembleia (titulo, horario, dataAssembleia, ordem, local) VALUES (?,?,?,?,?)";
            // seta os valores
            try (PreparedStatement ps = con.prepareStatement(sql)) {
                // seta os valores

                ps.setString(1, assembleia.getTitulo());
                ps.setString(2, assembleia.getHorario());
                ps.setString(3, assembleia.getData());
                ps.setString(4, assembleia.getOrdem());
                ps.setString(5, assembleia.getLocal());

                // executa o sql (execute) (quando necessita retorno em um resultSet)
                ps.execute();

                // fecha o statement
                ps.close();
            }

            //fecha a conexão
            con.close();

           
        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao inserir assembleia", ex);
        }
    }
    
    
    public List<Assembleia> Pesquisar() throws SQLException {

   

        if (con == null) {

            try {
                con = Conexao.getInstance().getConnection();
            } catch (SQLException ex) {
                System.out.println("Erro na pesquisa: " + ex.getMessage());
                return null;
            }
        }
        List<Assembleia> listaAssembleia = new ArrayList();
        String sql = "SELECT * FROM tb_assembleia";

        try {

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Assembleia assembleia = new Assembleia();
                assembleia.setIdAssembleia(rs.getInt("idAssembleia"));
                assembleia.setTitulo(rs.getString("titulo"));
                assembleia.setHorario(rs.getString("horario"));
                assembleia.setData(rs.getString("dataAssembleia"));
                assembleia.setOrdem(rs.getString("ordem"));
                assembleia.setLocal(rs.getString("local"));

                listaAssembleia.add(assembleia);
            }

            return listaAssembleia;

        } catch (SQLException ex) {
            Logger.getLogger(AvisoDAO.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Erro: " + ex.getMessage(), ex);
        }
    }
    
    
    public List<Assembleia> PesquisarAssembleia(String idAssembleia) throws SQLException {

        if (con == null) {

            try {
                con = Conexao.getInstance().getConnection();
            } catch (SQLException ex) {
                System.out.println("Erro na pesquisa: " + ex.getMessage());
                return null;
            }
        }

        if (con == null) {

            try {
                con = Conexao.getInstance().getConnection();
            } catch (SQLException ex) {
                System.out.println("Erro na pesquisa: " + ex.getMessage());
                return null;
            }
        }
        List<Assembleia> listaAssembleia = new ArrayList();
        String sql = "SELECT * FROM tb_assembleia where idAssembleia= '"+idAssembleia+"'";
                
        try {

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Assembleia assembleia = new Assembleia();
                assembleia.setIdAssembleia(rs.getInt("idAssembleia"));
                assembleia.setTitulo(rs.getString("titulo"));
                assembleia.setHorario(rs.getString("horario"));
                assembleia.setData(rs.getString("dataAssembleia"));
                assembleia.setOrdem(rs.getString("ordem"));
                assembleia.setLocal(rs.getString("local"));
                listaAssembleia.add(assembleia);
            }

            return listaAssembleia;

        } catch (SQLException ex) {
            Logger.getLogger(AvisoDAO.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Erro: " + ex.getMessage(), ex);
        }
    }
    
    
    public void Salvar(Assembleia assembleia) throws SQLException {
        
             if (con == null) {

            try {
                con = Conexao.getInstance().getConnection();
            } catch (SQLException ex) {
                System.out.println("Erro na pesquisa: " + ex.getMessage());
            }
        }

        try {
            String sql = "UPDATE tb_assembleia SET titulo=?, horario=?, dataAssembleia=?, ordem=?, local=? WHERE idAssembleia = ?";

            PreparedStatement ps = con.prepareStatement(sql);

            //ResultSet rs = ps.executeQuery();

            ps.setString(1, assembleia.getTitulo());
            ps.setString(2, assembleia.getHorario());
            ps.setString(3, assembleia.getData());
            ps.setString(4, assembleia.getOrdem());
            ps.setString(5, assembleia.getLocal());
            ps.setInt(6, assembleia.getIdAssembleia());

           
            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(AssembleiaDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException(
                    "Erro ao atualizar aviso");
        }
    }
    
    
        public void excluir(Assembleia assembleia) {
        
         if (con == null) {

            try {
                con = Conexao.getInstance().getConnection();
            } catch (SQLException ex) {
                System.out.println("Erro na pesquisa: " + ex.getMessage());
            }
        }
        
        
        try {
            String sql = "DELETE FROM tb_assembleia WHERE IdAssembleia=?";
            // seta os valores
            try (PreparedStatement ps = con.prepareStatement(sql)) {
                
                ps.setInt(1, assembleia.getIdAssembleia());

                ps.executeUpdate();
                ps.close();
            }

            con.close();

        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao excluir Assembleia", ex);
        }
    }
    
    
    
}
