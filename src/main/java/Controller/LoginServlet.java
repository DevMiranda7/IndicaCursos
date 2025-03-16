package Controller;
import Model.Dao;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    Dao banco = new Dao();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        String action = request.getServletPath();
        System.out.println("Entrando no "+action);

        PagRegisterAluno(request,response);


    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
        String action = request.getServletPath();
        System.out.println("Entrando no "+action);
        LoginAluno(request,response);
    }

    protected void PagRegisterAluno(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
        dispatcher.forward(request,response);

    }

    protected void LoginAluno(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{

        String email = request.getParameter("Email");
        String senha = request.getParameter("Senha");
        String nome = banco.login(email,senha);

        if(nome == null){
            response.sendRedirect("Login.jsp?erro=true");
        }else {
            HttpSession session = request.getSession();
            session.setAttribute("usuario",email);
            session.setAttribute("nomeDoUsuario",nome);
            response.sendRedirect("logado.jsp");
        }


    }



}
