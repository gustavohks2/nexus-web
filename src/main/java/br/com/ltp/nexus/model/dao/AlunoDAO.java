package br.com.ltp.nexus.model.dao;

import java.util.List;
import java.util.Objects;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import br.com.ltp.nexus.model.entidade.Aluno;

public class AlunoDAO {
    
    private EntityManager ENTITY_MANAGER = null;
    private static final String SELECT_ALUNO = "SELECT a FROM br.com.ltp.nexus.model.entidade.Aluno a";
    
    public AlunoDAO() {
        this.ENTITY_MANAGER = Persistence.createEntityManagerFactory("nexus-persistence-unit").createEntityManager();
    }
    
    public void insert(Aluno aluno) {
    	this.ENTITY_MANAGER.getTransaction().begin();
    	this.ENTITY_MANAGER.persist(aluno);
    	this.ENTITY_MANAGER.getTransaction().commit();
    }
    
    public List<Aluno> obterTodosAlunos() {
    	return this.ENTITY_MANAGER.createQuery(SELECT_ALUNO, Aluno.class).getResultList();
    }

	public void removerAluno(Integer idAluno) {
		Aluno aluno = this.ENTITY_MANAGER.find(Aluno.class, idAluno);
		
		if (Objects.nonNull(aluno)) {
			this.ENTITY_MANAGER.getTransaction().begin();
			this.ENTITY_MANAGER.remove(aluno);
			this.ENTITY_MANAGER.getTransaction().commit();
		}
	}
}
