<!DOCTYPE HTML>
<html> 
    <head>
        <title>RESERVEme</title>
        <link rel = "stylesheet" href = "css/login.css">
        <link rel="icon" type="image/x-icon" href="images/favicon.ico">
    </head> 
    
    <body >
        
       
        <div class="login-card">
            <a href="Home.jsp" target="_parent"><button class="go-back" >&#8249;&#8249; Go back</button></a>
            <h2>Login</h2>
            <h3>Enter your creditionals</h3>
            <form action="logme" class="login-form" method = "POST">
             
                
                <input name="user" id="userbox" class="un" type="text" placeholder="User Name" inputtype/>
                <input name="pass" id="passbox" class="pa" type="password" placeholder="User Password" required/>

            <a class="forget-link" href="register.jsp">Need to register</a>
            <a class="forget-link" href="#">Forgot  your password?</a>
            
            
			
            <!--<button class="login-button">LOGIN</button>-->
			<input type = "submit" name = "submit" class="login-button" value = "LOGIN"></input>
            </form>
            
        </div>
        
    </body>
</html>

