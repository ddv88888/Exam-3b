
package dbHelpers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Customer;


public class ReadRecord {
   
   private Connection conn;
   private ResultSet results;
   private Customer customer = new Customer();
   private int custID;
   
   public ReadRecord(int custID){
   
      Properties props = new Properties();
      InputStream instr = getClass().getResourceAsStream("dbConn.properties"); 
      try {
         props.load(instr);
      } catch (IOException ex) {
         Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
      }
      try {
         instr.close();
      } catch (IOException ex) {
         Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
      }
      
      String driver = props.getProperty("driver.name");
      String url = props.getProperty("server.name");
      String username = props.getProperty("user.name");
      String passwd = props.getProperty("user.password");
      
      this.custID = custID; 
      
      try {
         Class.forName(driver);
      } catch (ClassNotFoundException ex) {
         Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
      }
      try {
         conn = DriverManager.getConnection(url, username, passwd);
      } catch (SQLException ex) {
         Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
      }
   }
   
   public void doRead(){
     try {
         String query = "SELECT * FROM CUSTOMER WHERE CUSTID = ?";
         
         PreparedStatement ps = conn.prepareStatement(query);
         
         ps.setInt(1,custID);
         
         this.results = ps.executeQuery();
         this.results.next();
         customer.setCustID(this.results.getInt("custID"));
         customer.setFirstName(this.results.getString("firstName"));
         customer.setLastName(this.results.getString("lastName"));
         customer.setAddr1(this.results.getString("addr1"));
         customer.setAddr2(this.results.getString("addr2"));
         customer.setCity(this.results.getString("city"));
         customer.setState(this.results.getString("state"));
         customer.setZip(this.results.getInt("zip"));
         customer.setEmailAddr(this.results.getString("emailAddr"));
         customer.setAge(this.results.getInt("age"));
      } catch (SQLException ex) {
         Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
      }
  }

   public Customer getCustomer(){
      return this.customer;
   }




}
      
      
      
   
   
      
   
   
   
   

   
  