<%@ page language = "java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import= "java.util.*, Model.Cursos"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/style.css">
    <title>Matemática</title>
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

    <div class="subTitulo"><p>Top 6 cursos de Matemática </p></div>

    <section class="cursos">
            <div class="containnerCursos">
               <div class="TemaLinks">
                    <p class="temasCursos">Básica</p>
                    <a href="https://www.youtube.com/playlist?list=PLTPg64KdGgYhYpS5nXdFgdqEZDOS5lARB" target="_blank" class="CursosPopUp"><img src="resources/imgs/matematica (2).png" alt="Básica"></a>
               </div>
               <div class="TemaLinks">
                    <p class="temasCursos">Avançada</p>
                    <a href="https://www.youtube.com/playlist?list=PLTtZUJqLYbCl7DF5-pl4ya-Gd434Lme0q" target="_blank" class="CursosPopUp"><img src="resources/imgs/matematica (1).png" alt="Avançada"></a>
                </div>
                <div class="TemaLinks">
                    <p class="temasCursos">Logaritmo</p>
                    <a href="https://www.youtube.com/playlist?list=PLGyv8aUrOlzA9SnHx_PAGmbvfsCcGslnt" target="_blank" class="CursosPopUp"><img src="resources/imgs/logaritmo.png" alt="Logaritmo"></a>
               </div>
               <div class="TemaLinks">
                    <p class="temasCursos">Cálculo 1</p>
                    <a href="https://www.youtube.com/playlist?list=PLEfwqyY2ox86LhxKybOY3_IG-7R5herLC" target="_blank" class="CursosPopUp"><img src="resources/imgs/calculadora.png" alt="Cálculo 1" ></a>
                </div>
                <div class="TemaLinks">
                    <p class="temasCursos">Cálculo 2</p>
                    <a href="https://www.youtube.com/playlist?list=PLrOyM49ctTx9EGYGvXS6KVA9aoB3P4lJD" target="_blank" class="CursosPopUp"><img src="resources/imgs/integral-dupla.png" alt="Cálculo 2"></a>
               </div>
               <div class="TemaLinks">
                    <p class="temasCursos">Enem</p>
                    <a href="https://www.youtube.com/playlist?list=PL8Sb1J47vKz5roPScagXaUkk-maGYZy4c" target="_blank" class="CursosPopUp"><img src="resources/imgs/livro-de-matematica.png" alt="ENEM"></a>
                </div>
            </div>
    </section>
    <div class="subTitulo"><p>Cursos de Matemática</p></div>

      <section class="NormalCursos">
      <%
         ArrayList<Cursos> cursos = (ArrayList<Cursos>) request.getAttribute("cursos");
         if(cursos != null && !cursos.isEmpty()){
            for(Cursos cursosGerais : cursos){
      %>
      <div class="cursosGeraisDeTech">
            <p class="cursoName"><strong><%= cursosGerais.getNomeDoCurso() %></strong></p>
            <p class="cursoDescricao"><%= cursosGerais.getDescricaoCurso() %> </p>
            <p class="cursoAvaliacao">Avaliação: <%= cursosGerais.getAvaliacaoDoCurso() %> </p>
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