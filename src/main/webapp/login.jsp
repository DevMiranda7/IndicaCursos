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
                <div class="titulo"><h1>Login</h1></div>
                    <form action="login" method="post" class="loginForm">
                         <table>
                              <tr>
                                  <td><input type="text" name="Email" id="email" placeholder="Email" required></td>
                             </tr>

                             <tr>
                                  <td><input type="text" name="Senha" id="senha" placeholder="Senha" required></td>
                              </tr>
                         </table>
                        <input type="submit" value="Logar" id="botaoLogin">
                                <a href="">Esqueceu a senha?</a>

                        <table class="tabela2">
                            <tr><th>Crie sua conta</th></tr>
                            <tr><td><a href="registro.html">Cadastre-se</a></td></tr>
                        </table>
                    </form>
            </div>


        </div>
    </main>
</body>