<%-- 
    Document   : Login
    Created on : Nov 24, 2022, 3:12:48 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/Login.css"/>
    </head>
    <body>
        <div id="created"> 
            <div>
            <span>ありがとうございます💖</span><br />
            New Account Created!
            </div>
            <div>
                <button id="alert-button" autofocus>OK</button>
            </div>
        </div>
        <%
            String valid = request.getParameter("valid");
            if("1".equals(valid)){
                out.print("<script>document.getElementById('created').style.visibility = 'visible'</script>");
            }
        %>
        <div id="content">
            <p id="header">My Profile</p>
            <span id="error"></span>  
            <form id="form" action="MyProfile.jsp" method="post" autocomplete="off">
                <input id="username" name="username" type="text" placeholder="Enter UserName" required/><br>
                <input id="password" name="password" type="password" placeholder="Enter PassWord" required/><br>
                <button id="btn1" type="submit">Login</button>
            </form>
            <hr/>
            <p id="sign-up">Don't have account?<a href="SignUp.jsp">Create Account</a></p>
        </div>
            <script src="<%=request.getContextPath()%>/templates/Login.js"></script>
    </body>
</html>
