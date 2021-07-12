<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Car Details</title>
<style type="text/css">
label{
width: 300px;
display: inline-block;
}
table{
padding: 30px;
width:auto;
font-size: 30px;
color:white;
font-family: verdana;
}
input{
width: 100%;
padding: 5px;
margin-top: 20px;
font-size: 18px;
font-family: verdana;
border: none;

}
input[type=submit]
{width: 20%;
margin-left: 400px;
margin-top:100px;
background: #742e08;
color:white;
border:none;
padding:10px

}
h1{font-size:50px;    display: flex;justify-content: center;color:#CD001A;}
.input1 {
  cursor: pointer;
  border-radius: 10px;
  box-sizing: border-box;
  display: inline-block;
  border: 3px solid #ff0f87;
  padding: 5px;
  height:40px;
  width:30%;
  margin: 4px 0;
 
  
}
input{padding: 10px 5px;cursor: pointer;}
select {

  cursor: pointer;
  border-radius: 20px;
  box-sizing: border-box;
  display: inline-block;
  border: 3px solid #ff0f87;
  padding:5px;
  margin: 8px 0;
  width: 30%;
  height: 40px;
 

}


</style>
</head>
<body bgcolor="00a3a3">

<h1 >ENTER THE CAR DETAILS</h1>
<c:out value="${rowAdded}"></c:out>
<form:form method="post" action="cars">
<table>
<tr>
<td>
<form:label path="model">Car model</form:label>
<form:input class="input1" path="model"/>
</td>
</tr>

<tr>
<td>
<form:label path="current_date">Mfd_Year </form:label>
<form:input class="input1" path="current_date"/>
</td>
</tr>


<tr>
<td>
<form:label path="kilometer">Kilometer</form:label>
<form:input class="input1" path="kilometer"/>
</td>
</tr>

<tr>
<td>
<form:label path="brand">Select Brand</form:label>
<form:select path="brand" items="${groups}" />
</td>
</tr>

<tr>
<td>
<form:label path="status">Select Status</form:label>
<form:select path="status" items="${group}" />
</td>
</tr>

<tr>
<td><input type="submit" value="add"/></td>

</tr>
</table>

</form:form>
</body>
</html>