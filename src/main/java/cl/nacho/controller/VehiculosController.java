package cl.nacho.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/vehiculos")
public class VehiculosController {

	@GetMapping
	public String Vehiculos() {
		return "admin/vehiculos";
	}
}
