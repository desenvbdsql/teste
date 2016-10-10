
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
    
     public List<Usuario> Pesquisar(Usuario usuario) {
        List<Usuario> ListaUsuario = new ArrayList<>();
        String sql = "SELECT * FROM tb_Usuario WHERE nome = ? and senha = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, usuario.getNome());
            ps.setString(2, usuario.getSenha());
        

            ResultSet rs = ps.executeQuery();


            while (rs.next()) {
                usuario = new Usuario ();
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


    
    
    
    
}
