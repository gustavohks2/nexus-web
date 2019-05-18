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
    
    public List<Aluno> getAlunos() {
        return null;
    }
    
    public String getString() {
        return "Hello";
    }
}
