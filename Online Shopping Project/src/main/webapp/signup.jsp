<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>SignUp</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <form action="SignupAction.jsp" method="post">
  <input type="text" name="name" placeholder="Enter name" required>
  <input type="email" name="Email" placeholder="Enter email" required>
  <input type="number" name="Mobilenumber" placeholder="Enter Mobilenumber" required>
  
  <select name = "SecurityQuestion" required>
  <option value = "What is your pet name?">What is your pet name</option>
    <option value = "What is your mother tongue?">What is your mother tongue</option>
     <option value = "What is your favorite food?">What is your favorite food</option>  
       <option value = "What is your favorite place?">What is your favorite place</option>
  </select>
    <input type="text" name="answer" placeholder="Enter Answer" required>
      <input type="password" name="password" placeholder="Enter password" required>
        <input type="Submit" value="Signup">
  
  </form>
    
      <h2><a href="">Login</a></h2>
  </div>
  <div class='whysign'>
  
  <%
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {
  %>

<h1>Successfully Updated</h1>
<%} %>

<h1>Some thing Went Wrong! Try Again !</h1>

    <h2>Online Shopping</h2>
    <p>The Online Shopping System is application that allows the users to shop online.</p>
  </div>
</div>

</body>
</html>