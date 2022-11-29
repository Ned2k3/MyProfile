/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBConnection;
import java.sql.*;

public class DBConnection {
    private final String URL = "jdbc:sqlserver://NED\\NEDMSSQLSERVER:2706;databaseName=MyProfile";
    private final String USERNAME = "sa";
    private final String PASSWORD = "27062003x";
    
    public Connection getConnection() throws Exception{
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(URL,USERNAME,PASSWORD);
    }
    private void tln(SQLException e) {}
}
