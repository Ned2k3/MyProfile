/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import java.sql.*;
import DBConnection.DBConnection;

public class SignUpDAO {
    Connection conn = null;
    Statement st = null;
    ResultSet rs = null;
    
    public void createAccount(String username, String password) throws Exception{
        try{
            String query = "insert into Account values ('"+username+"','"+password+"');";
            conn = new DBConnection().getConnection();
            st = conn.createStatement();
            st.executeUpdate(query);
        }
        catch(SQLException e){}
    }
    
    public boolean isUsernameExist(String username) throws Exception{
        try{
            String query = "select username from Account where username = '"+username+"';";
            conn = new DBConnection().getConnection();
            st = conn.createStatement();
            rs = st.executeQuery(query);
            while(rs.next()){
                return true;
            }
        }
        catch(SQLException e){}
        return false;
    }
}
