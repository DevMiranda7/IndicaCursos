package Model;

public class Aluno {

    private String idAluno;
    private String nome;
    private String email;
    private String senha;

    public Aluno( String nome, String email, String senha){
        this.nome = nome;
        this.email = email;
        this.senha = senha;
    }

    public Aluno( String idAluno, String nome){
        this.idAluno = idAluno;
        this.nome = nome;

    }

    public Aluno (){
        super();
    }

    public String getIdAluno() {
        return idAluno;
    }

    public void setIdAluno(String idAluno) {
        this.idAluno = idAluno;
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
}
