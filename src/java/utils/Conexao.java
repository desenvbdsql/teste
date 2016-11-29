package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {

    // Variaveis da conexao
    private final String driver = "com.mysql.jdbc.Driver"; //oracle.jdbc.driver.OracleDriver
    private final String url = "jdbc:mysql://localhost:3306/projeto"; //jdbc:oracle:thin:@localhost:1521:xe
    private final String usuario = "root";
    private final String senha = "mysql";

    private static Conexao connectionFactory = null;

    private Conexao() throws SQLException {
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            throw new SQLException("driver");
        }
    }

    public Connection getConnection() throws SQLException {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(url, usuario, senha);
        } catch (SQLException e) {
            throw new SQLException(String.valueOf(e.getMessage()));
        }
        return conn;
    }

    public static Conexao getInstance() throws SQLException {
        if (connectionFactory == null) {
            connectionFactory = new Conexao();
        }
        return connectionFactory;
    }
}
