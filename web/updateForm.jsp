<%@page import="model.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Customer customer = (Customer) request.getAttribute("customer"); %>

<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Update A Player</title>
      <link rel="stylesheet" type="text/css" href="./main.css" />
   </head>
   <body>
      <div class="wrap">
      <%@ include file="includes/header.jsp" %>
      <%@ include file="includes/menu.jsp" %>
      <h1>Update A Player Record</h1>
      
      <form name="updateForm" action="updateCustomer" method="get">
         
         <label>Customer ID:</label>
         <input tpye="text" name="custID" value="<%= customer.getCustID() %>" readonly/>
         <br><br>
         <label>First Name:</label>
         <input tpye="text" name="firstName" value="<%= customer.getFirstName() %>" />
         <br><br>
         <label>Last Name:</label>
         <input tpye="text" name="lastName" value="<%= customer.getLastName() %>" />
         <br><br>
         <label>Address:</label>
         <input tpye="text" name="addr1" value="<%= customer.getAddr1() %>" />
         <input tpye="text" name="addr2" value="<%= customer.getAddr2() %>" />
         <br><br>
         <label>City:</label>
         <input tpye="text" name="city" value="<%= customer.getCity() %>" />
         <br><br>
         <label>State:</label><br>
         <select name="state" >
            <option value="<%= customer.getState() %>"> <%= customer.getState() %> </option>
               <option value="AL">Alabama</option>
               <option value="AK">Alaska</option>
               <option value="AZ">Arizona</option>
               <option value="AR">Arkansas</option>
               <option value="CA">California</option>
               <option value="CO">Colorado</option>
               <option value="CT">Connecticut</option>
               <option value="DE">Delaware</option>
               <option value="DC">District of Columbia</option>
               <option value="FL">Florida</option>
               <option value="GA">Georgia</option>
               <option value="HI">Hawaii</option>
               <option value="ID">Idaho</option>
               <option value="IL">Illinois</option>
               <option value="IN">Indiana</option>
               <option value="IA">Iowa</option>
               <option value="KS">Kansas</option>
               <option value="KY">Kentucky</option>
               <option value="LA">Louisiana</option>
               <option value="ME">Maine</option>
               <option value="MD">Maryland</option>
               <option value="MA">Massachusetts</option>
               <option value="MI">Michigan</option>
               <option value="MN">Minnesota</option>
               <option value="MS">Mississippi</option>
               <option value="MO">Missouri</option>
               <option value="MT">Montana</option>
               <option value="NE">Nebraska</option>
               <option value="NV">Nevada</option>
               <option value="NH">New Hampshire</option>
               <option value="NJ">New Jersey</option>
               <option value="NM">New Mexico</option>
               <option value="NY">New York</option>
               <option value="NC">North Carolina</option>
               <option value="ND">North Dakota</option>
               <option value="OH">Ohio</option>
               <option value="OK">Oklahoma</option>
               <option value="OR">Oregon</option>
               <option value="PA">Pennsylvania</option>
               <option value="RI">Rhode Island</option>
               <option value="SC">South Carolina</option>
               <option value="SD">South Dakota</option>
               <option value="TN">Tennessee</option>
               <option value="TX">Texas</option>
               <option value="UT">Utah</option>
               <option value="VT">Vermont</option>
               <option value="VA">Virginia</option>
               <option value="WA">Washington</option>
               <option value="WV">West Virginia</option>
               <option value="WI">Wisconsin</option>
               <option value="WY">Wyoming</option>
         </select>
         <label>Zip Code:</label>
         <input tpye="text" name="zip" value="<%= customer.getZip() %>" />
         <br><br>
         <label>Email:</label>
         <input tpye="text" name="emailAddr" value="<%= customer.getEmailAddr() %>" />
         <br><br>
         <label>Age:</label>
         <input tpye="text" name="age" value="<%= customer.getAge() %>" />
         <br><br>
         <input type="reset" name="reset" value="Clear" />
         <input type="submit" name="submit" value="Update" />
         
         
      </form>
      <%@ include file="includes/footer.jsp" %>
      </div>  
   </body>
</html>
