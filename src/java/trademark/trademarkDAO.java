/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package trademark;

import com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException;
import com.mysql.jdbc.exceptions.MySQLSyntaxErrorException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import user.UserBean;

/**
 *
 * @author Joseph
 */
public class trademarkDAO {

    private Connection conexion;

    public trademarkDAO() {
    }

    public Connection getConexion() {
        return conexion;
    }

    public void setConexion(Connection conexion) {
        this.conexion = conexion;
    }

    public Collection<trademarkBean> getAll() throws SQLException {
        PreparedStatement sentence = null;
        ResultSet result = null;

        Collection<trademarkBean> list = new ArrayList<trademarkBean>();

        try {
            String sql = "select * from marca";
            sentence = conexion.prepareStatement(sql);
            result = sentence.executeQuery();

            while (result.next()) {
                trademarkBean reg = new trademarkBean();

                reg.setIdTrademark(result.getInt("id_marca"));
                reg.setTrademarkName(result.getString("nombre_marca"));

                list.add(reg);
            }
        } catch (MySQLSyntaxErrorException ex) {
            System.out.println("Error de sintaxis en trademarkDAO, getAll() : " + ex);
            throw new RuntimeException("MySQL Syntax Exception en trademarkDAO, getAll() : " + ex);
        } catch (MySQLIntegrityConstraintViolationException ex) {
            System.out.println("MySQL Excepción de integridad en UserDAO, getAll() : " + ex);
            throw new RuntimeException("MySQL Excepción de integridad en UserDAO, getAll() : " + ex);
        } catch (SQLException ex) {
            System.out.println("MySQL Excepción inesperada en UserDAO, getAll() : " + ex);
            throw new RuntimeException("MySQL Excepción inesperada en UserDAO, getAll() : " + ex);
        } finally {
            /* liberar los recursos */
            try {
                result.close();
            } catch (Exception noGestionar) {
            }
            try {
                sentence.close();
            } catch (Exception noGestionar) {
            }
        }
        return list;
    }

    public trademarkBean findById(int id) {
        PreparedStatement sentence = null;
        ResultSet result = null;

        trademarkBean reg = null;

        try {
            String sql = "select * from marca where id_marca = ? ";

            sentence = conexion.prepareStatement(sql);

            sentence.setInt(1, id);

            result = sentence.executeQuery();

            while (result.next()) {
                reg = new trademarkBean();

                reg.setIdTrademark(result.getInt("id_marca"));
                reg.setTrademarkName(result.getNString("nombre_marca"));
            }
        } catch (MySQLSyntaxErrorException ex) {
            System.out.println("Error de sintaxis en trademarkDAO, findById() : " + ex);
            throw new RuntimeException("MySQL Syntax Exception en trademarkDAO, findById() : " + ex);
        } catch (MySQLIntegrityConstraintViolationException ex) {
            System.out.println("MySQL Excepción de integridad en UserDAO, findById() : " + ex);
            throw new RuntimeException("MySQL Excepción de integridad en UserDAO, findById() : " + ex);
        } catch (SQLException ex) {
            System.out.println("MySQL Excepción inesperada en UserDAO, findById() : " + ex);
            throw new RuntimeException("MySQL Excepción inesperada en UserDAO, findById() : " + ex);
        } finally {
            /* liberar recursos */
            try {
                result.close();
            } catch (Exception noGestionar) {
            }
            try {
                sentence.close();
            } catch (Exception noGestionar) {
            }
        }
        return reg;
    }

    public boolean validateDuplicateTrademarkname(trademarkBean reg) {
        PreparedStatement sentence = null;
        ResultSet result = null;

        boolean find = false;

        try {
            String sql = "select * from marca where id_marca <> ? and nombre_marca = ? ";

            sentence = conexion.prepareStatement(sql);
            sentence.setInt(1, reg.getIdTrademark());
            sentence.setString(2, reg.getTrademarkName());

            result = sentence.executeQuery();

            while (result.next()) {
                find = true;
            }
        } catch (MySQLSyntaxErrorException ex) {
            System.out.println("Error de sintaxis en trademarkDAO, validateDuplicateTrademarkname() : " + ex);
            throw new RuntimeException("MySQL Syntax Exception en trademarkDAO, validateDuplicateTrademarkname() : " + ex);
        } catch (MySQLIntegrityConstraintViolationException ex) {
            System.out.println("MySQL Excepción de integridad en trademarkDAO, validateDuplicateTrademarkname() : " + ex);
            throw new RuntimeException("MySQL Excepción de integridad en trademarkDAO, validateDuplicateTrademarkname() : " + ex);
        } catch (SQLException ex) {
            System.out.println("MySQL Excepción inesperada en UserDAO, validateDuplicateTrademarkname() : " + ex);
            throw new RuntimeException("MySQL Excepción inesperada en UserDAO, validateDuplicateTrademarkname() : " + ex);
        } finally {
            /* liberar recursos */
            try {
                result.close();
            } catch (Exception noGestionar) {
            }
            try {
                sentence.close();
            } catch (Exception noGestionar) {
            }
        }
        return find;
    }

    public void insert(trademarkBean marca) {
        PreparedStatement sentence = null;

        try {
            String sql = "insert into marca (id_marca, nombre_marca) values (?, ?)";

            sentence = conexion.prepareStatement(sql);

            sentence.setInt(1, marca.getIdTrademark());
            sentence.setString(2, marca.getTrademarkName());

            sentence.executeQuery();
        } catch (MySQLSyntaxErrorException ex) {
            System.out.println("Error de sintaxis en trademarkDAO, insert() : " + ex);
            throw new RuntimeException("MySQL Syntax Exception en trademarkDAO, insert() : " + ex);
        } catch (MySQLIntegrityConstraintViolationException ex) {
            System.out.println("MySQL Excepción de integridad en UserDAO, insert() : " + ex);
            throw new RuntimeException("MySQL Excepción de integridad en UserDAO, insert() : " + ex);
        } catch (SQLException ex) {
            System.out.println("MySQL Excepción inesperada en UserDAO, insert() : " + ex);
            throw new RuntimeException("MySQL Excepción inesperada en UserDAO, insert() : " + ex);
        } finally {
            /* liberar recursos */
            try {
                sentence.close();
            } catch (Exception noGestionar) {
            }
        }
    }

    public void update(trademarkBean marca) throws SQLException {
        PreparedStatement sentence = null;

        try {
            String sql = "update marca set nombre_marca = ?";

            sentence = conexion.prepareStatement(sql);

            sentence.setString(1, marca.getTrademarkName());

            sentence.executeUpdate();
        } catch (MySQLSyntaxErrorException ex) {
            System.out.println("Error de sintaxis en trademarkDAO, update() : " + ex);
            throw new RuntimeException("MySQL Syntax Exception en trademarkDAO, update() : " + ex);
        } catch (MySQLIntegrityConstraintViolationException ex) {
            System.out.println("MySQL Excepción de integridad en trademarkDAO, update() : " + ex);
            throw new RuntimeException("MySQL Excepción de integridad en trademarkDAO, update() : " + ex);
        } catch (SQLException ex) {
            System.out.println("MySQL Excepción inesperada en trademarkDAO, update() : " + ex);
            throw new RuntimeException("MySQL Excepción inesperada en trademarkDAO, update() : " + ex);
        } finally {
            /* liberar recursos */
            try {
                sentence.close();
            } catch (Exception noGestionar) {
            }
        }
    }

    public void delete(int id) throws SQLException {
        PreparedStatement sentence = null;

        try {
            String sql = "delete from marca where id_marca = ? ";

            sentence = conexion.prepareStatement(sql);

            sentence.setInt(1, id);
            sentence.executeUpdate();

        } catch (MySQLSyntaxErrorException ex) {
            System.out.println("Error de sintaxis en trademarkDAO, update() : " + ex);
            throw new RuntimeException("MySQL Syntax Exception en trademarkDAO, update() : " + ex);
        } catch (MySQLIntegrityConstraintViolationException ex) {
            System.out.println("MySQL Excepción de integridad en trademarkDAO, update() : " + ex);
            throw new RuntimeException("MySQL Excepción de integridad en trademarkDAO, update() : " + ex);
        } catch (SQLException ex) {
            System.out.println("MySQL Excepción inesperada en trademarkDAO, update() : " + ex);
            throw new RuntimeException("MySQL Excepción inesperada en trademarkDAO, update() : " + ex);
        } finally {
            /* liberar recursos */
            try {
                sentence.close();
            } catch (Exception noGestionar) {
            }
        }
    }

}
