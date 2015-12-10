package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dao.QuartoDAO;
import java.util.List;
import modelo.Quarto;

public final class quarto_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/cabecalho.jsp");
  }

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
      response.setContentType("text/html");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://storage.googleapis.com/code.getmdl.io/1.0.6/material.indigo-pink.min.css\">\n");
      out.write("        <script src=\"https://storage.googleapis.com/code.getmdl.io/1.0.6/material.min.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/icon?family=Material+Icons\">\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <title>Hotel :)))))</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"mdl-layout mdl-js-layout\">\n");
      out.write("  <header class=\"mdl-layout__header mdl-layout__header--scroll\">\n");
      out.write("    <div class=\"mdl-layout__header-row\">\n");
      out.write("      \n");
      out.write("      <span class=\"mdl-layout-title\">Sistema de Hotel</span>\n");
      out.write("      <!-- Add spacer, to align navigation to the right -->\n");
      out.write("      <div class=\"mdl-layout-spacer\"></div>\n");
      out.write("      <!-- Navigation -->\n");
      out.write("      <nav class=\"mdl-navigation\">\n");
      out.write("        <a class=\"mdl-navigation__link\" href=\"quarto.jsp\">Quarto</a>\n");
      out.write("        <a class=\"mdl-navigation__link\" href=\"cliente.jsp\">Cliente</a>\n");
      out.write("        <a class=\"mdl-navigation__link\" href=\"hotel.jsp\">Hotel</a>\n");
      out.write("       \n");
      out.write("      </nav>\n");
      out.write("    </div>\n");
      out.write("  </header>\n");
      out.write("  <div class=\"mdl-layout__drawer\">\n");
      out.write("    <span class=\"mdl-layout-title\">Sistema de Hotel</span>\n");
      out.write("    <nav class=\"mdl-navigation\">\n");
      out.write("      <a class=\"mdl-navigation__link\" href=\"quarto.jsp\">Quarto</a>\n");
      out.write("      <a class=\"mdl-navigation__link\" href=\"cliente.jsp\">Cliente</a>\n");
      out.write("      <a class=\"mdl-navigation__link\" href=\"hotel.jsp\">Hotel</a>\n");
      out.write("      \n");
      out.write("    </nav>\n");
      out.write("  </div>\n");
      out.write("  <main class=\"mdl-layout__content\">\n");
      out.write("    <div class=\"page-content\"><!-- Your content goes here -->\n");
      out.write("  \n");
      out.write("\n");
      out.write("  \n");
      out.write("\n");
      out.write('\n');

    QuartoDAO dao = new QuartoDAO();
    List <Quarto> quartos;
    if(request.getParameter("txtFiltro")!=null && request.getParameter("txtFiltro")!="")
    {
        String txtFiltro = request.getParameter("txtFiltro");
        quartos=dao.listar(txtFiltro);
    }
    else
    {
        quartos = dao.listar();
    }
    
      out.write("\n");
      out.write("   \n");
      out.write("<div>\n");
      out.write("    <h1 class=\"centro\">Quartos</h1>\n");
      out.write("\n");
      out.write("    <div>\n");
      out.write("        <a href=\"quarto-cadastrar.jsp\">Novo Quarto</a><br />\n");
      out.write("         <form action=\"quarto.jsp\" method=\"post\">\n");
      out.write("            <input type=\"text\" name=\"txtFiltro\" />\n");
      out.write("            <input type=\"submit\" value=\"Pesquisar\"/><br />\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <th>Código quarto</th>\n");
      out.write("                    <th>numero</th>\n");
      out.write("                    \n");
      out.write("                    <th>Ações</th>\n");
      out.write("                </tr>\n");
      out.write("                ");

                    for (Quarto quarto:quartos) {
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(quarto.getIdquarto());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(quarto.getNumero());
      out.write("</td>\n");
      out.write("                    \n");
      out.write("                    <td><a href=\"quarto-atualizar.jsp?idquarto=");
      out.print(quarto.getIdquarto());
      out.write("\">Editar</a>\n");
      out.write("                        <a href=\"quarto-excluir-ok.jsp?idquarto=");
      out.print(quarto.getIdquarto());
      out.write("\">Excluir</a>\n");
      out.write("                    </td>\n");
      out.write("\n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("                ");
 }
      out.write("\n");
      out.write("            </table>\n");
      out.write("\n");
      out.write("        </form>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
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
