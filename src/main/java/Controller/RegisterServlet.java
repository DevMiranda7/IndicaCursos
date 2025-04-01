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
@WebServlet(urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {

    Dao banco = new Dao();
    Aluno aluno = new Aluno();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{

        String action = request.getServletPath();
        System.out.println("Acessando a URL da página de registro: "+action);
        PagRegisterAluno(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws  IOException, ServletException{

        String action = request.getServletPath();
        System.out.println("Enviando dados para o banco de dados usando doPost do endPoint:  "+action);
        RegistroAluno(request,response);
    }

    protected void PagRegisterAluno(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        RequestDispatcher dispatcher = request.getRequestDispatcher("registro.jsp");
        dispatcher.forward(request,response);

    }

    protected void RegistroAluno(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        aluno.setNome(request.getParameter("Nome"));
        aluno.setEmail(request.getParameter("Email"));
        aluno.setSenha(request.getParameter("Senha"));
        banco.create(aluno);
        response.sendRedirect("login.jsp");
    }



}
