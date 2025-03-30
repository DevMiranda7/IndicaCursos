package Model;

import java.sql.*;
import java.util.ArrayList;

// Atributos de conexão
public class Dao {
    private String user = "root";
    private String url = "jdbc:mysql://localhost:3306/indicaCursos?useTimezone=true&serverTimezone=UTC";
    private String password = "";
    private String Driver = "com.mysql.cj.jdbc.Driver";

    //Método de Conexão
    private Connection conexao(){
        Connection conn = null;

        try {
            Class.forName(Driver);

            conn = DriverManager.getConnection(url,user,password);

        }catch (ClassNotFoundException ex){
            System.out.println("Erro ao executar o driver: "+ex.getMessage());
        }catch (SQLException ex){
            System.out.println("Erro ao realizar login, user, senha ou url divergentes"+ex.getMessage());
        }

        return conn;
    }

    // Registro
    //Método para criar um novo aluno
    public void create(Aluno aluno){

        String insert = "insert into aluno (nome, email, senha) values (?,?,?)";
        //Novo objeto de senha para criptografar
        SenhaUtil senhaUtil = new SenhaUtil();

        //Criptografando
        String senhaCriptografada = senhaUtil.senhaCriptografar(aluno.getSenha());
        try {
            Connection conn = conexao();

            PreparedStatement querySql = conn.prepareStatement(insert);

            querySql.setString(1,aluno.getNome());
            querySql.setString(2,aluno.getEmail());
            querySql.setString(3,senhaCriptografada);

            querySql.executeUpdate();

            conn.close();
        }catch (SQLException ex){
            System.out.println("Erro ao executar o insert: "+ex.getMessage());

        }

    }

    //Login

    public String login(String email, String senha){
        String selectSQL = "select nome, senha from aluno where email = ?";

        try {
            Connection conn = conexao();

            PreparedStatement queryLoginSql = conn.prepareStatement(selectSQL);
            queryLoginSql.setString(1,email);
            ResultSet rs = queryLoginSql.executeQuery();

            if(rs.next()){
                String senhaBD = rs.getString("senha");
                String nomeBD = rs.getString("nome");
                SenhaUtil senhaUtil = new SenhaUtil();

                if(senhaUtil.verificarSenha(senha,senhaBD)){
                    return nomeBD;
                }
            }
        }catch (SQLException ex){
            System.out.println("Erro ao verificar as credenciais de login: "+ex.getMessage());
        }

        return null;
    }




    public ArrayList<Aluno> select(){
        ArrayList<Aluno> alunos = new ArrayList<>();

        String selectSQL = "select Id_aluno, nome from aluno order by nome";

        try{
            Connection conn = conexao();

            PreparedStatement querySql = conn.prepareStatement(selectSQL);

            ResultSet rd = querySql.executeQuery();

            while (rd.next()){
                String idAluno = rd.getString(1);
                String nome = rd.getString(2);

                alunos.add(new Aluno(idAluno,nome));



            }
            return alunos;
        }catch (SQLException ex){
            System.out.println("Erro ao executar o select: "+ex.getMessage());

            return null;
        }


    }


    public String verificarSeExiste(String email){
        String recoverSQL = "select from aluno where email = ?";
        try {
            Connection conn = conexao();
            PreparedStatement queryRecover = conn.prepareStatement(recoverSQL);
            queryRecover.setString(1,email);
            ResultSet rs = queryRecover.executeQuery();
            if(rs.next()){
                String emailBD = rs.getString("email");
                return emailBD;
            }


        }catch (SQLException ex){
            System.out.println("Erro ao tentar recuperar senha: "+ex.getMessage());
        }
        return null;
    }

//    public String mudarSenha(String){
//
//    }




    /*Atualizar*/
    /*Busca especifica*/
    /*Delete*/


}
