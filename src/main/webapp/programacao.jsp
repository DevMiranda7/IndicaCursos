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
                   <input type="text" name="pesquisa" placeholder="Pesquisar" id="Pesquisar" onkeyup="buscarCursos()" autocomplete="off" oninput="buscarCursosComDebounce()">
                   <div class="resultadoPesquisa"> <ul id="sugestoes" class="sugestoes-lista"></ul> </div>
               </div>

    <div class="subTitulo"><p>Top 6 cursos de programação </p></div>

    <section class="cursos">
            <div class="containnerCursos">
               <div class="TemaLinks">
                    <p class="temasCursos">Mobile</p>
                    <a href="https://www.youtube.com/watch?v=OGoB-Np2kmg&list=PLx4x_zx8csUhKFaIEC-3ODcoHUEqXjG73" target="_blank" class="CursosPopUp"><img src="resources/imgs/tecnologia.png" alt="Android"></a>
               </div>
               <div class="TemaLinks">
                    <p class="temasCursos">Java</p>
                    <a href="https://www.youtube.com/watch?v=sTX0UEplF54&list=PLHz_AreHm4dkI2ZdjTwZA4mPMxWTfNSpR" target="_blank" class="CursosPopUp"><img src="resources/imgs/java.png" alt="Java"></a>
                </div>
                <div class="TemaLinks">
                    <p class="temasCursos">Spring boot</p>
                    <a href="https://www.youtube.com/watch?v=nODe5lFcGpg&list=PLNCSWIsR6ADI_wMAx9F-Iu8Hs9HHxj4sb" target="_blank" class="CursosPopUp"><img src="resources/imgs/icons8-logotipo-da-primavera-32.png" alt="Spring boot"></a>
               </div>
               <div class="TemaLinks">
                    <p class="temasCursos">Front-end</p>
                    <a href="https://www.youtube.com/watch?v=Ejkb_YpuHWs&list=PLHz_AreHm4dkZ9-atkcmcBaMZdmLHft8n" target="_blank" class="CursosPopUp"><img src="resources/imgs/programacao-front-end.png" alt="Front-end" ></a>
                </div>
                <div class="TemaLinks">
                    <p class="temasCursos">Python</p>
                    <a href="https://www.youtube.com/watch?v=F608hzn_ygo" target="_blank" class="CursosPopUp"><img src="resources/imgs/icons8-python-24.png" alt="Python"></a>
               </div>
               <div class="TemaLinks">
                    <p class="temasCursos">Angular</p>
                    <a href="https://www.youtube.com/watch?v=VumdXFJ4n7o&list=PLNCSWIsR6ADJuQd4x6LVIC4VFMYArdg3M" target="_blank" class="CursosPopUp"><img src="resources/imgs/icons8-angular-24.png" alt="Angular"></a>
                </div>
            </div>
    </section>

    <div class="subTitulo"><p>Cursos Tech</p></div>

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

     <script src="resources/js/pesquisasCursos.js"></script>
</body>
</html>