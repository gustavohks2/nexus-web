package br.com.ltp.nexus.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.ltp.nexus.model.dao.UsuarioDAO;
import br.com.ltp.nexus.model.entidade.Usuario;
import br.com.ltp.nexus.utils.IAction;

public class ListarUsuariosAction implements IAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		List<Usuario> usuarios = new UsuarioDAO().obterTodosOsUsuarios();
		
		request.setAttribute("usuarios", usuarios);
		
		return "/pages/usuario/index.jsp";
	}

}
