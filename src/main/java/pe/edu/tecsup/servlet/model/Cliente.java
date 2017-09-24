package pe.edu.tecsup.servlet.model;

public class Cliente {

    private int codigo;
    private String nombres;
    private String paterno;
    private String materno;

    public Cliente(int codigo, String nombres, String paterno, String materno) {
        this.codigo = codigo;
        this.nombres = nombres;
        this.paterno = paterno;
        this.materno = materno;
    }

    public Cliente() {
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getPaterno() {
        return paterno;
    }

    public void setPaterno(String paterno) {
        this.paterno = paterno;
    }

    public String getMaterno() {
        return materno;
    }

    public void setMaterno(String materno) {
        this.materno = materno;
    }

    public String getNombreCompleto() {
        return nombres + " " + paterno + " " + materno;
    }

}
