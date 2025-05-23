package Filter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.Filter;
import java.util.logging.LogRecord;

@WebFilter(urlPatterns = {"/programacao.jsp","/matematica.jsp","/financeiro.jsp","/designer.jsp","/idiomas.jsp","/marketing.jsp"})
public class BlockAcessoFilter implements Filter {

    @Override
    public void init(javax.servlet.FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException{
        HttpServletResponse res = (HttpServletResponse) response;

        res.sendRedirect("logado.jsp?erro=nao_autorizado");
    }

    @Override
    public void destroy() {

    }


}
