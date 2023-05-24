<!DOCTYPE HTML>
<html> 
    <head>
        <title>RESERVEme</title>
        <link rel = "stylesheet" href = "css/login.css">
        <link rel="icon" type="image/x-icon" href="images/favicon.ico">
         <link rel="icon" type="image/x-icon" href="images/favicon.ico">
    </head> 
    
    <body >
        
       
        <div class="login-card">
            <a href="login.jsp" target="_parent"><button class="go-back" >&#8249;&#8249; Go back</button></a>
            <h2>Register</h2>
            <h3>Enter your details</h3>
            <form action="regme" class="login-form" method = "POST">
             
                
                <input name="un" id="userbox" class="un" type="text" placeholder="User Name" inputtype/>
				<input name="pn" id="userbox" class="un" type="text" placeholder="Phone number" inputtype/>
                <input name="pass" id="passbox" class="pa" type="password" placeholder="User Password" required/>
				<input name="pass2" id="passbox" class="pa" type="password" placeholder="Re-enter Password" required/>

            <a class="forget-link" href="php/Register.php">Already have an account , Login</a>
            
            
			
            <!--<button class="login-button">LOGIN</button>-->
			<input type = "submit" name = "submit" class="login-button" value = "Register"></input>
            </form>
            <div ><h2 class = "out"></h2></div>
        </div>
  <script>
  
  <% String message = (String) request.getAttribute("message"); %>
  <% if (message != null) { %>
    var container = document.createElement("div");
    container.className = "container";
    var h2 = document.querySelector(".out");
    h2.parentNode.insertBefore(container, h2.nextSibling);
    var div = document.createElement("div");
    div.className = "alert-success";
    div.setAttribute("role", "alert");
    var h3 = document.createElement("h3");
    h3.innerHTML = "<%= message %>";
    div.appendChild(h3);
    container.appendChild(h2);
    container.appendChild(div);
  <% } %>
  
</script>   
    </body>
</html>

