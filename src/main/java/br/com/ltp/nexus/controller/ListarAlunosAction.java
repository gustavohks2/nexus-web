package br.com.ltp.nexus.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.ltp.nexus.model.dao.AlunoDAO;
import br.com.ltp.nexus.model.entidade.Aluno;
import br.com.ltp.nexus.utils.IAction;

public class ListarAlunosAction implements IAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		List<Aluno> alunos = new AlunoDAO().obterTodosAlunos();
		
		request.setAttribute("alunos", alunos);
		
		return "/pages/aluno/index.jsp";
	}

}
