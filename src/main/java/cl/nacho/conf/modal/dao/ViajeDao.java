package cl.nacho.conf.modal.dao;


import org.springframework.data.jpa.repository.JpaRepository;

import cl.nacho.conf.modal.entity.Viaje;

public interface ViajeDao extends JpaRepository<Viaje, Integer> {
}
