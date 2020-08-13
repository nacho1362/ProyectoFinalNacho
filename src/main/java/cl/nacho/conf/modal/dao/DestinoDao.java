 	package cl.nacho.conf.modal.dao;
//
//import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.nacho.conf.modal.entity.Destino;

public interface DestinoDao extends JpaRepository<Destino, Integer>{
//	Optional<Destino> findByOptional(String correo);
}
