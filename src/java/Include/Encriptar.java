/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Include;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 *ESTA CLASE AL SER INSTANCIADA INMEDIATAMENTE LA CONTRSEÑA DEL USUARIO
 * QUEDA ENCRIPTADA LA CONTRASEÑA EN LA BASE DE DATOS 
 * @author Camilo
 */
public class Encriptar {

    public static String sha1(String input) throws NoSuchAlgorithmException {
        MessageDigest mDigest = MessageDigest.getInstance("SHA1");
        byte[] result = mDigest.digest(input.getBytes());
       
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < result.length; i++) {
            sb.append(Integer.toString((result[i] & 0xff) + 0x100, 16).substring(1));
        }

        return sb.toString();
    }

}
