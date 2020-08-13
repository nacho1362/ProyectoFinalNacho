package cl.nacho.service;

import java.util.List;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.nacho.conf.modal.dao.ViajeDao;
import cl.nacho.conf.modal.entity.Viaje;

@Service
public class ViajeService {
//	private final Logger logger = LoggerFactory.getLogger(ViajeService.class);
	
	@Autowired
	private ViajeDao dao;
	
	public List<Viaje> obtenerTodos(){
        return dao.findAll();
    }
	
//	 public Viaje ingresar(Viaje viaje) {
//	        logger.info("Ingresando al usuario: " + viaje.toString());
//	        viaje.setId(null);
//	        return dao.save(viaje);
//	    }
	    
	
	public Viaje buscar(Integer id) {
		return dao.findById(id).orElse(null);
	}
	
	public Viaje eliminar(Viaje viaje) {
		dao.delete(viaje);
		return viaje;
	}
	
	public Viaje actualizar(Viaje viaje) {
		return dao.save(viaje);
	}
	
}
