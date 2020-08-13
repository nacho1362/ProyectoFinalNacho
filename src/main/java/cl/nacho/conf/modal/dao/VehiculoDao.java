package cl.nacho.conf.modal.dao;


//import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.nacho.conf.modal.entity.Vehiculo;

public interface VehiculoDao extends JpaRepository<Vehiculo, Integer>{
//	Optional<Vehiculo> findByOptional(String marca); 
}
