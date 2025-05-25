<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="resources/css/style.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
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
                    <a href="login" id="sing">Login</a>
                    <a href="register" id="sing">Register</a>
                </div>
            </nav>

            <div class="campoDePesquisa">
                            <input type="text" name="pesquisa" placeholder="Pesquisar" id="Pesquisar" onkeyup="buscarCursos()" autocomplete="off" oninput="buscarCursosComDebounce()">
                            <div class="resultadoPesquisa"> <ul id="sugestoes" class="sugestoes-lista"></ul> </div>
                        </div>
            <div class="subTitulo"><p>Top 6 cursos mais avaliados</p></div>

            <section class="cursos">
                    <div class="containnerCursos">
                       <div class="TemaLinks">
                            <p class="temasCursos">Matemática</p>
                            <a href="login.jsp" class="CursosPopUp"><img src="resources/imgs/matematica.png" alt="Matemática"></a>
                       </div>
                       <div class="TemaLinks">
                            <p class="temasCursos">Programação</p>
                            <a href="login.jsp" class="CursosPopUp"><img src="resources/imgs/java.png" alt="Programação"></a>
                        </div>
                        <div class="TemaLinks">
                            <p class="temasCursos">Investimentos</p>
                            <a href="login.jsp" class="CursosPopUp"><img src="resources/imgs/lucro-financeiro.png" alt="Investimentos"></a>
                       </div>
                       <div class="TemaLinks">
                            <p class="temasCursos">Designer</p>
                            <a href="login.jsp" class="CursosPopUp"><img src="resources/imgs/designer-grafico.png" alt="designer-grafico" ></a>
                        </div>
                        <div class="TemaLinks">
                            <p class="temasCursos">Inglês</p>
                            <a href="login.jsp" class="CursosPopUp"><img src="resources/imgs/aprendizagem-de-idiomas.png" alt="Idioma"></a>
                       </div>
                       <div class="TemaLinks">
                            <p class="temasCursos">Marketing</p>
                            <a href="login.jsp" class="CursosPopUp"><img src="resources/imgs/midia-social.png" alt="Marketing"></a>
                        </div>
                    </div>
            </section>
            <div class="subTitulo" id="acheSeuCurso"><p>Ache seu curso</p></div>
            <section class="cursos-especificos">
                            <div>
                                <a href="" id="programcaoBotao" class="cursosEspecificos">Programação</a>
                           </div>
                            <div>
                                <a href="" id="NegóciosBotao" class="cursosEspecificos" onclick="">Matemática</a>

                            </div>
                            <div>
                                <a href="" id="desenvolvimentoPessoalBotao" class="cursosEspecificos" onclick="">Finanças e Investimentos</a>

                            </div>
                            <div>
                                <a href="" id="DesignMultimidiaBotao" class="cursosEspecificos" onclick="">Design e Multimídia</a>
                            </div>
                            <div>
                                <a href="" id="idiomasBotao" class="cursosEspecificos" onclick="">Idiomas</a>
                            </div>
                            <div>
                                <a href="" id="culinariaBotao" class="cursosEspecificos" onclick="">Marketing</a>
                            </div>
                        </section>

            <section class="visao-missao">
                <p id="missao-visao">Essa iniciativa é 100% gratuita, queremos proporcionar qualidade e educação a todos!</p>
            </section>

            <%-- Pop-Ups --%>
            <script>
                 document.querySelectorAll('.CursosPopUp, .cursosEspecificos').forEach(function(element) {
                     element.addEventListener('click', function(event) {
                         event.preventDefault(); // Impede a ação padrão do link

                         Swal.fire({
                             title: 'Atenção!',
                             text: 'Você precisa fazer login para acessar esta área.',
                             icon: 'warning',
                             confirmButtonText: 'Entendi',
                             backdrop: false,  // Configura o SweetAlert para não afetar o layout
                              customClass: {
                                       title: 'fontePersonalizada',
                                       popup: 'fontePersonalizada',
                                       confirmButton: 'fontePersonalizada'
                                     }
                         });
                     });
                 });

            </script>
        </div>
</body>
</html>