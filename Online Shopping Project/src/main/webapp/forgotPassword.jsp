<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <form action="forgotAction.jsp" method="post">
    <input type="email" name="email" placeholder="Enter email" required>
      <input type="number" name="MobileNumber" placeholder="Enter mobileNumber" required>
      <select name="SecurityQuestion">
       <option value = "What is your pet name?">What is your pet name</option>
    <option value = "What is your mother tongue?">What is your mother tongue</option>
     <option value = "What is your favorite food?">What is your favorite food</option>  
       <option value = "What is your favorite place?">What is your favorite place</option>
      </select>
          <input type="text" name="answer" placeholder="Enter Answer" required>
            <input type="password" name="password" placeholder="Enter new password" required>
              <input type="Submit" value="Save">
      
  </form>  
     
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
  <%
  String msg=request.getParameter("msg");
  if("done".equals(msg))
  {
  %><h1>Password Changed Successfully!</h1>
  
  <%}%>
  <%if("invalid".equals(msg))
  {%>
  <h1>Some thing Went Wrong! Try Again !</h1>
  <%}%>
  
    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>
</body>
</html>