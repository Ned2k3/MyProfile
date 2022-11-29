/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import DBConnection.DBConnection;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class MessageDAO {
    Connection conn = null;
    Statement st = null;
    
    public int sendMessage(String username, String content) throws Exception{
        int result = 0;
        try{
            String query = "insert into Message values ((select accountID from Account where username = '"+username+
                           "'), '"+content+"', GETDATE());";
            conn = new DBConnection().getConnection();
            st = conn.createStatement();
            result = st.executeUpdate(query);
        }
        catch(SQLException e){}
        return result;
    }
}
