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
            <div class="subTitulo"><p>Top 6 cursos mais avaliados</p></div>

            <section class="cursos">
                    <div class="containnerCursos">
                       <div class="TemaLinks">
                            <p class="temasCursos">Matemática</p>
                            <a href=""><img src="resources/imgs/matematica.png" alt="Matemática"></a>
                       </div>
                       <div class="TemaLinks">
                            <p class="temasCursos">Programação</p>
                            <a href=""><img src="resources/imgs/java.png" alt="Programação"></a>
                        </div>
                        <div class="TemaLinks">
                            <p class="temasCursos">Investimentos</p>
                            <a href=""><img src="resources/imgs/lucro-financeiro.png" alt="Investimentos"></a>
                       </div>
                       <div class="TemaLinks">
                            <p class="temasCursos">Designer</p>
                            <a href=""><img src="resources/imgs/designer-grafico.png" alt="designer-grafico"></a>
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
                    <Dialog id="modalProgramacao">
                        <ul>
                            <li>Introdução à Lógica de Programação</li>
                            <li>Algoritmos e Estruturas de Dados</li>
                            <li>Desenvolvimento Web (HTML, CSS, JavaScript)</li>
                            <li>Front-end com React.js, Vue.js ou Angular</li>
                            <li>Back-end com Node.js, Python (Django/Flask) ou Java (Spring Boot)</li>
                            <li>Desenvolvimento Mobile (Flutter, React Native, Kotlin)</li>
                        </ul>
                    </Dialog>
               </div>

                <div>
                    <button id="FinancasBotao" class="cursosEspecificos" onclick="">Finanças e Investimentos</button>
                    <Dialog id="modalFinancas">
                        <ul>
                            <li>Educação Financeira para Iniciantes</li>
                            <li>Investimentos na Bolsa de Valores</li>
                            <li>Fundamentos de Análise Técnica e Fundamentalista</li>
                            <li>Criptomoedas e Blockchain</li>
                            <li>Planejamento Financeiro Pessoal</li>
                            <li>Contabilidade para Empreendedores</li>
                        </ul>
                    </Dialog>
                </div>

                <div>
                    <button id="NegóciosBotao" class="cursosEspecificos" onclick="">Empreendedorismo e Negócios</button>
                    <Dialog id="modalNegócios">
                        <ul>
                            <li>Como Abrir um Negócio do Zero</li>
                            <li>Estratégias de Marketing Digital</li>
                            <li>Gestão de Projetos com Scrum e Kanban</li>
                            <li>Branding e Identidade Visual</li>
                            <li>Gestão de Tráfego Pago (Google Ads, Facebook Ads)</li>
                        </ul>
                    </Dialog>
                </div>

                <div>
                    <button id="desenvolvimentoPessoalBotao" class="cursosEspecificos" onclick="">Desenvolvimento Pessoal</button>
                    <Dialog id="modalDesenvolvimentoPessoal">
                        <ul>
                            <li>Técnicas de Produtividade e Gestão do Tempo</li>
                            <li>Oratória e Comunicação Eficiente</li>
                            <li>Inteligência Emocional e Resiliência</li>
                            <li>Mindfulness e Redução do Estresse</li>
                        </ul>
                    </Dialog>
                </div>

                <div>
                    <button id="DesignMultimidiaBotao" class="cursosEspecificos" onclick="">Design e Multimídia</button>
                    <Dialog id="modalDesignMultimidia">
                        <ul>
                            <li>Design Gráfico com Photoshop e Illustrator</li>
                            <li>Edição de Vídeo com Premiere e After Effects</li>
                            <li>UX/UI Design para Aplicações e Sites</li>
                            <li>Motion Design e Animação Digital</li>
                        </ul>
                    </Dialog>
                </div>

                <div>
                    <button id="idiomasBotao" class="cursosEspecificos" onclick="">Idiomas</button>
                    <Dialog id="modalIdiomas">
                        <ul>
                            <li>Inglês para Iniciantes, Intermediário e Avançado</li>
                            <li>Francês, Alemão e Japonês para Viagens</li>
                            <li>Espanhol do Básico ao Avançado</li>
                        </ul>
                    </Dialog>
                </div>

                <div>
                    <button id="culinariaBotao" class="cursosEspecificos" onclick="">Culinária</button>
                    <Dialog id="modalCulinaria">
                        <ul>
                            <li>Como Cozinhar Arroz, Feijão e Massas Perfeitas</li>
                            <li>Técnicas de Fritura, Assado, Grelhado e Cozimento</li>
                            <li>Cozinha Italiana (Massas, Risotos, Molhos)</li>
                            <li>Culinária Japonesa (Sushis, Sashimis, Lamen)</li>
                            <li>Cozinha Árabe (Esfihas, Kibes, Homus, Babaganoush)</li>
                            <li>Doces e Sobremesas Brasileiras</li>
                        </ul>
                    </Dialog>
                </div>
            </section>

            <section class="visao-missao">
                <p id="missao-visao">Essa iniciativa é 100% gratuita, queremos proporcionar qualidade e educação a todos!</p>
            </section>
        </div>
</body>
</html>