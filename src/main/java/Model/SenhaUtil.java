package Model;

import org.mindrot.jbcrypt.BCrypt;

public class SenhaUtil {

    //Classe responsável pela criptografia de senha

    public String senhaCriptografar(String senha){

        return BCrypt.hashpw(senha, BCrypt.gensalt());
    }

    public boolean verificarSenha (String senha, String senhaCriptografada){
        return BCrypt.checkpw(senha,senhaCriptografada);
    }



}
