package cl.nacho.conf.modal.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.nacho.conf.modal.entity.Usuario;

public interface UsuarioDao extends JpaRepository<Usuario, Integer>{
	Optional<Usuario> findByEmail(String email);
	
}
