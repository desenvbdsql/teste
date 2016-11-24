package models;

import beans.AloSindico;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.Conexao;

/**
 *
 * @author luizo
 */
public class AloSindicoDAO {

    public AloSindicoDAO() {
    }

    private Connection con = null;

    public void Cadastrar(AloSindico aloSindico) {

        if (con == null) {

            try {
                con = Conexao.getInstance().getConnection();
            } catch (SQLException ex) {
                System.out.println("Erro na pesquisa: " + ex.getMessage());
            }
        }
        
        String sql = "INSERT INTO tb_alosindicomsg (assunto, data, mensagem, situacao)"
                + " VALUE (?,?,?,?)";

        try {
            // seta os valores
            try ( // prepared statement para insercao
                    PreparedStatement stmt = con.prepareStatement(sql)) {

                // pega a data atual
                java.sql.Date dataEnvio = new java.sql.Date(Calendar.getInstance().getTimeInMillis());

                stmt.setString(1, aloSindico.getAssunto());
                stmt.setDate(2, dataEnvio);
                stmt.setString(3, aloSindico.getMensagem());
                stmt.setString(4, aloSindico.getSituacao());

                stmt.execute();
                stmt.close();

            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        
    }

    public List<AloSindico> Listar() {

        if (con == null) {

            try {
                con = Conexao.getInstance().getConnection();
            } catch (SQLException ex) {
                System.out.println("Erro na pesquisa: " + ex.getMessage());
                return null;
            }
        }

        List<AloSindico> listaSindicoMSG = new ArrayList<>();
        String sql = "SELECT * FROM tb_alosindicomsg";

        try {
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            AloSindico sindicoMsg = new AloSindico();

            while (rs.next()) {
                sindicoMsg = new AloSindico();
                sindicoMsg.setIdMsg(rs.getInt("idMSG"));
                sindicoMsg.setAssunto(rs.getString("assunto"));
                Calendar data = Calendar.getInstance();
                data.setTime(rs.getDate("data"));
                sindicoMsg.setDataEnvio(data);
                sindicoMsg.setMensagem(rs.getString("mensagem"));
                sindicoMsg.setSituacao(rs.getString("situacao"));

                listaSindicoMSG.add(sindicoMsg);
            }
            return listaSindicoMSG;

        } catch (SQLException ex) {
            Logger.getLogger(AdministradoraDAO.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Falha ao listar mensagens", ex);
        }
    }

}
