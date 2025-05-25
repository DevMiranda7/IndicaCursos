<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, Model.Cursos"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/style.css">
    <title>Marketing</title>
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

    <div class="subTitulo"><p>Top 6 cursos de Marketing </p></div>

    <section class="cursos">
            <div class="containnerCursos">
               <div class="TemaLinks">
                    <p class="temasCursos">Marketing Digital</p>
                    <a href="https://www.youtube.com/watch?v=vqdnQqLgGRo&list=PLHz_AreHm4dmmqFmLT17KMjoaE0Y4LqRv" target="_blank" class="CursosPopUp"><img src="resources/imgs/midiasociall.png" alt="Marketing digital"></a>
               </div>
               <div class="TemaLinks">
                    <p class="temasCursos">Marketing Digital</p>
                    <a href="https://www.youtube.com/watch?v=emtfheMpOkU&list=PL-QAz5R5Rlm7cFW_3DNEYf94dp69hcjqj" target="_blank" class="CursosPopUp"><img src="resources/imgs/comece.png" alt="Marketing digital"></a>
                </div>
                <div class="TemaLinks">
                    <p class="temasCursos">Marketing <br>-Vendas-</p>
                    <a href="https://www.youtube.com/watch?v=lQV5myhSqCs&list=PLUkv8hZ8kunVjEKfgPdLQlD_Nk1vdILgq" target="_blank" class="CursosPopUp"><img src="resources/imgs/campanhaDigital.png" alt="Marketing & Vendas"></a>
               </div>
               <div class="TemaLinks">
                    <p class="temasCursos">Marketing Completo</p>
                    <a href="https://www.youtube.com/watch?v=MQDUUodMfCQ&list=PLDolWZnVdBr1gR-ZLKFenvOzb9LGmpaA6" target="_blank" class="CursosPopUp"><img src="resources/imgs/marketing.png" alt="Marketing Completo" ></a>
                </div>
                <div class="TemaLinks">
                    <p class="temasCursos">Marketing Iniciantes</p>
                    <a href="https://www.youtube.com/watch?v=k-v7B5AUBBk&list=PLltHgIJnfTsDk6zVD5lj0Qv4Jkb8geWuF" target="_blank" class="CursosPopUp"><img src="resources/imgs/marketing1.png" alt="Marketing para iniciantes"></a>
               </div>
               <div class="TemaLinks">
                    <p class="temasCursos">Marketing Avançado</p>
                    <a href="https://www.youtube.com/watch?v=frnzIDoSSds&list=PLVUwQqh7LJ6vrxhXDk73K89yH2uG1RfQ2" target="_blank" class="CursosPopUp"><img src="resources/imgs/midia.png" alt="Marketing avançado"></a>
                </div>
            </div>
    </section>

    <div class="subTitulo"><p>Cursos de Marketing</p></div>

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