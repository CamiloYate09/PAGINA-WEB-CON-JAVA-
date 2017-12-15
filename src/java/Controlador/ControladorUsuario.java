
package Controlador;

import Include.Usuario;
import modelo.ModeloUsuario;

/**
 *
 * @author Camilo, aldo y fabio parra
 */
public class ControladorUsuario {
    
    
    public boolean create(Usuario u){
    
        ModeloUsuario mu = new ModeloUsuario();
        
        return mu.crearUsuario(u);
        
    
    }
    
    public boolean validate(Usuario u){
        
        ModeloUsuario mu = new ModeloUsuario();
        return mu.autenticar(u);
    
    
    }
    
    
    public String getViewUser(Usuario u){
        String htmlcode = "";
        
        htmlcode += "<h1> Bienvenido   "+ u.getUsername()+"</h1>";
       
        ///AQUI SE VAN A PONER TODAS LAS OPCIONES DEL USUARIO YA INGRESADO A LA PLATAFORMA
        // AQUI TODO EL CODIGO HTML PARA EL CLIENTE ESTO ES MUY IMPORTANTE 
        htmlcode += "<div><a href='logout'> Cerrar sesion</a></div>";
        
        
        return htmlcode;
    
    
    }
    
    
    
}
