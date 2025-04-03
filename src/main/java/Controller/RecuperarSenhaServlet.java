package Controller;

import Model.Aluno;
import Model.Dao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/recoverPassword")
public class RecuperarSenhaServlet extends HttpServlet {
    Dao banco = new Dao();
    Aluno aluno = new Aluno();
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        String action = request.getServletPath();
        System.out.println("Entrando em: "+action);
        PagRestorePassword(request,response);
    }


    public void doPost(HttpServletRequest request, HttpServletResponse response) throws  IOException, ServletException{
        String action = request.getServletPath();
        System.out.println("Entrando em: "+action);
        ConfirmarSeExiste(request,response);
    }


    public void PagRestorePassword(HttpServletRequest request, HttpServletResponse response) throws  IOException, ServletException{
        RequestDispatcher dispatcher = request.getRequestDispatcher("RecuperarSenha.jsp");
        dispatcher.forward(request,response);
    }

    // Reavaliar método
    public void ConfirmarSeExiste(HttpServletRequest request, HttpServletResponse response) throws  IOException, ServletException{
        String email = request.getParameter("Email");
        String senha = request.getParameter("Senha");

        if (email == null || senha == null || email.trim().isEmpty() || senha.trim().isEmpty()){
            response.sendRedirect("RecuperarSenha.jsp?erro");
            return;
        }

        if(!banco.verificarSeExiste(email)){
            response.sendRedirect("RecuperarSenha.jsp?Email_nao_encontrado");
            return;
        }

        aluno.setEmail(email);
        aluno.setSenha(senha);
        banco.RestaurarSenha(aluno);
        response.sendRedirect("login.jsp?SenhaAlterada");

    }
}
