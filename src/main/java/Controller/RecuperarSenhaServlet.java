package Controller;

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

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        String action = request.getServletPath();
        System.out.println("Entrando em: "+action);
        PagRestorePassword(request,response);
    }


    public void doPost(HttpServletRequest request, HttpServletResponse response) throws  IOException, ServletException{
        String action = request.getServletPath();
        System.out.println("Entrando em: "+action);
        RestaurarSenha(request,response);
    }


    public void PagRestorePassword(HttpServletRequest request, HttpServletResponse response) throws  IOException, ServletException{
        RequestDispatcher dispatcher = request.getRequestDispatcher("RecuperarSenha.jsp");
        dispatcher.forward(request,response);
    }

    // Reavaliar método
    public void RestaurarSenha(HttpServletRequest request, HttpServletResponse response) throws  IOException, ServletException{
        String email = request.getParameter("Email");
        String emailExists  = banco.verificarSeExiste(email);

        if(emailExists  == null){
            response.sendRedirect("RecuperarSenha.jsp?erro=true");
        }
        else{

        }
    }
}
