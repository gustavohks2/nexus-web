package br.com.ltp.nexus.model.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import br.com.ltp.nexus.model.entidade.Usuario;

public class UsuarioDAO {

	private static final String SELECT_USUARIO = "SELECT u FROM br.com.ltp.nexus.model.entidade.Usuario u";
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

	/**
	 * Verifica se usuário e senha correspondem com registro no banco usuario : Nome
	 * de usuário senha : Senha de usuário
	 * 
	 * @return {@link Usuario} se existir no banco ou <code>null</code>
	 */
	public Usuario obterUsuarioSeCredenciaisCorretas(String usuario, String senha) {
		StringBuilder sql = new StringBuilder("").append(SELECT_USUARIO)
				.append(" WHERE u.usuario = :usuario AND u.senha = :senha");

		TypedQuery<Usuario> query = this.ENTITY_MANAGER.createQuery(sql.toString(), Usuario.class);
		query.setParameter("usuario", usuario);
		query.setParameter("senha", senha);

		Usuario usr = null;

		try {
			usr = query.getSingleResult();
		} catch (NoResultException e) {
			e.printStackTrace();
		}

		return usr;
	}

	public List<Usuario> obterTodosOsUsuarios() {
		return this.ENTITY_MANAGER.createQuery(SELECT_USUARIO, Usuario.class).getResultList();
	}
}
