package br.com.ltp.nexus.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface IAction {
	
	String execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
}
