package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath());
      out.write("/templates/Login.css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"created\"> \n");
      out.write("            <div>\n");
      out.write("            <span>ありがとうございます💖</span><br />\n");
      out.write("            New Account Created!\n");
      out.write("            </div>\n");
      out.write("            <div>\n");
      out.write("                <button id=\"alert-button\" autofocus>OK</button>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        ");

            String valid = request.getParameter("valid");
            if("1".equals(valid)){
                out.print("<script>document.getElementById('created').style.visibility = 'visible'</script>");
            }
        
      out.write("\n");
      out.write("        <div id=\"content\">\n");
      out.write("            <p id=\"header\">My Profile</p>\n");
      out.write("            <span id=\"error\"></span>  \n");
      out.write("            <form id=\"form\" action=\"MyProfile.jsp\" method=\"post\" autocomplete=\"off\">\n");
      out.write("                <input id=\"username\" name=\"username\" type=\"text\" placeholder=\"Enter UserName\" required/><br>\n");
      out.write("                <input id=\"password\" name=\"password\" type=\"password\" placeholder=\"Enter PassWord\" required/><br>\n");
      out.write("                <button id=\"btn1\" type=\"submit\">Login</button>\n");
      out.write("            </form>\n");
      out.write("            <hr/>\n");
      out.write("            <p id=\"sign-up\">Don't have account?<a href=\"SignUp.jsp\">Create Account</a></p>\n");
      out.write("        </div>\n");
      out.write("            <script src=\"");
      out.print(request.getContextPath());
      out.write("/templates/Login.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
