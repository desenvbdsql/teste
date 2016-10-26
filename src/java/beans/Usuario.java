package beans;

/**
 *
 * @author Douglas
 */
public class Usuario {

    private int idUsuario;
    private int idPerfil;
    private String nome;
    private String email;
    private String senha;
    private int apto;

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public int getIdPerfil() {
        return idPerfil;
    }

    public void setIdPerfil(int idPerfil) {
        this.idPerfil = idPerfil;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public int getApto() {
        return apto;
    }

    public void setApto(int apto) {
        this.apto = apto;
    }

}
