package br.com.ltp.nexus.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface IAction {
	
	String execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
}
