package Controller;

import Model.Cursos;
import Model.Dao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(urlPatterns = "/programacao")
public class ListarCursosServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {


        Dao daoCurso = new Dao();
        ArrayList<Cursos> listarCursos = daoCurso.select();


        request.setAttribute("cursos", listarCursos);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("programacao.jsp");
        requestDispatcher.forward(request, response);
    }


}
