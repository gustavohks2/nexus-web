package br.com.ltp.nexus.controller;

import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.ltp.nexus.model.dao.AlunoDAO;
import br.com.ltp.nexus.model.entidade.Aluno;
import br.com.ltp.nexus.utils.DateUtils;
import br.com.ltp.nexus.utils.IAction;

public class CadastrarAlunoAction implements IAction {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	Aluno aluno = obterAlunoAPartirDaRequisicao(request);
    	
    	new AlunoDAO().insert(aluno);
    	
    	response.getWriter().print("Aluno salvo com sucesso!");
        return "";
    }

	private Aluno obterAlunoAPartirDaRequisicao(HttpServletRequest request) {
		Aluno aluno = new Aluno();
		
		aluno.setNome(request.getParameter("nome"));
		aluno.setSobrenome(request.getParameter("sobrenome"));
		aluno.setDataNascimento(DateUtils.getLocalDateFromString(request.getParameter("dataNascimento")));
		aluno.setEmail(request.getParameter("email"));
		aluno.setCelular(request.getParameter("celular"));
		aluno.setTelefoneFixo(request.getParameter("telefoneFixo"));
		aluno.setPeso(Double.parseDouble(request.getParameter("peso")));
		aluno.setAltura(Double.parseDouble(request.getParameter("altura")));
		aluno.setSexo(request.getParameter("sexo"));
		aluno.setDataInclusao(LocalDateTime.now());
		
		return aluno;
	}
	
}
