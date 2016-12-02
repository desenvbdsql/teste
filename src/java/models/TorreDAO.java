/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import beans.Torre;
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
public class TorreDAO {
    
    private Connection con = null;

    public TorreDAO() throws SQLException {
        // retorna a conexao no momento da chamada da classe
        this.con = Conexao.getInstance().getConnection();
    }
    
    public int pesquisaTorre(String torre) {
        //List<Torre> listaTorre = new ArrayList();
        int id = 0;
        String sql = "SELECT * FROM tb_torre WHERE torre = '" + torre + "'";
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            
            Torre tore = new Torre();
            while (rs.next()) {
                tore.setIdTorre(rs.getInt("idTorre"));
                tore.setTorre(rs.getString("torre"));
                //listaTorre.add(tore);
            }
            
            id = tore.getIdTorre();
            
            rs.close();
            ps.close();
            
            return id;

        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Erro ao pesquisar usuário", ex);
        }
    }
    
    public List<Torre> buscaTorre() {
        List<Torre> listaTorre = new ArrayList();
        String sql = "SELECT * FROM tb_torre ORDER BY idTorre";
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            
            Torre tore = new Torre();
            while (rs.next()) {
                tore.setIdTorre(rs.getInt("idTorre"));
                tore.setTorre(rs.getString("torre"));
                listaTorre.add(tore);
            }
            
            //listaTorre.add(tore);
            
            rs.close();
            ps.close();
            
            return listaTorre;

        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Erro ao pesquisar usuário", ex);
        }
    }
    
}
