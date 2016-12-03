/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author ICE TI
 */
public class Aviso {
    
    private int idQuadroAviso;
    private String titulo;
    private String data;
    private String dataExp;
    private String mensagemAviso; 

    public int getIdQuadroAviso() {
        return idQuadroAviso;
    }

    public void setIdQuadroAviso(int idQuadroAviso) {
        this.idQuadroAviso = idQuadroAviso;
    }

   

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getDataExp() {
        return dataExp;
    }

    public void setDataExp(String dataExp) {
        this.dataExp = dataExp;
    }

    public String getMensagemAviso() {
        return mensagemAviso;
    }

    public void setMensagemAviso(String mensagemAviso) {
        this.mensagemAviso = mensagemAviso;
    }
    
}
