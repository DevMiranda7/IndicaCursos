package Controller;

import Model.Aluno;
import Model.Dao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/updatePassword")
public class AtualizarSenhaServlet extends HttpServlet {
    Aluno aluno = new Aluno();
    Dao banco = new Dao();

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String action = request.getServletPath();
        System.out.println("Entranado no atualizar senha: "+action);
        PagMudarSenha(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String action = request.getServletPath();
        System.out.println("Enviado dados no atualizar senha: "+action);
        mudarSenha(request,response);
    }

    public void PagMudarSenha(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        RequestDispatcher dispatcher = request.getRequestDispatcher("MudarSenha.jsp");
        dispatcher.forward(request,response);
    }

    public void mudarSenha(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("EmailRecuperacao");
        String senha = request.getParameter("Senha");

        if(email == null || senha == null || senha.trim().isEmpty()){
            response.sendRedirect("RecuperarSenha.jsp?erro");
            return;
        }
        aluno.setSenha(senha);
        aluno.setEmail(email);
        banco.RestaurarSenha(aluno);

        session.removeAttribute("EmailRecuperacao");
        response.sendRedirect("login.jsp?SenhaAlterada");

    }
}
