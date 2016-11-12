
package beans;

import java.util.Calendar;

/**
 *
 * @author luizo
 */
public class AloSindico {
    
    private String assunto;
    private Calendar dataEnvio;
    private String situacao;

    public AloSindico() {
        
    }
    
    public String getAssunto() {
        return assunto;
    }

    public void setAssunto(String assunto) {
        this.assunto = assunto;
    }

    public Calendar getDataEnvio() {
        return dataEnvio;
    }

    public void setDataEnvio(Calendar dataEnvio) {
        this.dataEnvio = dataEnvio;
    }

    public String getSituacao() {
        return situacao;
    }

    public void setSituacao(String situacao) {
        this.situacao = situacao;
    }
    
}
