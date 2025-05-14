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
                            <a href="matematica"><img src="resources/imgs/matematica.png" alt="Matemática"></a>
                       </div>
                       <div class="TemaLinks">
                            <p class="temasCursos">Programação</p>
                            <a href="programacao"><img src="resources/imgs/java.png" alt="Programação"></a>
                        </div>
                        <div class="TemaLinks">
                            <p class="temasCursos">Investimentos</p>
                            <a href="financeiro"><img src="resources/imgs/lucro-financeiro.png" alt="Investimentos"></a>
                       </div>
                       <div class="TemaLinks">
                            <p class="temasCursos">Designer</p>
                            <a href="designer"><img src="resources/imgs/designer-grafico.png" alt="designer-grafico"></a>
                        </div>
                        <div class="TemaLinks">
                            <p class="temasCursos">Inglês</p>
                            <a href=""><img src="resources/imgs/aprendizagem-de-idiomas.png" alt="Idioma"></a>
                       </div>
                       <div class="TemaLinks">
                            <p class="temasCursos">Marketing</p>
                            <a href=""><img src="resources/imgs/midia-social.png" alt="Marketing"></a>
                        </div>
                    </div>
            </section>
            <div class="subTitulo" id="acheSeuCurso"><p>Ache seu curso</p></div>
            <section class="cursos-especificos">
                <div>
                    <button id="programcaoBotao" class="cursosEspecificos" onclick="">Programação</button>
               </div>

                <div>
                    <button id="FinancasBotao" class="cursosEspecificos" onclick="">Finanças e Investimentos</button>
                </div>

                <div>
                    <button id="NegóciosBotao" class="cursosEspecificos" onclick="">Empreendedorismo e Negócios</button>
                </div>

                <div>
                    <button id="desenvolvimentoPessoalBotao" class="cursosEspecificos" onclick="">Desenvolvimento Pessoal</button>
                </div>

                <div>
                    <button id="DesignMultimidiaBotao" class="cursosEspecificos" onclick="">Design e Multimídia</button>
                </div>

                <div>
                    <button id="idiomasBotao" class="cursosEspecificos" onclick="">Idiomas</button>
                </div>

                <div>
                    <button id="culinariaBotao" class="cursosEspecificos" onclick="">Culinária</button>
                </div>
            </section>

            <section class="visao-missao">
                <p id="missao-visao">Essa iniciativa é 100% gratuita, queremos proporcionar qualidade e educação a todos!</p>
            </section>
        </div>
</body>
</html>