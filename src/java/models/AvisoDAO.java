/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import beans.Aviso;
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
public class AvisoDAO {

    private Connection con ;
    private String status;

    public AvisoDAO() throws SQLException {
        // retorna a con no momento da chamada da classe
//        this.con = Conexao.getInstance().getConnection();
    }

    public void Inserir(Aviso aviso) {

        if (con == null) {

            try {
                con = Conexao.getInstance().getConnection();
            } catch (SQLException ex) {
                System.out.println("Erro na pesquisa: " + ex.getMessage());
            }
        }

        try {
            String sql = "insert INTO tb_aviso (titulo, dataAviso, dataExp, mensagem) VALUES (?,?,?,?)";
            // seta os valores
            try (PreparedStatement ps = con.prepareStatement(sql)) {
                // seta os valores

                ps.setString(1, aviso.getTitulo());
                ps.setString(2, aviso.getData());
                ps.setString(3, aviso.getDataExp());
                ps.setString(4, aviso.getMensagemAviso());

                // executa o sql (execute) (quando necessita retorno em um resultSet)
                ps.execute();

                // fecha o statement
                ps.close();
            }

            //fecha a conexão
            con.close();

            // retorna o status da inserção
            status = "Inserido com Sucesso!";

        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao inserir aviso", ex);
        }
    }

    public List<Aviso> Pesquisar() throws SQLException {

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
        List<Aviso> listaAviso = new ArrayList();
        String sql = "SELECT * FROM tb_aviso";

        try {

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Aviso aviso = new Aviso();
                aviso.setIdQuadroAviso(rs.getInt("idQuadroAviso"));
                aviso.setTitulo(rs.getString("titulo"));
                aviso.setData(rs.getString("dataAviso"));
                aviso.setDataExp(rs.getString("dataExp"));
                aviso.setMensagemAviso(rs.getString("mensagem"));

                listaAviso.add(aviso);
            }

            return listaAviso;

        } catch (SQLException ex) {
            Logger.getLogger(AvisoDAO.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Erro: " + ex.getMessage(), ex);
        }
    }

    public void Salvar(Aviso aviso) throws SQLException {
        
                if (con == null) {

            try {
                con = Conexao.getInstance().getConnection();
            } catch (SQLException ex) {
                System.out.println("Erro na pesquisa: " + ex.getMessage());
            }
        }

        try {
            String sql = "UPDATE tb_aviso SET titulo=?, dataAviso=?, dataExp=?, mensagem=? WHERE idQuadroAviso = ?";

            PreparedStatement ps = con.prepareStatement(sql);

            //ResultSet rs = ps.executeQuery();

            ps.setString(1, aviso.getTitulo());
            ps.setString(2, aviso.getData());
            ps.setString(3, aviso.getDataExp());
            ps.setString(4, aviso.getMensagemAviso());
            ps.setInt(5, aviso.getIdQuadroAviso());

            System.out.println(aviso.getMensagemAviso());
            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(AvisoDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException(
                    "Erro ao atualizar aviso");
        }
    }
    
    
    public void excluir(Aviso aviso) {
        
         if (con == null) {

            try {
                con = Conexao.getInstance().getConnection();
            } catch (SQLException ex) {
                System.out.println("Erro na pesquisa: " + ex.getMessage());
            }
        }
        
        
        try {
            String sql = "DELETE FROM tb_aviso WHERE idQuadroAviso=?";
            // seta os valores
            try (PreparedStatement ps = con.prepareStatement(sql)) {
                
                ps.setInt(1, aviso.getIdQuadroAviso());

                ps.executeUpdate();
                ps.close();
            }

            con.close();

        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao excluir Usuario", ex);
        }
    }
}
    
    


