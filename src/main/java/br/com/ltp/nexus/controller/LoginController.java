package br.com.ltp.nexus.controller;

import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.ltp.nexus.model.dao.UsuarioDAO;
import br.com.ltp.nexus.model.entidade.Usuario;
import br.com.ltp.nexus.utils.NxStringUtils;

public class LoginController implements IAction {

	// 30 Minutos
    private static final int TEMPO_MAXIMO_SESSAO_MINUTOS = 30 * 60;

	@Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		boolean logado = false;
		
        if (request.getMethod().equals("POST")) logado = logarUsuario(request);
        else return "index.jsp";
        
        return !logado ? "index.jsp" : "pages/dashboard/index.jsp";
    }

    private boolean logarUsuario(HttpServletRequest request) throws Exception {
        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");
        
        if (NxStringUtils.isNullOrEmpty(usuario) || NxStringUtils.isNullOrEmpty(senha)) return false;
        
        Usuario usr = new UsuarioDAO().obterUsuarioSeCredenciaisCorretas(usuario, NxStringUtils.stringToMD5(senha));
        
        if (Objects.isNull(usr)) return false; 
        
        HttpSession session = request.getSession();
    	session.setAttribute("usuario", usr);
    	session.setMaxInactiveInterval(TEMPO_MAXIMO_SESSAO_MINUTOS);
    	
    	return true;
    }
    
}
