<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, Model.Cursos"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/style.css">
    <title>Programação</title>
</head>
<body class="programacao">
    <nav class="navegacao">
        <div class="redes-sociais">
            <a href="https://www.youtube.com/"><img src="resources/imgs/youtube.png" alt="Youtube"></a>
            <a href="https://www.linkedin.com/notifications/?filter=all"><img src="resources/imgs/linkedin.png" alt="Linkedin"></a>
            <a href="https://www.instagram.com/miranda.of7/"><img src="resources/imgs/instagram.png" alt="instagram"></a>
            <a href="https://www.tiktok.com"><img src="resources/imgs/tiktok.png" alt="tiktok"></a>
        </div>

         <div class="login-register-logout">
            <a href="logout" id="sing">Logout</a>
            <p><%= session.getAttribute("nomeDoUsuario")%></p>
         </div>
    </nav>

    <div class="campoDePesquisa">
        <input type="text" name="pesquisa" placeholder="Pesquisar" id="Pesquisar">
        <button onclick="pendente" id="lupaDePesquisa" ><img src="resources/imgs/lupa.png" alt="lupa"></button>
    </div>

    <div class="subTitulo"><p>Top 6 cursos de programação </p></div>

    <section class="cursos">
            <div class="containnerCursos">
               <div class="TemaLinks">
                    <p class="temasCursos">Mobile</p>
                    <a href="" class="CursosPopUp"><img src="resources/imgs/matematica.png" alt="Matemática"></a>
               </div>
               <div class="TemaLinks">
                    <p class="temasCursos">Java</p>
                    <a href="https://www.youtube.com/watch?v=sTX0UEplF54&list=PLHz_AreHm4dkI2ZdjTwZA4mPMxWTfNSpR" class="CursosPopUp"><img src="resources/imgs/java.png" alt="Programação"></a>
                </div>
                <div class="TemaLinks">
                    <p class="temasCursos">Spring boot</p>
                    <a href="login.jsp" class="CursosPopUp"><img src="resources/imgs/lucro-financeiro.png" alt="Investimentos"></a>
               </div>
               <div class="TemaLinks">
                    <p class="temasCursos">Front-end</p>
                    <a href="https://www.youtube.com/watch?v=Ejkb_YpuHWs&list=PLHz_AreHm4dkZ9-atkcmcBaMZdmLHft8n" class="CursosPopUp"><img src="resources/imgs/designer-grafico.png" alt="designer-grafico" ></a>
                </div>
                <div class="TemaLinks">
                    <p class="temasCursos">Python</p>
                    <a href="https://www.youtube.com/watch?v=F608hzn_ygo" class="CursosPopUp"><img src="resources/imgs/aprendizagem-de-idiomas.png" alt="Idioma"></a>
               </div>
               <div class="TemaLinks">
                    <p class="temasCursos">Angular</p>
                    <a href="login.jsp" class="CursosPopUp"><img src="resources/imgs/midia-social.png" alt="Marketing"></a>
                </div>
            </div>
    </section>

    <div class="subTitulo"><p>Cursos</p></div>

    <section class="NormalCursos">
        <%
            ArrayList<Cursos> cursos = (ArrayList<Cursos>) request.getAttribute("cursos");
            if(cursos != null && !cursos.isEmpty()){
                for(Cursos cursosGerais : cursos){
            %>
        <div class="cursosGeraisDeTech">
            <p class="cursoName"><strong><%= cursosGerais.getNomeDoCurso() %></strong></p>
            <p class="cursoDescricao"><%= cursosGerais.getDescricaoCurso() %></p>
            <p class="cursoAvaliacao">Avaliação: <%= cursosGerais.getAvaliacaoDoCurso() %></p>
            <p class="cursoLink"><a href="<%= cursosGerais.getUrlDoCurso() %>">Acesse o curso</a></p>
        </div>

        <%
            }
         }else{
        %>

        <p>Nenhum curso foi encontrado</p>
        <% } %>
    </section>

     <section class="visao-missao">
                    <p id="missao-visao">Essa iniciativa é 100% gratuita, queremos proporcionar qualidade e educação a todos!</p>
                </section>
</body>
</html>