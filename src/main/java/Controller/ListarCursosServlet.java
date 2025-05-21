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

@WebServlet(urlPatterns = {"/programacao","/matematica","/financeiro","/designer","/idiomas","/marketing"})
public class ListarCursosServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String caminho = request.getRequestURI();
        String tipoCurso = caminho.substring(caminho.lastIndexOf("/")+1);
        String categoria = "";
        switch (tipoCurso){
            case "programacao":
                categoria = "tecnologia";
                break;
            case "matematica":
                categoria = "matematica";
                break;
            case "financeiro":
                categoria = "financeiro";
                break;
            case "designer":
                categoria = "designer";
                break;
            case "idiomas":
                categoria = "idioma";
                break;
            case "marketing":
                categoria = "marketing";
                break;
        }

        Dao daoCurso = new Dao();

        ArrayList<Cursos> listarCursos = daoCurso.select(categoria);


        request.setAttribute("cursos", listarCursos);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher(tipoCurso +".jsp");
        requestDispatcher.forward(request, response);
    }


}
