package models;

import beans.Administradora;
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
public class AdministradoraDAO {

    private Connection con = null;

    public AdministradoraDAO() throws SQLException {
        // retorna a conexao no momento da chamada da classe
//        this.con = Conexao.getInstance().getConnection();
    }

    public List<Administradora> Pesquisar() {

        if (con == null) {

            try {
                con = Conexao.getInstance().getConnection();
            } catch (SQLException ex) {
                System.out.println("Erro na pesquisa: " + ex.getMessage());
                return null;
            }
        }

        List<Administradora> ListaAdministradora = new ArrayList<>();
        String sql = "SELECT * FROM tb_Administradora";

        try {
            PreparedStatement ps = con.prepareStatement(sql);
//            ps.setString(1, usuario.getNome());
//            ps.setString(2, usuario.getSenha());

            ResultSet rs = ps.executeQuery();
//            Administradora administradora = new Administradora();

            while (rs.next()) {
                Administradora administradora = new Administradora();
                administradora.setNome(rs.getString("nome"));
                administradora.setServico(rs.getString("servico"));
                administradora.setContato(rs.getString("contato"));
                administradora.setTelefone(rs.getInt("telefone"));
                administradora.setEmail(rs.getString("email"));
                administradora.setEndereco(rs.getString("endereco"));

                ListaAdministradora.add(administradora);
            }
            return ListaAdministradora;

        } catch (SQLException ex) {
            Logger.getLogger(AdministradoraDAO.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Falha ao listar a Administradora", ex);
        }
    }

}
