
package models;

import beans.AloSindico;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import utils.Conexao;

/**
 *
 * @author luizo
 */
public class AloSindicoDAO {

    public AloSindicoDAO() {
    }
    
    private Connection con = null;
    
    public List<AloSindico> Cadastrar(AloSindico aloSindico) {
        
        if (con == null) {

            try {
                con = Conexao.getInstance().getConnection();
            } catch (SQLException ex) {
                System.out.println("Erro na pesquisa: " + ex.getMessage());
                return null;
            }
        }
        
    }
    
}
