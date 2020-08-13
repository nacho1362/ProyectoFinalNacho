package cl.nacho.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import cl.nacho.conf.modal.dao.VehiculoDao;
import cl.nacho.conf.modal.entity.Vehiculo;

public class VehiculoService {

	private final Logger logger =LoggerFactory.getLogger(VehiculoService.class);
	
	@Autowired
	private VehiculoDao Vdao;
	
	public List<Vehiculo> obtenerTodos(){
        return Vdao.findAll();
    }
	
	public Vehiculo ingresar(Vehiculo vehiculo) {
		logger.info("Ingresar al vehiculo: " + vehiculo.toString());
		vehiculo.setId(null);
		return Vdao.save(vehiculo);
	}
	
	public Vehiculo buscarVehiculo(Integer id) {
		return Vdao.findById(id).orElse(null);
	}
	
	public Vehiculo eliminarVehiculo(Vehiculo vehiculo) {
		Vdao.delete(vehiculo);
		return vehiculo;
	}
	
	public Vehiculo actualizar(Vehiculo vehiculo) {
		return Vdao.save(vehiculo);
	}
	
}
