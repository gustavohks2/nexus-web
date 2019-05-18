package br.com.ltp.nexus.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CadastrarAluno implements IAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return "index.jsp";
	}
	
}
