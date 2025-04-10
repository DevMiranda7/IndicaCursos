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
            <form action="recoverPassword" method="post" class="forms">
                <div class="labelEmailSenha">
                    <label for="email" class="labelInputEmailSenha">Email</label>
                    <input type="email" id="email" name="Email" required placeholder="Ex: mariafernanda@endereço.com">
                </div>
                <button type="submit" id="enviar">Enviar</button>
            </form>
        </div>
    </main>
</body>
</html>