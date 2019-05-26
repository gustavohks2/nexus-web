package br.com.ltp.nexus.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.ltp.nexus.utils.IAction;

public class LogoutAction implements IAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.getSession().setAttribute("usuario", null);
		response.sendRedirect("/nexus-web");
		return null;
	}

}
