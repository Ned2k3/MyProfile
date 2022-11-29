<%-- 
    Document   : SignUp
    Created on : Nov 25, 2022, 4:07:38 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create new account</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/SignUp.css"/>
    </head>
    <body>
        <div>
        <p>Create New Account</p>
        <hr />
        <form action="SignUpControl" autocomplete="off">
            <input id="username" type="text" name="username" placeholder="Enter Username" pattern="^[A-Za-z]{1}[A-Za-z\d]{7,19}$" 
                   title="Username requires 8-20 characters, only letter or number and must starts with a letter." required/>
            <span id="username-error"></span>
            <%
                
            %>
            <br />

            <input id="password" type="password" name="password" placeholder="Enter password" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z0-9@!#$%&*?]{8,}$" 
                   title="Password requires at least 8 characters including at least an capital letter." required/>
            <span id="eye1" class="eyes">👀</span>
            <span id="password-error"></span>
            <br />

            <input id="re-password" type="password" name="password" placeholder="Re-enter Password" required/>
            <span id="eye2" class="eyes">👀</span>
            <span id="re-password-error"></span>
            <br />

            <button id="btn" type="submit">Register</button>
        </form>
        </div>
        <script src="<%=request.getContextPath()%>/templates/SignUp.js"></script>
    </body>
</html>
