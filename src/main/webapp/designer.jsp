<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, Model.Cursos"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/style.css">
    <title>Finanças</title>
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

    <div class="subTitulo"><p>Top 6 cursos de Designer </p></div>

    <section class="cursos">
            <div class="containnerCursos">
               <div class="TemaLinks">
                    <p class="temasCursos">Canva</p>
                    <a href="https://www.youtube.com/playlist?list=PLgQ9cLrmRsTH8LvyiXfc1hnxldDMzU2bC" target="_blank" class="CursosPopUp"><img src="resources/imgs/canva.png" alt="Canva"></a>
               </div>
               <div class="TemaLinks">
                    <p class="temasCursos">Designer com IA</p>
                    <a href="https://www.youtube.com/watch?v=ffR663Hv10o" target="_blank" class="CursosPopUp"><img src="resources/imgs/IA.png" alt="Designer com IA"></a>
                </div>
                <div class="TemaLinks">
                    <p class="temasCursos">Web Designer</p>
                    <a href="https://www.youtube.com/watch?v=_UEdm9GLDkk" target="_blank" class="CursosPopUp"><img src="resources/imgs/webDesig.png" alt="Web Designer"></a>
               </div>
               <div class="TemaLinks">
                    <p class="temasCursos">Designer Advanced </p>
                    <a href="https://www.youtube.com/playlist?list=PLlSoD8PAohqSxr1GardoHDXh0o43bfOXm" target="_blank" class="CursosPopUp"><img src="resources/imgs/deesigner.png" alt="Designer Gráfico avançado" ></a>
                </div>
                <div class="TemaLinks">
                    <p class="temasCursos">Designer completo</p>
                    <a href="https://www.youtube.com/playlist?list=PLfY4aYg9e-lOWLv47lEDXBSb54JkADMa2" target="_blank" class="CursosPopUp"><img src="resources/imgs/designerCompleto.png" alt="Designer completo"></a>
               </div>
               <div class="TemaLinks">
                    <p class="temasCursos">Figma</p>
                    <a href="https://www.youtube.com/watch?v=-wMGaO283Cw&list=PL2b2uvKR5s-Hx3byi3qZY_HhPPw9U0e6x" target="_blank" class="CursosPopUp"><img src="resources/imgs/figma.png" alt="Figma"></a>
                </div>
            </div>
    </section>

    <div class="subTitulo"><p>Cursos de Designer</p></div>

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