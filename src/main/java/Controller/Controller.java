package Controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import Model.Aluno;
import Model.Dao;

//rotas - endPoints
@WebServlet(urlPatterns = {"/Controller","/main","/register","/login"})

public class Controller extends HttpServlet {

    // Opcional, HttpServlet já vem com essa configuração declarada internamente
    public static final long serialVersionUID = 1L;


    // Opcional, Java como padrão adiciona um construtor padrão
    public Controller(){
        super();
    }
    // Criando objetos globais
    Aluno alunos = new Aluno();
    Dao banco = new Dao();

//Método para  buscar informações no banco de dados ou carregar páginas html ou jsp
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        String action = request.getServletPath();

        //Página principal
        if(action.equals("/main")){
            PagBasicCursos(request,response);
        }
        //Pagina de registro - apenas exibição
        else if(action.equals("/register")){
            pagRegisterAluno(request,response);

        }
        //Pagina de login - apenas exibição
        else if(action.equals("/login")){
            pagLoginAluno(request,response);
        }
  }

        //Método de envio de dados, nesse não há exibição de dados na URL
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String action = request.getServletPath();

        if(action.equals("/login")){
            loginAluno(request,response);
        }else if(action.equals("/register")){
            createStudent(request,response);
        }
    }
        //Método que exibe a pagina principal
  protected void PagBasicCursos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

       RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
       dispatcher.forward(request,response);
  }
        //Método que exibe a pagina de registro
  protected void pagRegisterAluno(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("registro.jsp");
        requestDispatcher.forward(request,response);
  }
        //Método que executa de forma correta o registro do aluno
  protected void createStudent(HttpServletRequest request, HttpServletResponse response) throws IOException{

      alunos.setNome(request.getParameter("Nome"));
      alunos.setEmail(request.getParameter("Email"));
      alunos.setSenha(request.getParameter("Senha"));
      banco.create(alunos);
      response.sendRedirect("login.jsp");
  }


        //Método que exibe a pagina de Login
    protected void pagLoginAluno(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("login.jsp");
        requestDispatcher.forward(request,response);
    }
        //Método que executa de forma segura o login do aluno
  protected void loginAluno(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String email = request.getParameter("Email");
        String senha = request.getParameter("Senha");
        String nome = banco.login(email, senha);

        //Caso seja true esse trecho de codigo é responsavél por iniciar a sessão de login e redicionar o usuário para outra página
        if(nome != null){
            HttpSession session = request.getSession();
            session.setAttribute("usuario",email);
            session.setAttribute("nomeDoUsuario",nome);
            response.sendRedirect("logado.jsp");
        }else{
            response.sendRedirect("login.jsp?erro=true");
        }
    }


}
