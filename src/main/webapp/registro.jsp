<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="resources/css/style.css">
    <title>Registro</title>
</head>
<body class="registroBody">
<main class="mainRegister">
    <div class="EmailESenha">
        <div class="campos">
            <div class="titulo">
                <h1>Registro em Indica Cursos</h1>
                <img src="resources/imgs/registro-online.png" alt="prancheta" id="pranchetaIMG">
            </div>
            <form name = "CadastroAluno" action="register" method="POST" class="RegisterForm" onsubmit="return criar()">
                <table>
                    <tr class="trTable">
                        <td><input type="text" name="Nome" id="nome" placeholder="Nome" required></td>
                    </tr>

                    <tr class="trTable">
                        <td><input type="email" name="Email" id="email" placeholder="Email" required></td>
                    </tr>

                    <tr class="trTable">
                        <td><input type="password" name="Senha" id="senha" placeholder="Senha" required></td>
                    </tr>
                </table>
                <input type="submit" value="Registrar" id="botaoRegister">


                <table class="tabela3">
                    <tr><th>Já possui uma conta?</th></tr>
                    <tr><td><a href="login.jsp">Login</a></td></tr>
                </table>
            </form>
        </div>
    </div>
</main>

<script src="resources/js/registrar.js"></script>
</body>
</html>