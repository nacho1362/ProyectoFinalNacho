package cl.nacho.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.ui.Model;
//import org.springframework.ui.ModelMap;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
//
//import cl.nacho.conf.modal.entity.Vehiculo;
//import cl.nacho.service.VehiculoService;



@Controller
@RequestMapping("/admin/vehiculos")
public class VehiculosController{
	
	@GetMapping
	public String home() {
	return "admin/vehiculos";
	}
}
	//	@Autowired
//	private VehiculoService servicio;
//	
//	@GetMapping
//    public String home(ModelMap mapa) {
//        mapa.put("vehiculos", servicio.obtenerTodos());
//        return "admin/vehiculos";
//    }
//    
//	@PostMapping
//	public String createUser(Vehiculo vehiculo,Model model) {
//				servicio.createVehiculo(vehiculo);
//		return "admin/vehiculos";
//	}
	
