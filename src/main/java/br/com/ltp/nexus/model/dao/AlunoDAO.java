package br.com.ltp.nexus.model.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import br.com.ltp.nexus.model.entidade.Aluno;

public class AlunoDAO {
    
    private EntityManager ENTITY_MANAGER = null;
    
    public AlunoDAO() {
        this.ENTITY_MANAGER = Persistence.createEntityManagerFactory("nexus-persistence-unit").createEntityManager();
    }
    
    public void insert(Aluno aluno) {
    	this.ENTITY_MANAGER.getTransaction().begin();
    	this.ENTITY_MANAGER.persist(aluno);
    	this.ENTITY_MANAGER.getTransaction().commit();
    }
    
    public List<Aluno> obterTodosAlunos() {
        return null;
    }
}
