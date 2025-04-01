<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="resources/css/style.css">
    <title>Login</title>
</head>
<body>
    <main class="mainLogin">
        <div class="EmailESenha">
            <div class="campos">
                <div class="titulo">
                <h1>Logando em Indica Cursos</h1>
                <img src="resources/imgs/login-da-conta-movel.png" alt="login" id="pranchetaIMG">
                </div>
                    <form action="login" method="post" class="loginForm">
                         <table>
                              <tr class="trTable">
                                  <td><input type="text" name="Email" id="email" placeholder="Email" required></td>
                             </tr>

                             <tr class="trTable">
                                  <td><input type="text" name="Senha" id="senha" placeholder="Senha" required></td>
                              </tr>
                         </table>
                        <input type="submit" value="Logar" id="botaoLogin">
                                <a href="RecuperarSenha.jsp">Esqueceu a senha?</a>

                        <table class="tabela2">
                            <tr><th>Crie sua conta</th></tr>
                            <tr><td><a href="registro.jsp">Cadastre-se</a></td></tr>
                        </table>
                    </form>
            </div>


        </div>
    </main>
</body>