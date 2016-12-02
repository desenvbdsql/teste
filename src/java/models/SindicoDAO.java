package models;

import beans.Sindico;
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
 * @author luizo
 */
public class SindicoDAO {

    private Connection con = null;

    public SindicoDAO() throws SQLException {
        // retorna a conexao no momento da chamada da classe
        this.con = Conexao.getInstance().getConnection();
    }

    public void editarSenha(Sindico sindico) {

        String sql = "UPDATE tb_sindico SET senha=? WHERE nome=?";

        try {
            try (PreparedStatement ps = con.prepareStatement(sql)) {
                ps.setString(1, sindico.getSenha());
                ps.setString(2, sindico.getNome());

                ps.executeUpdate();
            }

        } catch (SQLException ex) {
            Logger.getLogger(SindicoDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException(
                    "Erro ao atualizar sindico");
        }
    }

}
