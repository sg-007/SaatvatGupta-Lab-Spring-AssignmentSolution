<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
        <h1>Update Student</h1>  
       <form:form method="POST" action="/Student/update">    
        <table >    
        <tr>  
        <td></td>    
         <td><form:hidden path="id" /></td>  
         </tr>   
         <tr>    
          <td>First name : </td>   
          <td><form:input path="firstName"  /></td>  
         </tr>    
         <tr>    
          <td>Last name : </td>    
          <td><form:input path="lastName" /></td>  
         </tr>
         <tr>    
          <td>Course : </td>    
          <td><form:input path="course" /></td>  
         </tr>    
         <tr>    
          <td>Country : </td>    
          <td><form:input path="country" /></td>  
         </tr>   
           
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Update" /></td>    
         </tr>    
        </table>    
       </form:form>