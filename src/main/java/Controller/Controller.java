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

//rotas - endPoints
@WebServlet(urlPatterns = {"/Controller"})

public class Controller extends HttpServlet {

    // Opcional, HttpServlet já vem com essa configuração declarada internamente
    public static final long serialVersionUID = 1L;

    // Opcional, Java como padrão adiciona um construtor padrão
    public Controller(){
        super();
    }

//Método para  buscar informações no banco de dados ou carregar páginas html ou jsp
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        String action = request.getServletPath();

        //Página principal
        if(action.equals("/Controller")){
            secretPag(request,response);
        }
  }
  protected void secretPag(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("registro.jsp");
        requestDispatcher.forward(request,response);
  }
}
