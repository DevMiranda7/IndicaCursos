package Filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(urlPatterns = {"/logado.jsp","/programacao","/financeiro","/designer","/idiomas","/marketing"}) // Protege a página privada
public class AuthFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Método obrigatório, pode ficar vazio se não houver necessidade de inicialização
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        HttpSession session = req.getSession(false); // Obtém a sessão sem criar uma nova

        // Impede que o navegador armazene a página em cache
        res.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        res.setHeader("Pragma", "no-cache");
        res.setDateHeader("Expires", 0);

        // Se a sessão for nula ou não tiver usuário autenticado, redireciona para login
        if (session == null || session.getAttribute("usuario") == null) {
            res.sendRedirect("login.jsp?erro=nao_autorizado");
            return;
        }

        // Se a sessão for válida, continua o fluxo normal
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
        // Método obrigatório, pode ficar vazio se não houver necessidade de limpeza
    }
}
