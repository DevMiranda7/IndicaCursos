package Model;
//Entidade
public class Cursos {

    private String idCurso;
    private String nomeDoCurso;
    private String duracaoDoCurso;
    private String avaliacaoDoCurso;
    private String tipoDeCurso;
    private String urlDoCurso;

    public Cursos(String nomeDoCurso, String duracaoDoCurso, String avaliacaoDoCurso, String tipoDeCurso, String urlDoCurso){
        this.nomeDoCurso = nomeDoCurso;
        this.duracaoDoCurso = duracaoDoCurso;
        this.avaliacaoDoCurso = avaliacaoDoCurso;
        this.tipoDeCurso = tipoDeCurso;
        this.urlDoCurso = urlDoCurso;
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

    public String getDuracaoDoCurso(){
        return duracaoDoCurso;
    }

    public void setDuracaoDoCurso(String duracaoDoCurso){
        this.duracaoDoCurso = duracaoDoCurso;
    }

    public String getAvaliacaoDoCurso(){
        return avaliacaoDoCurso;
    }

    public void setAvaliacaoDoCurso(String avaliacaoDoCurso){
        this.avaliacaoDoCurso = avaliacaoDoCurso;
    }

    public String getTipoDeCurso(){
        return tipoDeCurso;
    }

    public void setTipoDeCurso(String tipoDeCurso){
        this.tipoDeCurso = tipoDeCurso;
    }

    public void setUrlDoCurso(String urlDoCurso){
        this.urlDoCurso = urlDoCurso;
    }



}
