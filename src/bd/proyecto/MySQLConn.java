/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bd.proyecto;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author ricar
 */
public class MySQLConn {
    Statement stmt=null;
    ResultSet rs=null;
    Connection conn=null;
    
    public MySQLConn() {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            String connectionurl="jdbc:mysql://127.0.0.1/cimeags?"
                    +"characterEnconding=latin1&"
                    +"user=root&password=P0rf1r10";
          conn=DriverManager.getConnection(connectionurl);
                    
        }catch (SQLException e){
            System.out.println("SQL Exception: " + e.toString());
        } catch (ClassNotFoundException ex) {
            System.out.println("ClassNotFoundException: "+ex.toString());
        }

    }
    
    public void consult(String query){
        //manda un query al servidor especificado en el constructor
        try{
            //stmt=conn.createStatement();
            
            stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
            
            // rs = stmt.executeQuery(query);
            
            if(stmt.execute(query)){
                rs=stmt.getResultSet();
                rs.first();
            }
        }catch (SQLException e){
            System.out.println("SQL Exception: " + e.getMessage());
            System.out.println("SQL State: " + e.getSQLState());
            System.out.println("Error: " + e.getErrorCode());
        }
    }
    
    
    public int update(String query){
        int rModif = 0;
        
        try{
            stmt = conn.createStatement();
            rModif = stmt.executeUpdate(query);
        } catch (SQLException ex){
            System.out.println("SQLException: " + ex.getMessage());
            System.out.println("SQLState: " + ex.getSQLState());
            System.out.println("Error: " + ex.getErrorCode());
        }
        
        return rModif;
    }
    
    
    public void closeRsStmt(){
        //cierra temporalmente la conexion
        if(rs!=null){
            try{
                rs.close();
            } catch (SQLException e){    
            } 
            rs=null;
        }
        if(stmt!=null){
            try{
                stmt.close();
            }catch (SQLException e){  
            } 
            stmt=null;
        }
    }
}