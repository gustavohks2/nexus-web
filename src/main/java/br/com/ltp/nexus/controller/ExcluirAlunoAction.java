package br.com.ltp.nexus.controller;

import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.ltp.nexus.model.dao.AlunoDAO;
import br.com.ltp.nexus.utils.IAction;
import br.com.ltp.nexus.utils.NxStringUtils;

public class ExcluirAlunoAction implements IAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		Integer idAluno = NxStringUtils.getIntegerFromString(request.getParameter("idAluno"));
		
		if (Objects.nonNull(idAluno)) new AlunoDAO().removerAluno(idAluno);
		
		return "/controller?action=ListarAlunos";
	}

}
