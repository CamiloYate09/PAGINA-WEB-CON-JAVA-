/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Include;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Camilo
 */
public class Usuario {

    private String username;
    private String password;
    private String email;
    private String last_session;

    /**
     * @param username
     * @param password
     * @param email
     */
    public Usuario(String username, String password, String email) {
        this.username = username;
        this.password = password;
        this.email = email;
        //this.last_session = last_session;
        //fecha en que el usuario se registro 
        Date d = new Date();
        SimpleDateFormat adf = new SimpleDateFormat("yy-MM-dd hh:mm:ss");
        this.last_session = adf.format(d);
    }

    // ESTE CONTRUCTOR ES PARA EL SERVLET DE LOGIN
    public Usuario(String username, String password) {
        this.username = username;
        this.password = password;

    }

    //CONTRUCTOR PARA LA VISTA YA INGRESADO EL CLIENTE
    public Usuario(String username) {
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the last_session
     */
    public String getLast_session() {
        return last_session;
    }

    /**
     * @param last_session the last_session to set
     */
    public void setLast_session(String last_session) {
        this.last_session = last_session;
    }

}
