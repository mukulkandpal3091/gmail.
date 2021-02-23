package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class gmailhomepage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("\tnav{\n");
      out.write("\t\tborder:1px solid #ddd;\n");
      out.write("\t\tborder-left:none;\n");
      out.write("\t\tborder-right:none;\n");
      out.write("\t\tborder-top:none;\n");
      out.write("\t}\n");
      out.write("\t.search-box{\n");
      out.write("\t\tborder:3px solid #ddd;\n");
      out.write("\t\theight:40px;\n");
      out.write("\t\twidth:50%;\n");
      out.write("\t\tborder-radius:50px;\n");
      out.write("\t\tpadding: 0px 10px;\n");
      out.write("\t}\n");
      out.write("\tdiv{float:left;}\n");
      out.write("\tinput span{\n");
      out.write("\t\tposition:absolute;\n");
      out.write("\t\ttop:0px;\n");
      out.write("\t\tbackground:white; color:black;\n");
      out.write("\t\tfont-size:23px; padding:7.5px;\n");
      out.write("\t\tcursor:pointer;\n");
      out.write("\t}\n");
      out.write("\twrape{\n");
      out.write("\t\tdisplay:flex;\n");
      out.write("\t\tposition:relative;\n");
      out.write("\t\tpadding :15px;\n");
      out.write("\t\tborder-bottom:1px solid rgba(0,0,0,0.05);\n");
      out.write("\t\tborder-top:1px solid rgba(225,225,225,0.05);\n");
      out.write("\t\t\n");
      out.write("\t}\n");
      out.write("\tul{\n");
      out.write("\t\tlist-style:none;\n");
      out.write("\t\tborder: 1px solid #ddd;\n");
      out.write("\t\tborder-bottom:none;\n");
      out.write("\t\tborder-left:none;\n");
      out.write("\t\tborder-right:none;\n");
      out.write("\t}\n");
      out.write("\t.button{\n");
      out.write("\t\tborder:3px solid #ddd;\n");
      out.write("\t\theight:40px;\n");
      out.write("\t\twidth:10%;\n");
      out.write("\t\tborder-radius:50px;\n");
      out.write("\t\tpadding: 5px 0px;\n");
      out.write("\t\tcolor:black;\n");
      out.write("\t\tbackground-color:white;\n");
      out.write("\t\tcursor:pointer;\n");
      out.write("\t}\n");
      out.write("        .button:active{\n");
      out.write("\t\t\tbackground-color:#ddd;\n");
      out.write("\t\t\tbox-shadow:0 2px #ddd;\n");
      out.write("\t\t\ttransform:translateY(4px);\n");
      out.write("\t\t}\n");
      out.write("\t.wrape li:hover{\n");
      out.write("\tbackground:#ddd;\n");
      out.write("}\n");
      out.write(".compose{\n");
      out.write("\t\t\t\n");
      out.write("\t\t\tborder:1px solid #ddd;\n");
      out.write("\t\t\tborder-left:none;\n");
      out.write("\t\t\tborder-right:none;\n");
      out.write("\t\t\tborder-top:none;\n");
      out.write("\t\t\twidth:100%;\t\t\n");
      out.write("\t}\n");
      out.write("\t#popup{\n");
      out.write("\t\tdisplay:none;\n");
      out.write("                float:right;\n");
      out.write("\t\tposition:fixed;\n");
      out.write("\t\tz-index:1;\n");
      out.write("\t\tleft:0;\n");
      out.write("\t\ttop:0;\n");
      out.write("\t\theight:100%;\n");
      out.write("\t\twidth:100%;\n");
      out.write("\t\toverflow:auto;\n");
      out.write("\t\tbackground-color:rgba(0,0,0,0.5);\n");
      out.write("\t\t\n");
      out.write("\t}\n");
      out.write("\t.close{\n");
      out.write("\t\tcolor:#363636;\n");
      out.write("\t\tfloat:right;\n");
      out.write("\t\tfont-size:32px;\n");
      out.write("\t\ttop:0; \n");
      out.write("\t\tright:1em;\n");
      out.write("\t}\n");
      out.write("\t.close:hover,.close:focus{\n");
      out.write("\t\tcolor:red;\n");
      out.write("\t\ttext-decoration:none;\n");
      out.write("\t\tcursor:pointer;\n");
      out.write("\t}\n");
      out.write("\t.content{\n");
      out.write("\t\tbackground-color:#fff;\n");
      out.write("\t\tmargin:20% auto;\n");
      out.write("\t\twidth:350px;\n");
      out.write("\t\theight:400px;\n");
      out.write("\t\tpadding:20px;\n");
      out.write("\t\tboxshadow:0 5px 8px 0 rgba(0,0,0,0.6),0 7px 20px 0 rgba(0,0,0,0.6);\n");
      out.write("\t\tborder:2px solid #ddd;\n");
      out.write("\t\tborder-radius:10px;\n");
      out.write("\t}\n");
      out.write("\t.head{\n");
      out.write("\t\tbackground-color:#efefef;\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("</style>\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"link.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("      \n");
      out.write("       <nav>\n");
      out.write("\t\t<div class=\"logo\"><a href=\"#\"><img src=\"gmail.png\"></a></div>\n");
      out.write("\t\t&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("\t\t&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\t\n");
      out.write("\t\t&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("\t\t<input type=\"search\" placeholder=\"Search\" class=\"search-box\"> \n");
      out.write("                <span class=\"fa fa-search\"></span>\n");
      out.write("                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                 ");

                        String name= (String)session.getAttribute("user");
                        out.println(name);
                 
      out.write("\n");
      out.write("                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                 <div style=\"float:right\">\n");
      out.write("                <form align=\"right\" action=\"loginpage.html\" method=\"post\" >\n");
      out.write("                    <input type=\"submit\" value=\"log out\" onclick=\"loginpage.html\">\n");
      out.write("                   </form>\n");
      out.write("                </div>\n");
      out.write("\t</nav>\n");
      out.write("        \n");
      out.write("\t<br><br>\n");
      out.write("\t\t<button class=\"button\" onclick=\"document.getElementById('popup').style.display='block'\">Compose</button>\n");
      out.write("                <form action=\"sendemail.jsp\" method=\"post\">\n");
      out.write("                <div id=\"popup\">\n");
      out.write("\t\t\t<div class=\"content\">\n");
      out.write("\t\t\t\t<a class=\"close\" onclick=\"document.getElementById('popup').style.display='none'\">&times;</a>\n");
      out.write("\t\t\t\t<header class=\"head\">New Message</header>\n");
      out.write("\t\t\t\t<br>\n");
      out.write("\t\t\t<input class=\"compose\" type=\"email\" placeholder=\"To\" name=\"to\">\n");
      out.write("\t\t\t<br><br>\n");
      out.write("\t\t\t<input class=\"compose\" type=\"text\" placeholder=\"Subject\" name=\"sub\">\n");
      out.write("\t\t\t<br><br>\n");
      out.write("\t\t\t<input style=\"width:100%;height:50%;\" type=\"text\" name=\"text\">\n");
      out.write("\t\t\t<br><br>\n");
      out.write("\t\t\t<input type=\"Submit\" class=\"button\" value=\"Send\"></td>\n");
      out.write("\t\t\t&nbsp;\n");
      out.write("\t\t\t<a href=\"#\"></a>&nbsp;<a href=\"#\">Attach</a>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t<br><br>\n");
      out.write("        </form>\n");
      out.write("\t<div class=\"wrape\">\n");
      out.write("\t\t\t<ul>\n");
      out.write("\t\t\t\t<li><a href=\"inbox.jsp\"><i class=\"fa fa-inbox\" aria-hidden=\"true\"></i>&nbsp;Inbox</a></li>\n");
      out.write("\t\t\t\t<br>\n");
      out.write("\t\t\t\t<li><a href=\"#\"><i class=\"fa fa-star\" aria-hidden=\"true\"></i>&nbsp;Starred</a></li>\n");
      out.write("\t\t\t\t<br>\n");
      out.write("\t\t\t\t<li><a href=\"#\"><i class=\"fa fa-clock-o\" aria-hidden=\"true\"></i>&nbsp;Snoozed</a></li>\n");
      out.write("\t\t\t\t<br>\n");
      out.write("\t\t\t\t<li><a href=\"sent.jsp\"><i class=\"fa fa-paper-plane-o\" aria-hidden=\"true\"></i>&nbsp;Sent</a></li>\n");
      out.write("\t\t\t\t<br>\n");
      out.write("\t\t\t\t<li><a href=\"draft.jsp\"><i class=\"fa fa-file-o\" aria-hidden=\"true\"></i>&nbsp;Draft</a></li>\n");
      out.write("\t\t\t\t<br>\n");
      out.write("\t\t\t\t<li><a href=\"#\"><i class=\"fa fa-hand-o-right\" aria-hidden=\"true\"></i>&nbsp;Important</a></li>\n");
      out.write("\t\t\t\t<br>\n");
      out.write("\t\t\t\t<li><a href=\"#\"><i class=\"fa fa-commenting-o\" aria-hidden=\"true\"></i>&nbsp;Chats</a></li>\n");
      out.write("\t\t\t\t<br>\n");
      out.write("\t\t\t\t<li><a href=\"#\"><i class=\"fa fa-envelope-o\" aria-hidden=\"true\"></i>&nbsp;All Mailed</a></li>\n");
      out.write("\t\t\t\t<br>\n");
      out.write("\t\t\t\t<li><a href=\"#\"><i class=\"fa fa-envelope-o\" aria-hidden=\"true\"></i>&nbsp;Spam</a></li>\n");
      out.write("\t\t\t</ul>\n");
      out.write("\t</div>\n");
      out.write("</body>\n");
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
