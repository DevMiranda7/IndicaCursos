<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="resources/css/style.css">
        <title>Cursos</title>
    </head>
    <body>
        <div class="bodyFull">
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
            <div class="subTitulo"><p>Top 6 cursos mais avaliados</p></div>

            <section class="cursos">
                    <div class="containnerCursos">
                       <div class="TemaLinks">
                            <p class="temasCursos">Matemática</p>
                            <a href="https://www.youtube.com/playlist?list=PLTPg64KdGgYhYpS5nXdFgdqEZDOS5lARB" target="_blank"><img src="resources/imgs/matematica.png" alt="Matemática"></a>
                       </div>
                       <div class="TemaLinks">
                            <p class="temasCursos">Programação</p>
                            <a href="https://www.youtube.com/watch?v=sTX0UEplF54&list=PLHz_AreHm4dkI2ZdjTwZA4mPMxWTfNSpR" target="_blank"><img src="resources/imgs/java.png" alt="Programação"></a>
                        </div>
                        <div class="TemaLinks">
                            <p class="temasCursos">Investimentos</p>
                            <a href="https://www.youtube.com/playlist?list=PLSkeYJRHX0YkNgaaucf9J7hcuO08P0Xwq" target="_blank"><img src="resources/imgs/lucro-financeiro.png" alt="Investimentos"></a>
                       </div>
                       <div class="TemaLinks">
                            <p class="temasCursos">Designer</p>
                            <a href="https://www.youtube.com/playlist?list=PLgQ9cLrmRsTH8LvyiXfc1hnxldDMzU2bC" target="_blank"><img src="resources/imgs/designer-grafico.png" alt="designer-grafico"></a>
                        </div>
                        <div class="TemaLinks">
                            <p class="temasCursos">Inglês</p>
                            <a href="https://www.youtube.com/watch?v=X5TdMsc4YCg&list=PL41dMNqXopt85RhRgFp_jdoI5Bz7DUG-c" target="_blank"><img src="resources/imgs/aprendizagem-de-idiomas.png" alt="Idioma"></a>
                       </div>
                       <div class="TemaLinks">
                            <p class="temasCursos">Marketing</p>
                            <a href="https://www.youtube.com/watch?v=vqdnQqLgGRo&list=PLHz_AreHm4dmmqFmLT17KMjoaE0Y4LqRv" target="_blank"><img src="resources/imgs/midia-social.png" alt="Marketing"></a>
                        </div>
                    </div>
            </section>
            <div class="subTitulo" id="acheSeuCurso"><p>Ache seu curso</p></div>
            <section class="cursos-especificos">
                <div>
                    <a href="programacao" id="programcaoBotao" class="cursosEspecificos">Programação</a>
               </div>
                <div>
                    <a href="matematica" id="NegóciosBotao" class="cursosEspecificos" onclick="">Matemática</a>

                </div>
                <div>
                    <a href="financeiro" id="desenvolvimentoPessoalBotao" class="cursosEspecificos" onclick="">Finanças e Investimentos</a>

                </div>
                <div>
                    <a href="designer" id="DesignMultimidiaBotao" class="cursosEspecificos" onclick="">Design e Multimídia</a>
                </div>
                <div>
                    <a href="idiomas" id="idiomasBotao" class="cursosEspecificos" onclick="">Idiomas</a>
                </div>
                <div>
                    <a href="marketing" id="culinariaBotao" class="cursosEspecificos" onclick="">Marketing</a>
                </div>
            </section>

            <section class="visao-missao">
                <p id="missao-visao">Essa iniciativa é 100% gratuita, queremos proporcionar qualidade e educação a todos!</p>
            </section>
        </div>
</body>
</html>