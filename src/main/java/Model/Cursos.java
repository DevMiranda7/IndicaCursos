package Model;
//Entidade
public class Cursos {

    private String idCurso;
    private String nomeDoCurso;
    private Double avaliacaoDoCurso;
    private String descricaoCurso;
    private String urlDoCurso;

    public Cursos(String nomeDoCurso, Double avaliacaoDoCurso, String urlDoCurso,String descricaoCurso){
        this.nomeDoCurso = nomeDoCurso;
        this.descricaoCurso = descricaoCurso;
        this.avaliacaoDoCurso = avaliacaoDoCurso;
        this.urlDoCurso = urlDoCurso;
    }

    public Cursos(String cursos){
        this.nomeDoCurso = cursos;
    }

    public Cursos(){
        super();
    }


    //Metodos getters e setters

    public String getIdCurso(){
        return idCurso;
    }

    public void setIdCurso(String idCurso){
        this.idCurso = idCurso;
    }

    public String getNomeDoCurso(){
        return nomeDoCurso;
    }

    public void setNomeDoCurso(String nomeDoCurso){
        this.nomeDoCurso = nomeDoCurso;
    }

    public Double getAvaliacaoDoCurso(){
        return avaliacaoDoCurso;
    }

    public void setAvaliacaoDoCurso(Double avaliacaoDoCurso){
        this.avaliacaoDoCurso = avaliacaoDoCurso;
    }

    public void setUrlDoCurso(String urlDoCurso){
        this.urlDoCurso = urlDoCurso;
    }

    public String getUrlDoCurso(){
        return urlDoCurso;
    }

    public void setDescricaoCurso(String descricaoCurso){
        this.descricaoCurso = descricaoCurso;
    }

    public String getDescricaoCurso(){
        return descricaoCurso;
    }





}
