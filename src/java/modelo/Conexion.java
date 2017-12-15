package modelo;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * CONEXION A LA BASE DE DATOS
 *
 * @author Camilo
 */
public class Conexion {

    private String username = "root";
    private String password = "root";// contraseña de la base de datos
    private String hostname = "127.0.0.1"; //"localhost:8080";
    private String port = "3306"; //puerto de mysql
    private String database = "loginjspajax"; // el nombre de la base de datos 
    private String classname = "com.mysql.jdbc.Driver"; // el diver de conexion de mysql 
    private String url = "jdbc:mysql://" + hostname + ":" + port + "/" + database;
    private Connection conn;

    public Conexion() {

        try {
            Class.forName(classname);
            conn = DriverManager.getConnection(url, username, password);

        } catch (Exception e) {

            System.err.println(e.getMessage());
        }

    }

    public Connection getConnection() {
        return this.conn;
    }

}
