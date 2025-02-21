package Model;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

// Conexao e querys
public class Dao {
    private String user = "root";
    private String url = "jdbc:mysql://localhost:3306/indicaCursos?useTimezone=true&serverTimezone=UTC";
    private String password = "1234";
    private String Driver = "com.mysql.cj.jdbc.Driver";


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

    public void create(Aluno aluno){

        String insert = "insert into aluno (nome, email, senha) values (?,?,?)";

        try {
            Connection conn = conexao();

            PreparedStatement querySql = conn.prepareStatement(insert);

            querySql.setString(1,aluno.getNome());
            querySql.setString(2,aluno.getEmail());
            querySql.setString(3,aluno.getSenha());

            querySql.executeUpdate();

            conn.close();
        }catch (SQLException ex){
            System.out.println("Erro ao executar o insert: "+ex.getMessage());
        }

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

    /*Atualizar*/
    /*Busca especifica*/
    /*Delete*/


}
