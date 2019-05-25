package br.com.ltp.nexus.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.ltp.nexus.model.dao.UsuarioDAO;

public class LoginController implements IAction {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        if (request.getMethod().equals("POST")) logarUsuario(request);
        else return "index.jsp";
        
        return "pages/dashboard/index.jsp";
    }

    private void logarUsuario(HttpServletRequest request) {
        String nome = request.getParameter("usuario");
        String senha = request.getParameter("senha");
        
        // Verificar usuário no banco
        
        // Criar sessão caso usuário exista
        //request.getSession().setAttribute("usuario", nome);
        //request.getSession().setMaxInactiveInterval(30 * 60);
    }
    
}
