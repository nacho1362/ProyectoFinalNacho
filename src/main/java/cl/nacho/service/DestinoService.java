package cl.nacho.service;

import java.util.List;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.nacho.conf.modal.dao.DestinoDao;
//import cl.nacho.conf.modal.dao.VehiculoDao;
import cl.nacho.conf.modal.entity.Destino;
//import cl.nacho.conf.modal.entity.Vehiculo;
//import cl.nacho.service.VehiculoService;

@Service
public class DestinoService {

	@Autowired
    private DestinoDao dao;
	
	@Autowired
	private List<Destino> obtenerTodos(){
		return dao.findAll();
	}
	
//	private final Logger logger = LoggerFactory.getLogger(DestinoService.class);
//	
//	public Destino ingresar(Destino destino) {
//        logger.info("Ingresando al usuario: " + destino.toString());
//        destino.setId(null);
//        return dao.save(destino);
//    }
	
	public Destino buscar(Integer id) {
		return dao.findById(id).orElse(null);
	}
	
	public Destino eliminar(Destino destino) {
		dao.delete(destino);
		return destino;
	}
		
	public Destino presupuesto(Destino destino) {
		int precioCombustible = 450;
		int kmXLitro = destino.getId();
		int kmViaje = destino.getKilometros();
		int costoConductor = 450;
		int presupuestoFinal = ( precioCombustible / kmXLitro ) + costoConductor * kmViaje;

		destino.setPrecio(presupuestoFinal);
		
		return destino;
	
}
}