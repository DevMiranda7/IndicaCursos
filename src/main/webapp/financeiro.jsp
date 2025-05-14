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

    <div class="subTitulo"><p>Top 6 cursos de finanças </p></div>

    <section class="cursos">
            <div class="containnerCursos">
               <div class="TemaLinks">
                    <p class="temasCursos">CPA-10</p>
                    <a href="https://www.youtube.com/playlist?list=PLSkeYJRHX0YkNgaaucf9J7hcuO08P0Xwq" target="_blank" class="CursosPopUp"><img src="resources/imgs/certificado_de_garantia.png" alt="CPA-10"></a>
               </div>
               <div class="TemaLinks">
                    <p class="temasCursos">CEA</p>
                    <a href="https://www.youtube.com/playlist?list=PLmO5ARsA96z3iDV8JnpBjinThFm2YWvJY" target="_blank" class="CursosPopUp"><img src="resources/imgs/certificado.png" alt="CEA"></a>
                </div>
                <div class="TemaLinks">
                    <p class="temasCursos">Finanças</p>
                    <a href="https://www.youtube.com/playlist?list=PLrnBMAxcC6QhlXvM1hzGTXdgPLme-ls8M" target="_blank" class="CursosPopUp"><img src="resources/imgs/financa.png" alt="Finanças"></a>
               </div>
               <div class="TemaLinks">
                    <p class="temasCursos">Investimentos</p>
                    <a href="https://www.youtube.com/playlist?list=PLMl5SicO7iPBJCO6neYAMHzD6A4N2obd8" target="_blank" class="CursosPopUp"><img src="resources/imgs/investindo.png" alt="Investimentos" ></a>
                </div>
                <div class="TemaLinks">
                    <p class="temasCursos">Criptomoedas</p>
                    <a href="https://www.youtube.com/playlist?list=PLBkmE8K0RM0stkjXnYgesj98sOwNL8iZj" target="_blank" class="CursosPopUp"><img src="resources/imgs/criptomoedas.png" alt="Criptomoedas"></a>
               </div>
               <div class="TemaLinks">
                    <p class="temasCursos">Matemática</p>
                    <a href="https://www.youtube.com/watch?v=dfs7VJotfks&list=PLX-4skTGVrWWTbH72P6u7d_VtgMcxk7dn" target="_blank" class="CursosPopUp"><img src="resources/imgs/taxadejuro.png" alt="Angular"></a>
                </div>
            </div>
    </section>

    <div class="subTitulo"><p>Cursos de finanças</p></div>

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