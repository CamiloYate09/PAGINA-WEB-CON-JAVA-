package modelo;

import Include.Encriptar;
import Include.Usuario;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Camilo
 */
public class ModeloUsuario extends Conexion {

    public boolean crearUsuario(Usuario u) {

        boolean flag = false;

        PreparedStatement pst = null;

        try {
            String sql = "call newUser(?,?,?,?)";
            pst = getConnection().prepareStatement(sql);
            pst.setString(1, u.getUsername());
            pst.setString(2, Encriptar.sha1(u.getPassword()));/// vamos a llamar la clase para que encripte la contraseña
            pst.setString(3, u.getEmail());
            pst.setString(4, u.getLast_session());

            if (pst.executeUpdate() == 1) {

                flag = true;

            }
        } catch (Exception e) {

            System.err.println(e.getMessage());
        } finally {

            try {
                if (getConnection() != null) {
                    getConnection().close();
                }
                if (pst != null) {
                    pst.close();
                }
            } catch (Exception e) {
            }

        }

        return flag;
    }

    //metodo para saber si el usuario esta en la base de datos
    public boolean autenticar(Usuario u) {
        boolean flag = false;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String sql = "call autenticar(?,?)";
            pst = getConnection().prepareStatement(sql);
            pst.setString(1, u.getUsername());
            pst.setString(2, Encriptar.sha1(u.getPassword()));
            rs = pst.executeQuery();
            if (rs.absolute(1)) {

                flag = true;

            }
        } catch (Exception e) {

            System.err.println(e.getMessage());
        } finally {

            try {

                if (getConnection() != null) {
                    getConnection().close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (rs != null) {
                    rs.close();
                }

            } catch (Exception e) {
            }

        }

        return flag;
    }

}
