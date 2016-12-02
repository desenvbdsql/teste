
package models;

import beans.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.Conexao;

public class UsuarioDao {

    private Connection con = null;

    public UsuarioDao() throws SQLException {
        // retorna a conexao no momento da chamada da classe
        this.con = Conexao.getInstance().getConnection();
    }
    
    public List<Usuario> pesquisaLogin(String name, String pwd) {
        List<Usuario> ListaUsuario = new ArrayList<>();
        String sql = "SELECT * FROM tb_Usuario WHERE nome = '" + name + "' AND senha = '" + pwd + "'";
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Usuario usuario = new Usuario();
                usuario.setIdUsuario(rs.getInt("idUsuario"));
                usuario.setIdPerfil(rs.getInt("idPerfil"));
                usuario.setNome(rs.getString("nome"));
                usuario.setEmail(rs.getString("email"));

                ListaUsuario.add(usuario);
                System.out.println(usuario.getNome());
            }
            
            rs.close();
            ps.close();
            
            return ListaUsuario;

        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Erro ao pesquisar usuário", ex);
        }
    }
    
    public List<Usuario> listar() {
        List<Usuario> listaUsuario = new ArrayList();
        String sql = "SELECT * FROM tb_Usuario ORDER BY idUsuario";
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Usuario usuario = new Usuario();
                usuario.setIdUsuario(rs.getInt("idUsuario"));
                usuario.setIdTorre(rs.getInt("idTorre"));
                usuario.setNome(rs.getString("nome"));
                usuario.setEmail(rs.getString("email"));
                usuario.setApto(rs.getString("apto"));

                listaUsuario.add(usuario);
            }
            
            rs.close();
            ps.close();
            
            return listaUsuario;

        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Erro ao pesquisar usuário", ex);
        }
    }
    
    public void excluir(Usuario usuario) {
        try {
            String sql = "DELETE FROM tb_usuario WHERE idUsuario=?";
            // seta os valores
            try (PreparedStatement ps = con.prepareStatement(sql)) {
                
                ps.setInt(1, usuario.getIdUsuario());

                ps.executeUpdate();
                ps.close();
            }

            con.close();

        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao excluir Usuario", ex);
        }
    }
    
    @SuppressWarnings("empty-statement")
    public void inserir(Usuario usuario) {
        try {
            String sql = "insert INTO tb_usuario (idPerfil, idTorre, nome, email, senha, apto) VALUES (?,?,?,?,?,?)";
            // seta os valores
            try (PreparedStatement ps = con.prepareStatement(sql)) {
                
                ps.setInt(1, usuario.getIdPerfil());
                ps.setInt(2, usuario.getIdTorre());
                ps.setString(3, usuario.getNome());
                ps.setString(4, usuario.getEmail());
                ps.setString(5, usuario.getSenha());
                ps.setString(6, usuario.getApto());

                ps.execute();
                ps.close();
            }

            con.close();

        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao inserir Usuario", ex);
        }
    }
    
    public void alterar(Usuario usuario) {
        
        String sql = "UPDATE tb_Usuario SET nome=?, email=?, apto=? WHERE idUsuario=?";

        try {
            try (PreparedStatement ps = con.prepareStatement(sql)) {
                ps.setString(1, usuario.getNome());
                ps.setString(2, usuario.getEmail());
                ps.setString(3, usuario.getApto());
                ps.setInt(4, usuario.getIdUsuario());
                
                ps.executeUpdate();
            }

        } catch (SQLException ex) {
            Logger.getLogger(SindicoDAO.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Erro ao atualizar Morador");
        }
    }

    public List<Usuario> Pesquisar(Usuario usuario) {
        List<Usuario> ListaUsuario = new ArrayList();
        String sql = "SELECT * FROM tb_Usuario WHERE nome = ? and senha = ?";

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, usuario.getNome());
            ps.setString(2, usuario.getSenha());

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                usuario = new Usuario();
                usuario.setIdUsuario(rs.getInt("idUsuario"));
                usuario.setIdPerfil(rs.getInt("idPerfil"));
                usuario.setNome(rs.getString("nome"));

                ListaUsuario.add(usuario);
            }
            return ListaUsuario;

        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Falha ao listar os Usuários", ex);
        }
    }

    public List<Usuario> recuperaSenha(Usuario usu) {
        List<Usuario> listaUsuario = new ArrayList<>();
        String sql = "SELECT * FROM tb_usuario WHERE apto = ?";

        try {

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, usu.getApto());
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                usu = new Usuario();
                usu.setApto(rs.getString("apto"));

                listaUsuario.add(usu);
            }
            return listaUsuario;

        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Falha ao listar os Usuários", ex);
        }
    }

    public void editarSenha(Usuario user) {
                
        String sql = "UPDATE tb_usuario SET senha=? WHERE apto=?";
        try {
            try (PreparedStatement ps = con.prepareStatement(sql)) {
                ps.setString(1, user.getSenha());
                ps.setString(2, user.getApto());

                ps.executeUpdate();
            }

        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDao.class
                    .getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException(
                    "Erro ao atualizar aluno");
        }
    }
}
