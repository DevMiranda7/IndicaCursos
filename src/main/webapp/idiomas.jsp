<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, Model.Cursos"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/style.css">
    <title>Idiomas</title>
</head>
<body class="cursosIndica">
    <nav class="navegacao">
        <div class="redes-sociais">
            <a href="https://www.youtube.com/" target="_blank"><img src="resources/imgs/youtube.png" alt="Youtube"></a>
            <a href="https://www.linkedin.com/notifications/?filter=all" target="_blank"><img src="resources/imgs/linkedin.png" alt="Linkedin"></a>
            <a href="https://www.instagram.com/miranda.of7/" target="_blank"><img src="resources/imgs/instagram.png" alt="instagram"></a>
            <a href="https://www.tiktok.com" target="_blank"><img src="resources/imgs/tiktok.png" alt="tiktok"></a>
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

    <div class="subTitulo"><p>Top 6 cursos de Idiomas </p></div>

    <section class="cursos">
            <div class="containnerCursos">
               <div class="TemaLinks">
                    <p class="temasCursos">Inglês</p>
                    <a href="https://www.youtube.com/watch?v=X5TdMsc4YCg&list=PL41dMNqXopt85RhRgFp_jdoI5Bz7DUG-c" target="_blank" class="CursosPopUp"><img src="resources/imgs/ingles.png" alt="Inglês"></a>
               </div>
               <div class="TemaLinks">
                    <p class="temasCursos">Espanhol</p>
                    <a href="https://www.youtube.com/watch?v=LlzhuO8Mg5Q&list=PLlSAkdWPPRKqIR-cefw1Tv84XklkcX3TP" target="_blank" class="CursosPopUp"><img src="resources/imgs/espanhol.png" alt="Espanhol"></a>
                </div>
                <div class="TemaLinks">
                    <p class="temasCursos">Francês</p>
                    <a href="https://www.youtube.com/watch?v=Om2350h2i0U&list=PL8vXuI6zmpdjMJ8vl4UYi87aMREaYPi2c" target="_blank" class="CursosPopUp"><img src="resources/imgs/torre-eiffel.png" alt="Francês"></a>
               </div>
               <div class="TemaLinks">
                    <p class="temasCursos">Italiano</p>
                    <a href="https://www.youtube.com/watch?v=awNNmnbvYo8&list=PL8vXuI6zmpdiakr88rpa5cMApzxO5Baau" target="_blank" class="CursosPopUp"><img src="resources/imgs/italia.png" alt="Italiano" ></a>
                </div>
                <div class="TemaLinks">
                    <p class="temasCursos">Russo</p>
                    <a href="https://www.youtube.com/watch?v=gkUf4O0kh5E&list=PL9TfT4ODX9jH1t-gGO67vbiMdQ20ntiGv" target="_blank" class="CursosPopUp"><img src="resources/imgs/russia.png" alt="Russo"></a>
               </div>
               <div class="TemaLinks">
                    <p class="temasCursos">Árabe</p>
                    <a href="https://www.youtube.com/watch?v=-wMGaO283Cw&list=PL2b2uvKR5s-Hx3byi3qZY_HhPPw9U0e6x" target="_blank" class="CursosPopUp"><img src="resources/imgs/camelo.png" alt="árabe"></a>
                </div>
            </div>
    </section>

    <div class="subTitulo"><p>Cursos de Idiomas</p></div>

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
            <p class="cursoLink"><a href="<%= cursosGerais.getUrlDoCurso() %>" target="_blank">Acesse o curso</a></p>
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