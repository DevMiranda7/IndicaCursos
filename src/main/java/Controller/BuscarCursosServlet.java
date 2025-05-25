package Controller;

import Model.Cursos;
import Model.Dao;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
@WebServlet("/buscar-cursos")
public class BuscarCursosServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        Dao cursoDao = new Dao();

        String termo = request.getParameter("termo");
        ArrayList<Cursos> cursos  = cursoDao.pesquisarCursos(termo);

        Gson gson = new Gson();
        String json = gson.toJson(cursos);

        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        response.getWriter().write(json);

    }
}
