package br.com.ltp.nexus.servlet;

import java.io.IOException;
import java.lang.reflect.Constructor;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.ltp.nexus.utils.IAction;

@WebServlet("/controller")
public class Controller extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static final String CONTROLLER_PACKAGE = "br.com.ltp.nexus.controller.";

    public Controller() {
        super();
    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        bootstrapControllerAction(request, response);
    }

    private void bootstrapControllerAction(HttpServletRequest request, HttpServletResponse response) throws IOException {
    	request.setCharacterEncoding("utf-8");
    	response.setCharacterEncoding("utf-8");
        String requestAction = request.getParameter("action");

        if (requestAction != null && !requestAction.equals("")) {
            try {

                Constructor<?> actionClassConstructor = Class.forName(CONTROLLER_PACKAGE + requestAction + "Action").getConstructor();
                IAction action = (IAction) actionClassConstructor.newInstance();
                String viewPath = action.execute(request, response);
                
                if (viewPath != null && !viewPath.isEmpty()) request.getRequestDispatcher(viewPath).forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

}
