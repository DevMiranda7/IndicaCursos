package Controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import Model.Aluno;
import Model.Dao;

//rotas
@WebServlet(urlPatterns = {"/Controller","/main","/register","/login"})

public class Controller extends HttpServlet {

    // Opcional, HttpServlet já vem com essa configuração declarada internamente
    public static final long serialVersionUID = 1L;


    // Opcional, Java como padrão adiciona um construtor padrão
    public Controller(){
        super();
    }

    Aluno alunos = new Aluno();
    Dao banco = new Dao();


  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        String action = request.getServletPath();

        if(action.equals("/main")){
            PagBasicCursos(request,response);
        }
        else if(action.equals("/register")){
            createStudent(request,response);
        }
  }

  protected void PagBasicCursos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
      dispatcher.forward(request,response);
  }

  protected void createStudent(HttpServletRequest request, HttpServletResponse response) throws  ServletException, IOException{

      alunos.setNome(request.getParameter("Nome"));
      alunos.setEmail(request.getParameter("Email"));
      alunos.setSenha(request.getParameter("Senha"));

      banco.create(alunos);

      RequestDispatcher dispatcher = request.getRequestDispatcher("registro.html");
      dispatcher.forward(request,response);

  }


}
