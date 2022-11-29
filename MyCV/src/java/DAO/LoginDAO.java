/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import java.sql.*;
import Entity.Account;
import DBConnection.DBConnection;

public class LoginDAO {
    Connection conn = null;
    Statement st = null;
    ResultSet rs = null;
    
    public Account getAccount(String username, String password) throws Exception{
        try{
            String query = "select * from Account acc where acc.username='"+username+"' and acc.password='"+password+"'";
            conn = new DBConnection().getConnection();
            st = conn.createStatement();
            rs = st.executeQuery(query);
            while(rs.next()){
                Account acc = new Account(rs.getString(1),rs.getString(2));
                return acc;
            }
        }
        catch(SQLException e){}
        return null;
    }
}
