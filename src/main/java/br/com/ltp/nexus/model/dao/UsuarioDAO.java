package br.com.ltp.nexus.model.dao;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import br.com.ltp.nexus.model.entidade.Usuario;

public class UsuarioDAO {

	private EntityManager ENTITY_MANAGER = null;

	public UsuarioDAO() {
        this.ENTITY_MANAGER = Persistence.createEntityManagerFactory("nexus-persistence-unit").createEntityManager();
    }

	public void insert(Usuario usuario) {
		this.ENTITY_MANAGER.getTransaction().begin();
		this.ENTITY_MANAGER.persist(usuario);
		this.ENTITY_MANAGER.getTransaction().commit();
	}
	
	public Usuario getUsuarioById(int idUsuario) {
		return this.ENTITY_MANAGER.find(Usuario.class, idUsuario);
	}
}
