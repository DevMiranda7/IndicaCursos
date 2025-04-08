<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="resources/css/styleRecover.css">
    <title>Recuperar senha</title>
</head>
<body>
    <main>
        <div class="containner">
            <p id="titulo">Recuperar acesso</p>
            <img src="resources/imgs/recuperacao-de-conta.png" alt="monitor">
            <form action="updatePassword" method="post" class="forms">
                <div class="labelEmailSenha">
                    <label for="senha" class="labelInputEmailSenha">Senha</label>
                    <input type="password" id="senha" name="Senha" required placeholder="Nova senha">
                </div>
                <button type="submit" id="enviar">Enviar</button>
            </form>
        </div>
    </main>
</body>
</html>