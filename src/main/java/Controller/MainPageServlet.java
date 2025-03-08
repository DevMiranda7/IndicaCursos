package Controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class MainPageServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session = request.getSession(false);

        if(session == null || session.getAttribute("usuario")== null){
            response.sendRedirect("login.jsp");
        }else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("logado.jsp");
            dispatcher.forward(request,response);
        }
    }
}
