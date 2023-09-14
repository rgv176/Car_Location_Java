/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package project;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ragav
 */
public class Project {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            // TODO code application logic here
            Connection conn = null;
            
            // db parameters - ptest is the name of the database
            String url       = "jdbc:mysql://localhost:3306/project";
            String user      = "root";
            String password  = "TItan77176@";
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection c=DriverManager.getConnection(url,user,password);
            if(c!=null){
                System.out.println("OK");
            }
            else{
                System.out.println("fail");
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Project.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Project.class.getName()).log(Level.SEVERE, null, ex);
        }

    
}
}
