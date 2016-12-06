/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import beans.OcorrenciaMorador;
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
 * @author Rangel
 */
public class OcorrenciaDAO {

    private Connection con = null;

    public OcorrenciaDAO() throws SQLException {
        // retorna a conexao no momento da chamada da classe
        this.con = Conexao.getInstance().getConnection();
    }

    public void cadastrarOcorrencia(OcorrenciaMorador ocorrenciaMorador) {
        String sql = "INSERT INTO tb_ocorrencia (tipoOcorrencia, dataOcorrencia, tituloOcorrencia, ocorrencia, statusOcorrencia, idUsuario,chaveOcorrencia) VALUES (?,?,?,?,?,?,?)";

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, ocorrenciaMorador.getTipoOcorrencia());
            ps.setString(2, ocorrenciaMorador.getDataOcorrencia());
            ps.setString(3, ocorrenciaMorador.getTituloOcorrencia());
            ps.setString(4, ocorrenciaMorador.getOcorrencia());
            ps.setString(5, ocorrenciaMorador.getStatusOcorrencia());
            ps.setInt(6, ocorrenciaMorador.getIdUsuario());
            ps.setString(7,ocorrenciaMorador.getChaveOcorrencia());
            
            ps.execute();
            ps.close();
            
            con.close();

        } catch (SQLException ex) {
            Logger.getLogger(OcorrenciaDAO.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Erro ao tentar cadastrar Ocorrencia", ex);
        }
    }
    
    public List<OcorrenciaMorador> listarOcorrencias() {
        List<OcorrenciaMorador> listaOcorrencia = new ArrayList();
          String sql =  "SELECT * FROM tb_ocorrencia WHERE  idOcorrencia IN (SELECT MIN(idOcorrencia) FROM tb_ocorrencia GROUP BY chaveOcorrencia)";
        
        //String sql = "SELECT * FROM tb_ocorrencia ORDER BY idOcorrencia";
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                OcorrenciaMorador ocorrenciaM = new OcorrenciaMorador();
                ocorrenciaM.setIdOcorrencia(rs.getInt("idOcorrencia"));
                ocorrenciaM.setTipoOcorrencia(rs.getString("tipoOcorrencia"));
                ocorrenciaM.setDataOcorrencia(rs.getString("dataOcorrencia"));
                ocorrenciaM.setTituloOcorrencia(rs.getString("tituloOcorrencia"));
                ocorrenciaM.setOcorrencia(rs.getString("ocorrencia"));
                ocorrenciaM.setStatusOcorrencia(rs.getString("statusOcorrencia"));
                ocorrenciaM.setIdUsuario(rs.getInt("idUsuario"));

                listaOcorrencia.add(ocorrenciaM);
            }
            
            rs.close();
            ps.close();
            con.close();
            
            return listaOcorrencia;

        } catch (SQLException ex) {
            Logger.getLogger(OcorrenciaDAO.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Erro ao listar Ocorrencias", ex);
        }
    }
    
     public List<OcorrenciaMorador> listarOcorrencias(String idUsuario) {
        List<OcorrenciaMorador> listaOcorrencia = new ArrayList();
        
        //String sql = "SELECT * FROM tb_ocorrencia WHERE idUsuario = '"+idUsuario+"' ORDER BY idOcorrencia";
        
        String sql =  "SELECT * FROM tb_ocorrencia WHERE idUsuario = '"+ idUsuario + "' AND idOcorrencia IN (SELECT MIN(idOcorrencia) FROM tb_ocorrencia WHERE idUsuario = '"+ idUsuario + "' GROUP BY chaveOcorrencia)";
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                OcorrenciaMorador ocorrenciaM = new OcorrenciaMorador();
                ocorrenciaM.setIdOcorrencia(rs.getInt("idOcorrencia"));
                ocorrenciaM.setTipoOcorrencia(rs.getString("tipoOcorrencia"));
                ocorrenciaM.setDataOcorrencia(rs.getString("dataOcorrencia"));
                ocorrenciaM.setTituloOcorrencia(rs.getString("tituloOcorrencia"));
                ocorrenciaM.setOcorrencia(rs.getString("ocorrencia"));
                ocorrenciaM.setStatusOcorrencia(rs.getString("statusOcorrencia"));
                ocorrenciaM.setIdUsuario(rs.getInt("idUsuario"));
ocorrenciaM.setChaveOcorrencia(rs.getString("chaveOcorrencia"));
                
                
                listaOcorrencia.add(ocorrenciaM);
            }
            
            rs.close();
            ps.close();
            con.close();
            
            return listaOcorrencia;

        } catch (SQLException ex) {
            Logger.getLogger(OcorrenciaDAO.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Erro ao listar Ocorrencias", ex);
        }
    }
     
     public List<OcorrenciaMorador> listarOcorrenciasCompleta(String chaveOcorrencia) {
        List<OcorrenciaMorador> listaOcorrencia = new ArrayList();
                
        String sql = "SELECT O.idOcorrencia, O.idUsuario,O.tipoOcorrencia,O.statusOcorrencia, U.nome, O.dataOcorrencia, O.tituloOcorrencia, O.ocorrencia, O.chaveOcorrencia FROM tb_ocorrencia O INNER JOIN tb_Usuario U ON O.idUsuario = U.idUsuario WHERE O.chaveOcorrencia = '"+chaveOcorrencia+"' ORDER BY O.idOcorrencia";
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                OcorrenciaMorador ocorrenciaM = new OcorrenciaMorador();
                ocorrenciaM.setIdOcorrencia(rs.getInt("idOcorrencia"));
                ocorrenciaM.setTipoOcorrencia(rs.getString("tipoOcorrencia"));
                ocorrenciaM.setDataOcorrencia(rs.getString("dataOcorrencia"));
                ocorrenciaM.setTituloOcorrencia(rs.getString("tituloOcorrencia"));
                ocorrenciaM.setOcorrencia(rs.getString("ocorrencia"));
                ocorrenciaM.setStatusOcorrencia(rs.getString("statusOcorrencia"));
                ocorrenciaM.setIdUsuario(rs.getInt("idUsuario"));
                ocorrenciaM.setNomeMorador(rs.getString("nome"));
ocorrenciaM.setChaveOcorrencia(rs.getString("chaveOcorrencia"));

listaOcorrencia.add(ocorrenciaM);
            }
            
            rs.close();
            ps.close();
            con.close();
            
            return listaOcorrencia;

        } catch (SQLException ex) {
            Logger.getLogger(OcorrenciaDAO.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Erro ao listar Ocorrencias", ex);
        }
    }
     
     
    
    public void alterarOcorrencia(OcorrenciaMorador ocorrenciaM) {
        
        String sql = "UPDATE tb_ocorrencia SET tituloOcorrencia=? WHERE idOcorrencia=?";

        try {
            PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, ocorrenciaM.getTituloOcorrencia());
                ps.setInt(2, ocorrenciaM.getIdOcorrencia());
                
                ps.executeUpdate();
                ps.close();

        } catch (SQLException ex) {
            Logger.getLogger(OcorrenciaDAO.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Erro ao atualizar Ocorrencia");
        }
    }
    
    public void excluirOcorrencia(OcorrenciaMorador ocorrenciaM) {
        try {
            String sql = "DELETE FROM tb_ocorrencia WHERE idOcorrencia=?";
            // seta os valores
            try (PreparedStatement ps = con.prepareStatement(sql)) {
                
                ps.setInt(1, ocorrenciaM.getIdOcorrencia());

                ps.executeUpdate();
                ps.close();
            }

            con.close();

        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao excluir Ocorrncia", ex);
        }
    }
    
}
