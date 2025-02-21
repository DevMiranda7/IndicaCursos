function criar(){

    let nome = CadastroAluno.Nome.value;
    let email = CadastroAluno.Email.value;
    let senha = CadastroAluno.Senha.value;

    if(nome == ""){
        window.alert("Nome inválido, tente novamente!");
        return false;
    }
    else if(!email.includes("@")){
        window.alert("Email inválido, tente novamente ou use outro endereço de email!")
        return false;
    }
    else if(senha.length < 5){
        window.alert("Senha inválida, tente novamente!")
        return false;
    }
    else{
        window.alert("Registro concluído!");
        document.forms["CadastroAluno"].submit();
    }

}